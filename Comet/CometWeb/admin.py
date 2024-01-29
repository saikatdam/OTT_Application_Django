from django.contrib import admin
from CometWeb.models import movie_genres,movie_list,carousel
# Register your models here.
class genres(admin.ModelAdmin):
    list_display=('genres',)
    
class listmovie(admin.ModelAdmin):
    list_display=('name','description','poster','moviefile','year','genres')
admin.site.register(movie_genres,genres)
admin.site.register(movie_list,listmovie)
admin.site.register(carousel)
