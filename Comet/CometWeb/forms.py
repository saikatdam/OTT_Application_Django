from django import forms
from .models import searches
class search_result(forms.ModelForm):
    class Meta:
        model=searches
        fields='__all__'