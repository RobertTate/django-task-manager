from django.shortcuts import render
from rest_framework import viewsets
from .serializers import TicketSerializer
from .models import Ticket

class TicketView(viewsets.ModelViewSet):
  serializer_class = TicketSerializer
  queryset = Ticket.objects.all()