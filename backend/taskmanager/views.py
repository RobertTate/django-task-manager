from django.shortcuts import render
from rest_framework import viewsets
from .serializers import TicketSerializer
from .models import Ticket

def index(request):
  return render(request, "build/index.html")

class TicketView(viewsets.ModelViewSet):
  serializer_class = TicketSerializer
  queryset = Ticket.objects.all()