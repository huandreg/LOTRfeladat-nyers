from django.db import models

# Create your models here.
class Character(models.Model):

    pic = models.CharField(max_length=200)
    name = models.CharField(max_length=50)
    race = models.CharField(max_length=50)
    char_class = models.CharField(max_length=50)
    description = models.CharField(max_length=500, default="")

    def __str__(self):
        return self.name