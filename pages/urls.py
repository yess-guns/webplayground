from django.urls import path
from . import views
from .views import PageListView#, PageDetailView, PageCreate, PageUpdate, PageDelete

urlpatterns = [
    path('', PageListView.as_view(), name='pages'),
    path('<int:page_id>/<slug:page_slug>/', views.page, name='page'),
]