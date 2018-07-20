import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'geo.settings')

import django
django.setup()

from dem.models import Elevations

import xlrd
workbook = xlrd.open_workbook('er.xlsx', on_demand=True)
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

if __name__ == '__main__':
    print("Starting Rango population script...")
    populate()
