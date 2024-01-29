from django.contrib import admin
from django.urls import path
from.import views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
     path('ram/', admin.site.urls),
     path('',views.pmhome),
     path('home/',views.home),
     path('base/',views.base),
     # path('auth/',views.auth),
     path('authenticate/<str:id>',views.auth),
     path("search",views.search,name='search'),
     path('navbar/',views.newnav),
     path('logout/',views.logout_user, name='logout'),
     path('categories/',views.categories,name='categories'),
     path('genreList/',views.genreList),
     path('genreList/<str:genre>',views.genreList,name='genreList'),

]
if settings.DEBUG:
    urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)