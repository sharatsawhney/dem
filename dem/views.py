from django.shortcuts import render, redirect
from dem.models import Elevations, Document
from dem.forms import DocumentForm
import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'geo.settings')

import django
django.setup()
import xlrd
import utm

def index(request):
    return render(request, 'dem/index.html')

def sample(request):
    e = Elevations.objects.order_by('lat')


    context_dict = {'elev': e}

    return render(request, 'dem/webgl_geometry_terrain.html', context_dict)

def upload(request):
    if request.method == 'POST':
        form = DocumentForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            file = Document.objects.latest('id')
            location = "/home/sharat/Downloads/geo/media/" + str(file.document) 
            workbook = xlrd.open_workbook(location)
            sheet = []
            s = 0
            while s < workbook.nsheets:
                sheet.append(workbook.sheet_by_index(s))
                s = s+1
            def populate():
                k =0
                while k < workbook.nsheets:
                    i = 0

                    latarray = sheet[k].col_values(0)
                    longarray = sheet[k].col_values(1)
                    elevarray = sheet[k].col_values(2)
                    featurearray = []
                    while i < sheet[k].nrows:
                        featurearray.append('')
                        i = i+1
                    j = 1
                    while j < sheet[k].nrows:
                        add_point(lat=latarray[j],
                            long=longarray[j],
                            elev=elevarray[j],
                            feature=featurearray[j])
                        j = j+1
                        print(k,j)

                    k = k +1

            def add_point(lat,long,elev,feature):
                e = Elevations.objects.get_or_create(lat=lat,long=long,elev = elev)[0]
                e.feature = feature
                e.save()
                return e

            populate()
            return redirect('index')
    else:
        form = DocumentForm()
    return render(request, 'dem/upload.html', {
        'form': form
    })

def ask(request):
    if request.method == 'POST':
        latitude = request.POST['lat']
        longitude = request.POST['long']

        sorted = Elevations.objects.order_by('lat')
        i =0
        diff =[]
        while i < sorted.count():
            diff.append(pow(sorted[i].lat-float(latitude), 2)+ pow(sorted[i].long-float(longitude), 2))
            i = i+1
        index = diff.index(min(diff))
        if index-50 >= 0 and index+50 < sorted.count():
            result = Elevations.objects.order_by('lat')[index-50:index+50]
        elif index-50 < 0:
            result = Elevations.objects.order_by('lat')[0:index+100]
        else:
            result = Elevations.objects.order_by('lat')[index-100:index]
        context_dict = {'elev': result, 'lat': latitude, 'long': longitude, 'elevation': sorted[index].elev}

        return render(request, 'dem/webgl_geometry_terrain.html', context_dict)
    else:
        sortedlat = Elevations.objects.order_by('lat')
        sortedlong = Elevations.objects.order_by('long')
        minlat = sortedlat[0].lat
        maxlat = sortedlat[sortedlat.count()-1].lat
        minlong = sortedlong[0].long
        maxlong = sortedlong[sortedlong.count()-1].long
        context_dict = {'min_lat':minlat,'max_lat':maxlat,'min_long':minlong,'max_long':maxlong}
        return render(request, 'dem/ask.html', context_dict)

def elevation(request):
    if request.method == 'POST':
        latitude = request.POST['lat']
        longitude = request.POST['long']

        sorted = Elevations.objects.order_by('lat')
        i =0
        diff =[]
        while i < sorted.count():
            diff.append(pow(sorted[i].lat-float(latitude), 2)+ pow(sorted[i].long-float(longitude), 2))
            i = i+1
        index = diff.index(min(diff))
        elev1 = Elevations.objects.order_by('lat')[index].elev
        del diff[index]
        index2 = diff.index(min(diff))
        elev2 = Elevations.objects.order_by('lat')[index2].elev
        result = (float(elev1) + float(elev2))/2
        context_dict = {'elev': result,'lat':latitude, 'long': longitude}

        return render(request, 'dem/elevation.html', context_dict)

    else:
        sortedlat = Elevations.objects.order_by('lat')
        sortedlong = Elevations.objects.order_by('long')
        minlat = sortedlat[0].lat
        maxlat = sortedlat[sortedlat.count()-1].lat
        minlong = sortedlong[0].long
        maxlong = sortedlong[sortedlong.count()-1].long
        context_dict = {'min_lat':minlat,'max_lat':maxlat,'min_long':minlong,'max_long':maxlong}
        return render(request, 'dem/elevation.html', context_dict)


