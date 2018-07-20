from django.db import models

class Elevations(models.Model):
    lat = models.FloatField(null=False, blank=False)
    long = models.FloatField(null=False, blank=False)
    elev = models.FloatField(null=False, blank=False)
    feature = models.CharField(max_length=128,null=True, blank=True)

    def __str__(self):      #For Python 2, use __str__ on Python 3
        return str(self.id)

class Document(models.Model):
    description = models.CharField(max_length=255, blank=True)
    document = models.FileField(upload_to='C://Users/Sharat/geo/media/')
    uploaded_at = models.DateTimeField(auto_now_add=True)

