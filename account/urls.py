from django.urls import path, include
from django.contrib.auth import views as auth_views
from .views import UserSignupView, UserLoginView, UserLogoutView, UserProfileView, UserUpdateProfileView, ToggleFollowView, GetFollowersView, GetFollowingView

urlpatterns = [
	path('signup/', UserSignupView.as_view(), name='user_signup'),
	path('login/', UserLoginView.as_view(), name='user_login'),
	path('logout/', UserLogoutView.as_view(), name='user_logout'),
	path('<str:username>/', UserProfileView.as_view(), name='profile'),
	path('<str:username>/update', UserUpdateProfileView.as_view(), name='update_profile'),
	path('<str:username>/followers/', GetFollowersView.as_view(), name='get_followers'),
	path('<str:username>/following/', GetFollowingView.as_view(), name='get_following'),
	path('<str:username>/toggle/follow/', ToggleFollowView.as_view(), name='toggle_follow'),
]

#Forgot Password
urlpatterns += [
	path(
		'password/reset/form', 
		auth_views.PasswordResetView.as_view(
            template_name='account/forget_password/password_reset_form.html',
            subject_template_name='account/forget_password/password_reset_subject.txt',
            email_template_name='account/forget_password/password_reset_email.html',
        ),
        name = 'password_reset'
	),
	path(
		'password/reset/done/',
        auth_views.PasswordResetDoneView.as_view(
            template_name='account/forget_password/password_reset_done.html'
        ),
        name='password_reset_done'
    ),
    path(
		'password/reset/confirm/<uidb64>/<token>/',
		auth_views.PasswordResetConfirmView.as_view(
		    template_name='account/forget_password/password_reset_confirm.html'
		),
		name='password_reset_confirm'
    ),
    path(
    	'password/reset/complete/',
        auth_views.PasswordResetCompleteView.as_view(
            template_name='account/forget_password/password_reset_complete.html'
        ),
        name='password_reset_complete'
    ),
]