from django.urls import path
from .views import HomePageView, AboutUsPageView, ContactUsPageView, SearchPageView

urlpatterns = [
	path('', HomePageView.as_view(), name='index'),
	path('about-us/', AboutUsPageView.as_view(), name='about'),
	path('contact-us/', ContactUsPageView.as_view(), name='contact'),
	path('search/', SearchPageView.as_view(), name='search'),
]