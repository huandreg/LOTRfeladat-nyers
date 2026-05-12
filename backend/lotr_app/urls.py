
from django.urls import path
from lotr_app import views


urlpatterns = [
    path('characters/', views.getAllChars),
]