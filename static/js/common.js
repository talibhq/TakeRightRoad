$('.showPassword').on('click', function(){
	if($('#id_password').attr("type") === "password"){
		$('#id_password').attr('type', 'text');
	}else{
		$('#id_password').attr('type', 'password');
	}
});

function toggleFollow(element, is_requested_user){
	var username = $(element).attr('data');
	var url = "/account/" + username + "/toggle/follow/" ;
	$.ajax({
		url : url,
		success : function(data){
			$('#followers_count').empty();
			$('#following_count').empty();
			if(is_requested_user){
				$('#followers_count').text(data.requested_user_followers);
				$('#following_count').text(data.requested_user_following);
			}else{
				$('#followers_count').text(data.authenticated_user_followers);
				$('#following_count').text(data.authenticated_user_following);
			}
			var parent_tag = $(element).parent();
			parent_tag.empty();
			if(data.flag == 'follow'){
				parent_tag.append('<button class="btn btn-sm btn-outline-danger" data="' + username + '" onclick="toggleFollow(this, '+is_requested_user+')">Unfollow</button>');
			}
			else{
				parent_tag.append('<button class="btn btn-sm btn-outline-info" data="' + username + '" onclick="toggleFollow(this, '+is_requested_user+')">Follow</button>');
			}
		},
		error : function(jqXHR, status, error){
			alert("Internal Server Error!");
		}
	});
}

$(".like_btn").on('click', function(){
	var element = $(this);
	var slug = element.attr('slug');
	var url = "/blog/" + slug + "/toggle/like/";
	$.ajax({
		url : url,
		success : function(data){
			if(data.liked){
				element.find('i').css('color', 'red');
			}else{
				element.find('i').css('color', 'black');
			}
			$('.likes_count').empty();
			$('.likes_count').text(data.total_likes);
		},
		error : function(jqXHR, status, error){
			alert("Internal Server Error!");
		}
	});
});

$('.fa-pencil').on('click', function(){
	$('#id_profile').click();
});

function previewProfile(event){
	var fileName = URL.createObjectURL(event.target.files[0]);
	var html = '<img src="' + fileName + '" class="user_profile_img">'
	$("#preview").empty();
	$("#preview").append(html);
}

$('#delete_blog_btn').on('click', function(){
	if(confirm('You want to delete this blog?')){
		var slug = $(this).attr('slug');
		var url = '/blog/' + slug + '/delete/'
		location.href = url;
	}
});

$('#delete_question_btn').on('click', function(){
	if(confirm('You want to delete this Question?')){
		var slug = $(this).attr('slug');
		var url = '/question/' + slug + '/delete/'
		location.href = url;
	}
});

$('.show_modal').on('click', function(){
	var count = $(this).find('.show_modal_data').text();
	if(count == 0){
		var title = $(this).attr('title');
		$('.modal-title').text(title);
		$('.modal-body').empty();
		$('.modal-body').append('<h3 class="text-danger">No Data</h3>');
		$('#modal').modal('show');
	}else{
		$.ajax({
			url : $(this).attr('link'),
			success : function(data){
				$('.modal-body').empty();
				$('.modal-title').text(data.title);
				var html = ''
				if(data.users_data){
					html += '<ul class="list-group">'
					for(let i=0; i<data.users_data.length; i++){
						html += '<li><div class="row"><div class="col-lg-2 col-md-2"><img src="' + data.users_data[i].profile + '" class="short_profile_img"></div>'
						html +=  '<div class="col-lg-7 col-md-7 mt-2"><h3><a href="/account/' + data.users_data[i].username + '" class="yellowhover">' + data.users_data[i].name + '</a></h3></div>'
						if(data.users_data[i].show_follow_btn){
							html += '<div class="col-lg-3 col-md-3 mt-2">'
							if(data.users_data[i].is_you_follow){
								html += '<button class="btn btn-sm btn-outline-danger" data="' + data.users_data[i].username + '" onclick="toggleFollow(this, '+false+')">Unfollow</button>'
							}else{
								html += '<button class="btn btn-sm btn-outline-info" data="' + data.users_data[i].username + '" onclick="toggleFollow(this, '+false+')">Follow</button></div>'
							}
						}
						html += '</div></li><br>'
					}
					html += '</ul>'
				}
				$('.modal-body').append(html);
				$('#modal').modal('show');
			},
			error : function(jqXHR, status, error){
				alert("Internal Server Error!");
			}
		});
	}
});

$('.smile').on('click', function(){
	var answer_id = $(this).attr('answer_id');
	var count_smile_tag = $(this).next("span");
	$.ajax({
		url : '/question/give-smile/' + answer_id,
		success : function(data){
			count_smile_tag.empty();
			count_smile_tag.text(data.total_smiles + ' smiles');
			if(!data.success){
				var slug = $('.question_slug').val();
				var url = '/question/' + slug;
				location.href = '/account/login/?next=' + url;
			}
		},
		error : function(jqXHR, status, error){
			alert("Internal Server Error!");
		}
	});
});

function EditCommentOrAnswer(element, ){
	var parent = $(element).parents('.desc');
	var tag_length = parent.find('p').length;
	if(tag_length == 1){
		var url = parent.find('.url').val();
		var csrf = parent.find('.csrf_token').val();
		var text = parent.find('.comment').text();
		var html = '<div class="comment"><form method="POST" action="'+url+'/" style="display:flex;"><input type="hidden" value="'+csrf+'" name="csrfmiddlewaretoken" /><input value="'+text+'" class="form-control mr-2" name="text"/><input type="submit" class="btn btn-sm btn-outline-info" value="Edit" /></form></div>';
	}else{
		var text = parent.find('input[name=text]').val();
		var html = '<p class="comment">'+text+'</p>';
	}
	parent.find('.comment').remove();
	parent.prepend(html);
}