from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
import Helpers.views as HelperViews

urlpatterns = [
    path('admin', admin.site.urls),
    path('', include('Portfolio.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

handler404 = HelperViews.Custom404View.as_view()
