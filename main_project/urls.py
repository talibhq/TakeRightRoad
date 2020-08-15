"""main_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from dashboard import views
from django.contrib.auth.decorators import login_required
from ckeditor_uploader.views import upload
import debug_toolbar

urlpatterns = [
    path('manager/', admin.site.urls),
    path('__debug__/', include(debug_toolbar.urls)),
    path('ckeditor/upload/', login_required(upload), name='ckeditor_upload'),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('', include('dashboard.urls')),
    path('account/', include('account.urls')),
    path('blog/', include('blog.urls')),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

handler404 = views.handler404
handler500 = views.handler500