from rest_framework.response import Response
from rest_framework.decorators import api_view

from .models import Character
from .serializers import CharSerializer


# Create your views here.
@api_view(['GET'])
def getAllChars(request):
    chars = Character.objects.all()
    serialized = CharSerializer(chars, many=True)

    return Response(serialized.data)

