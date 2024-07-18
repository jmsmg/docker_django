# django 설치
python -m pip install Django

cd /home

# mysite에 원하는 이름 넣으면 됨 (django, test, python 등은 피해야함)
django-admin startproject mysite

python manage.py startapp polls

tail -fs