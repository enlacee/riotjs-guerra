from django.conf.urls import patterns, url, include
import views


urlpatterns = patterns('',
	url(r'^$', views.main, name='riot:main'),
)
