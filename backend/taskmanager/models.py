from django.db import models

class Ticket(models.Model):
  title = models.CharField(max_length=120)
  description = models.TextField()
  status = models.IntegerField(default=0)
  completed = models.BooleanField(default=False)

  def __str__(self):
    return self.title
