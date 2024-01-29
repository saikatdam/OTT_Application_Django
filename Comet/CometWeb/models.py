from django.db import models
from django.core.exceptions import ValidationError
from django.core.validators import FileExtensionValidator

def validate_file_extension(value):

    allowed_extensions = ['jpg', 'jpeg', 'png','mp4']
    extension = str(value).lower().split('.')[-1]
    if extension not in allowed_extensions:
        raise ValidationError('Unsupported file extension. Supported extensions are: {}'.format(', '.join(allowed_extensions)))

# Create your models here.
class movie_genres(models.Model):
    genres=models.CharField(max_length=50)
    background=models.ImageField(upload_to='genrebackground/')
    def __str__(self) -> str:
        return self.genres


class movie_list(models.Model):
    id=models.AutoField(primary_key=True)
    name=models.CharField(max_length=255)
    description=models.TextField()
    poster=models.FileField(upload_to='movieposter/')
    moviefile=models.FileField(
        upload_to='moviefile/',
        validators=[FileExtensionValidator(allowed_extensions=['mp4']),validate_file_extension]
                            )
    year=models.PositiveIntegerField()
    genres=models.ForeignKey(movie_genres, on_delete=models.CASCADE)
    
    def __str__(self) -> str:
        return self.name
    
class carousel(models.Model):
    carousel=models.ForeignKey(movie_list,on_delete=models.CASCADE)
class searches(models.Model):
    search=models.CharField(max_length=255)
    class Meta:
        db_table ='all_searches'
    