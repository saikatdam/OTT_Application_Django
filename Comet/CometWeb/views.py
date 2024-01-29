from django.shortcuts import redirect, render
from CometWeb.forms import search_result
from CometWeb.models import movie_list,movie_genres,carousel
from django.contrib.auth.models import User
from django.contrib.auth import login ,logout,authenticate
# Create your views here.
def pmhome(request):
    return render(request,"jswebsite.html")

def base(request):
    return render(request,'base.html')
def home(request):
    distinct_genres= movie_list.objects.values('genres__genres').distinct()
    distinct_genres_list = [item['genres__genres'] for item in distinct_genres]
    carousel_list=carousel.objects.all()
    allmovie={}
    for i in distinct_genres_list:
        movies=movie_list.objects.filter(genres__genres=i).values('name','poster','description','id','year')
        if movies:
            allmovie[i.upper()]=movies
    context={
        'allmovies':allmovie,
        'carousel':carousel_list,
    }
    return render(request,'home.html',context)

# def auth(request,id):
#     mydict = {
#         'error':False
#     }
#     if request.user.is_authenticated:
#         movie=movie_list.objects.values().filter(id=id)
#         # print(movie)
#         context={
#         'movie': movie,
#         }

#         return render(request,'video.html',context)
#     else: 
#         if request.method == 'POST':
#             username=request.POST.get('signup_username')
#             email=request.POST.get('signup_email')
#             password=request.POST.get('signup_password')
#             # print(username,email,password)
#             if username is not None:
#                 try:
#                     new_user = User.objects.create_user(username=username,email=email,password=password)
#                     new_user.save()
#                     login(request,new_user)
#                 except:
#                     mydict = {'error':True}
#                     return render(request,'authentication.html',context=mydict)
#         if request.method == 'POST':
#             Lusername = request.POST.get('login_username')
#             Lpass = request.POST.get('login_password')
#             user = authenticate(username=Lusername,password=Lpass)
#             # print(Lusername,Lpass)
#             # print(user)
#             if user is not None:
#                 login(request,user)
#                 return render(request,'home.html')
#             else:
#                 return render(request,'authentication.html')
            
#         return render(request,'authentication.html')

# extended auth defined
def auth(request,id):
    mydict = {
        'error':False
    }
    movie=movie_list.objects.values().filter(id=id)
        # print(movie)
    context={
        'movie': movie,
        }
    if request.user.is_authenticated:
        return render(request,'video.html',context)
    else: 
        if request.method == 'POST':
            username=request.POST.get('signup_username')
            email=request.POST.get('signup_email')
            password=request.POST.get('signup_password')
            # print(username,email,password)
            if username is not None:
                try:
                    new_user = User.objects.create_user(username=username,email=email,password=password)
                    new_user.save()
                    login(request,new_user)
                except:
                        mydict = {'error':True}
                        return render(request,'authentication.html',mydict)
        if request.method == 'POST':
            Lusername = request.POST.get('login_username')
            Lpass = request.POST.get('login_password')
            user = authenticate(username=Lusername,password=Lpass)
            # print(Lusername,Lpass)
            # print(user)
            if user is not None:
                login(request,user)
                return render(request,'video.html',context)
            else:
                return render(request,'authentication.html')
            
        return render(request,'authentication.html')

def video(request):
    return render(request,'video.html')
def watch(request,id):
    movie=movie_list.objects.filter(id=id)
    context={
        'movie': movie,
    }
    return render(request,'video.html',name='Watch')
    
def search(request):
    if request.method=='POST':
        form=search_result(request.POST)
        if form.is_valid():
            searchvalue=form.cleaned_data['search']
            print(searchvalue)
            try:
                searchresult=movie_list.objects.values().filter(name__icontains=searchvalue)
                form.save()
                # print("hello Saikat")
                print(searchresult)
                context={
                    'search':searchresult,
                }
                return render(request,'search.html',context)
            except:
                pass
    
    # return render(request,'search.html')
def newnav(request):
    return render(request,'navbar.html')

def logout_user(request):
    # response = render(request, 'home.html',{})
    # response.delete_cookie('sessionid')
    # return response
    # return redirect('/home')
    logout(request)
    return home(request)

def returnHome(request):
    response = render(request, 'home.html',{})
    response.delete_cookie('sessionid')
    return response

def categories(request):
    categories = movie_genres.objects.values()
    return render(request,'categories.html',{'categories':categories})

def genreList(request,genre):
    movies =movie_list.objects.filter(genres__genres=genre).values()
    context={
        'genreList':movies,
        'genre':genre,
    }
    return render(request,'genremovieList.html',context)