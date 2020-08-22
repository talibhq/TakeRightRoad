from django.urls import path
from .views import WriteBlogView, SingleBlogView, EditBlogView, DeleteBlogView, CategoryWiseBlogView, TagWiseBlogView, GetBlogLikesView, ToggleLikeBlogView, BlogCommentView, EditCommentView, DeleteCommentView

urlpatterns = [
	path('write/', WriteBlogView.as_view(), name='write_blog'),
	path('<slug:slug>/', SingleBlogView.as_view(), name='single_blog'),
	path('<slug:slug>/edit/', EditBlogView.as_view(), name='edit_blog'),
	path('<slug:slug>/delete/', DeleteBlogView.as_view(), name='delete_blog'),
	path('category/<slug:slug>/', CategoryWiseBlogView.as_view(), name='category_wise_blog'),
	path('tag/<slug:slug>/', TagWiseBlogView.as_view(), name='tag_wise_blog'),
	path('<slug:slug>/likes/', GetBlogLikesView.as_view(), name='blog_likes'),
	path('<slug:slug>/toggle/like/', ToggleLikeBlogView.as_view(), name='like_blog'),
	path('<slug:slug>/add/comment/', BlogCommentView.as_view(), name='comment_on_blog'),
	path('<slug:slug>/edit/comment/<int:comment_id>/', EditCommentView.as_view(), name='edit_comment'),
	path('<slug:slug>/delete/comment/<int:comment_id>/', DeleteCommentView.as_view(), name='delete_comment'),
]