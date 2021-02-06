from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from taskmanager import views

router = routers.DefaultRouter()

router.register(r'tickets', views.TicketView, 'tickets')

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
]
