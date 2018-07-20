from django.conf.urls import url
from dem import views

urlpatterns = [
        url(r'^$', views.index, name='index'),
        url(r'^upload/', views.upload , name='upload'),
        url(r'^ask/', views.ask , name='ask'),
        url(r'^elevation/', views.elevation , name='elevation'),
        url(r'^sample/', views.sample , name='sample'),
     ]
