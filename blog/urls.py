from django.urls import path
from .views import WriteBlogView, SingleBlogView, CategoryWiseBlogView, TagWiseBlogView, ToggleLikeBlogView, GetBlogLikesView, DeleteBlogView, BlogCommentView

urlpatterns = [
	path('write/', WriteBlogView.as_view(), name='write_blog'),
	path('<slug:slug>/', SingleBlogView.as_view(), name='single_blog'),
	path('category/<slug:slug>/', CategoryWiseBlogView.as_view(), name='category_wise_blog'),
	path('tag/<slug:slug>/', TagWiseBlogView.as_view(), name='tag_wise_blog'),
	path('<slug:slug>/toggle/like/', ToggleLikeBlogView.as_view(), name='like_blog'),
	path('<slug:slug>/likes/', GetBlogLikesView.as_view(), name='blog_likes'),
	path('<slug:slug>/delete/', DeleteBlogView.as_view(), name='delete_blog'),
	path('<slug:slug>/add/comment/', BlogCommentView.as_view(), name='comment_on_blog'),
]