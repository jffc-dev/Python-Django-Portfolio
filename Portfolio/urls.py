from django.urls import path
from . import views

urlpatterns = [
    path('', views.IndexView.as_view(), name="index"),
    path('<str:idioma>/', views.IndexLanguageView.as_view(), name="home"),
    path('ch_lng/<str:idioma>/', views.ChangeLanguageView.as_view(), name="ch_lng"),
]
