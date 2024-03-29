<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instagram</title>
<link rel="shortcut icon" href="/image/user/favicon.ico">
<link href="/css/style.css" type="text/css" rel="stylesheet">
<script src="/js/jquery-1.12.3.js" type="text/javascript"></script>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
.big {
	display: grid;
	/* background-color: aquamarine;  */
	justify-content: center;
	border-bottom: 1px solid #999;
}
.small {
	display: grid;
	grid-template-columns: auto 1fr 1fr;
	/* background-color: beige; */
	height: 60px;
	grid-gap: 215px;
	margin-top: 28px;
}
.a1 {
	margin-top: 5px;
}
.a2 {
	width: 200px;
	height: 30px;
}
.small1 {
	display: grid;
	grid-template-columns: auto auto auto;
}
.line {
	background-color: black;
	height: 25px;
	margin-top: 7px;
	width: 1px;
	margin-left: 15px;
	margin-right: 10px;
	/* margin: -35px 43px;  */
}
.small3 {
	display: grid;
	grid-template-columns: auto auto auto;
	margin-left: 55px;
	margin-top: 5px;
}
.a3 {
	width: 100%;
	margin-top: 10px;
}
.a5 {
	margin-left: 10px;
}
.big1 {
	display: grid;
	/* background-color: aquamarine; */
	justify-content: center;
	grid-template-columns: auto auto;
	margin-right: 300px;
	margin-top: 50px;
	/* background-color: beige; */
}
.image-list {
	display: grid;
}
.small1-2 {
	border: 1px solid #999;
	background-color: white;
	margin-bottom: 20px;
}
.small1-3 {
	grid-column: 1/3 span;
}
.image-header {
	display: grid;
	grid-template-columns: auto auto;
	justify-content: space-between;
}
.b1 {
	margin-left: 15px;
	margin-top: 10px;
	display: grid;
	grid-template-columns: auto auto;
}
.info {
	padding-left: 10px;
}
.location {
	padding-top: 2px;
	font-size: 9px;
}
.b2 {
	margin-top: 20px;
}
.b3 {
	margin-top: 10px;
	margin-left: -60px;
}
.b4 {
	text-decoration: none;
	margin-left: -520px;
	color: black;
	font-weight: bold;
}
.c {
	grid-column: 1/3 span;
}
.small1-4 {
	display: grid;
	grid-template-columns: auto auto auto auto auto;
	margin-top: 6px;
	justify-content: space-between;
	grid-column: 1/3 span;
}
.small1-5 {
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 15px;
	margin-left: 15px;
}
.c__4 {
	margin-left: 150px;
}
.c__5 {
	margin-left: 220px;
}
.d {
	margin-left: 10px;
	margin-top: 5px;
	font-size: 15px;
	font-weight: bold;
	grid-column: 1/3 span;
}
.e {
	margin-left: 10px;
	margin-top: 5px;
	grid-column: 1/3 span;
}
.g {
	width: 602px;
	height: 40px;
	position: relative;
}
.f {
	display: grid;
	grid-template-columns: auto auto;
}
.h {
	position: absolute;
	margin-left: 560px;
	margin-top: 10px;
	color: #003569;
	text-decoration: none;
}
input:focus {
	outline: none;
}
.small2-1 {
	display: grid;
	grid-template-columns: auto auto;
	grid-template-rows: auto auto auto auto;
	margin-left: 50px;
	position: fixed;
	justify-content: space-between;
}
.ax {
	margin-top: 20px;
	font-weight: bold;
	margin-right: 150px;
}
.ax1 {
	margin-top: 7px;
	padding-right: 90px;
	margin-left: 10px;
}
.small2-2 {
	display: grid;
	grid-template-columns: auto auto;
	grid-template-rows: auto auto auto auto;
	border: 1px solid black;
	grid-column: 1/2 span;
	margin-top: 10px;
	overflow-y: scroll;
	height: 200px;
}
.ax2 {
	margin-left: 65px;
	margin-top: 10px;
	font-weight: bold;
	font-size: 13px;
}
.ax3 {
	text-decoration: none;
}
.ax4 {
	margin-left: 10px;
}
.bx1 {
	margin-left: -80px;
}
.ax5 {
	margin-top: 13px;
	font-weight: bold;
	font-size: 15px;
}
.bx2 {
	text-decoration: none;
	color: black;
}
.ax11 {
	margin-top: 10px;
	margin-left: 5px;
}
.ax12 {
	margin-top: 15px;
	grid-column: 1/2 span;
	font-size: 12px;
}
.ax13 {
	color: #999;
	text-decoration: none;
}
.tag {
	color: #003569;
}
.like_people {
	text-decoration: none;
	color: #003569;
}

input[type=button]{
    height: 31.3px;
    width: 600px;
    background-color: #3897F0;
    border-radius: 5px;
    border: 0px;
    color: white;

}
.like_people {
	display: inline-block;
}
.btn{
			margin-top: 10px;
            height: 31.3px;
            width: 268.02px;
            background-color: #3897F0;
            border-radius: 5px;
            border: 0px;
            color: white;
            text-align: center;
            line-height: 31.3px;
            grid-column: 1/3 span;

        }
        .btn2{
			margin-top: 10px;
            height: 31.3px;
            width: 68.02px;
            background-color: #3897F0;
            border-radius: 5px;
            border: 0px;
            color: white;
            text-align: center;
            line-height: 31.3px;
		}
		.grid{
			display:grid;
			grid-template-columns: 1fr 7fr;
		}
</style>
</head>

<body>
	<div class="big">
		<div class="small">
			<div class="small1">
				<div class="a0">
					<a href="/images"><img src="/image/images/40.png" width="30px"
						height="35px"></a>
				</div>
				<div class="line"></div>
				<div class="a1">
					<a href="/images"><img src="/image/images/logo.png"
						width="100px" height="30px"></a>
				</div>
			</div>
			<div class="small2">
				<div class="a3">
					<div>
					
					<input class="a2 searchbox" type="text"
						placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;검색">
					<button class="btn2" onclick='search()'>검색</button>
					</div>	
				</div>
			</div>

			<div class="small3">

				<a href="/explore"><img src="/image/images/41.png" height="30px"></a>
				<div class="a5">
					<a href="#"><img src="/image/images/42.png" height="30px"></a>
				</div>

				<div class="a5">
					<a href="/user/${user.id}"><img src="/image/images/43.png" height="30px"></a>
				</div>
			</div>
		</div>

	</div>


	<div class="big1">
		<div class="image-list">

			<c:forEach var="image" items="${imageList}" varStatus="loop">
				<!--  start item1  -->
				<div class="small1-2">
					<div class="image-header">
						<div class="b1">
							<div class="profile">
								<a href="/user/${image.user.id}"><img  width="50px" height="50px" style="border-radius: 50%" src="${image.user.profile.filePath}" onerror="this.src='/image/images/1212.png'"></a>
							</div>
							<div class="info">
								<div class="username">
									<b>${image.user.username}</b>
								</div>
								<div class="location">${image.location}</div>
							</div>
						</div>
						<div class="b3">
							<a href="#"><img src="/image/images/46.png" width="50px"></a>
						</div>
					</div>
					<div class="small1-3">
						<img src="${image.filePath}" width="600px" height="500px">
					</div>
					<div class="small1-4">
						<div class="small1-5">

							<c:set var="like_check" value="false" />

							<c:forEach var="like" items="${image.likes}">


								<c:if test="${like.user.id eq user.id}">	

									<c:set var="like_check" value="true" />
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${like_check eq true}">

									<div class="c__1 c__1${image.id}">
										<img src="/image/images/49_like.png"
											onclick="like(${image.id},${fn:length(image.likes)}, -1)"
											height="30px" />
									</div>
								</c:when>
								<c:otherwise>
									<div class="c__1 c__1${image.id}">
										<img src="/image/images/49_unlike.png"
											onclick="like(${image.id},${fn:length(image.likes)}, 1)"
											height="30px" />
									</div>
								</c:otherwise>
							</c:choose>

							<div class="c__2">
								<a href="#"><img src="/image/images/48.png" height="30px"></a>
							</div>
							<div class="c__3">
								<a href="#"><img src="/image/images/50.png" height="30px"></a>
							</div>
						</div>
						<div class="c__4">
							<a href="#"><img src="/image/images/52.png" height="30px"></a>
						</div>
						<div class="c__5">
							<a href="#"><img src="/image/images/51.png" height="30px"></a>
						</div>
					</div>

					<div class="d like${image.id}">
						<b>좋아요${fn:length(image.likes)}개</b>
					</div>

					<div class="e">
						<b>${image.user.username}</b> ${image.caption}<br />
						<c:forEach var="tag" items="${image.tags}">
							<span class="tag">#${tag.name}</span>
						</c:forEach>
						<br /> <b>좋아요 한 사람들</b>
						<div class="like_people like_people${image.id}">
							<c:forEach var="like" items="${image.likes}">
								<a href="#" class="like_people${like.user.username}${image.id}">${like.user.username}</a>
							</c:forEach>
						</div>

					</div>
					<div class="f">
						<input class="g reply${image.id}" type="text" placeholder="댓글 달기" /><button onclick="replyadd(${image.id})" class="h">게시</button>
					</div>
					<div class="replycase${image.id}">
					<c:forEach var="reply" items="${image.replys}">
							<div class="grid reply_${reply.id}">
							<a href="/user/${reply.user.id}"><img  width="50px" height="50px" style="border-radius: 50%" src="${reply.user.profile.filePath}" onerror="this.src='/image/images/1212.png'"></a>
								<div class="replymain">
									<div><p>${reply.user.username}</p></div>
									<div><b>${reply.content}</b></div>
								</div>
							</div>
							<hr/>
						</c:forEach>	
						</div>

				</div>
				<!--  end of item1 -->
			</c:forEach>


		</div>
		<!-- end of image-list -->

		<!--  START side BAR -->
		<div>
			<div class="small2-1">

				<div>
					<a href="#" class="popup" onclick="followlist(true)"><img src="${user.profile.filePath}"
						alt="x" width="50px" height="50px" style="border-radius: 50%" onerror="this.src='/image/images/1212.png'"/></a>
				</div>
				<div class="ax">
					<a class="bx2" href="#">${user.username}</a>	
				</div>


				<div class="small2-2">
					<div class="ax1">최근 게시물</div>
					<div class="ax2">
						<a class="ax3" href="#">모두 보기</a>
					</div>
					<c:forEach var="image" items="${recent}">
					<div class="ax4">
						<a href="/user/${image.user.id}"  ><img src="${image.filePath}"
						alt="x" width="50px" height="50px"  onerror="this.src='/image/images/1212.png'"/></a>
					</div>

					<div class="ax5">
						<p class="bx1"><a class="bx2" href="/user/${image.user.id}">${image.user.username}</a></p>
						<p class="bx1"><a class="bx2" href="/user/${image.user.id}">${image.caption}</a></p>
					</div>
					</c:forEach>
					

				</div>
				
				<div class="small2-2">
					<div class="ax1">최근 핫이슈</div>
					<div class="ax2">
						<a class="ax3" href="#">모두 보기</a>
					</div>

					<c:forEach var="image" items="${hot}">
					<div class="ax4">
						<a href="/user/${image.user.id}"  ><img src="${image.filePath}"
						alt="x" width="50px" height="50px"  onerror="this.src='/image/images/1212.png'"/></a>
					</div>

					<div class="ax5">
						<p class="bx1"><a class="bx2" href="/user/${image.user.id}">${image.user.username}</a></p>
						<p class="bx1"><a class="bx2" href="/user/${image.user.id}">${image.caption}</a></p>
					</div>
					</c:forEach>

				</div>
				<a href="/logout" class="btn btn-primary-inline">로그아웃</a>
				
				<div class="ax12">
					<a class="ax13" href="#">instagram 정보.지원.홍보 센터.API,채용정보<br />
						개인정보처리방침.약관.디렉터리.프로필.해시태그.<br /> 언어
					</a>
				</div>
				<div class="ax12">
					<div class="ax13">© 2019 INSTAGRAM</div>
				</div>
			</div>

		</div>
		<!--  END OF side BAR -->
		<div>
			<input type="button" value="더보기" onClick="paging()" /> <br />
			<br />
		</div>

	</div>


	<!-- Modal 시작 -->
	<div id="modal">
		<div id="pop">
		<div class="close">
				<button type="button" id="btn-close">닫기</button>
			</div>
		</div>
	</div>
	<!-- Modal 끝 -->
	<!-- wrap 끝 -->
	<script src="/js/script.js" type="text/javascript"></script>

	<script>
		function paging(){
				
			if(${maxPage} == ${page} || ${maxPage} == 0){
				alert("마지막 페이지입니다");
			}else if(${search ne null}){
				location.href="/images?page="+${page+1}+"&search=${search}";	
			}else{
				location.href="/images?page="+${page+1};
			}	
		}
		
		function like(imageId, count, check){ //1  3  -1
			if(check == -1){
				fetch("/unlike/image/"+imageId,{
					method:"POST"
				}).then(function(res){
					return res.text();
				}).then(function(result){
					//하트 없애기
					let el = document.querySelector('.c__1'+imageId);
					el.innerHTML = "<img src='/image/images/49_unlike.png'  onclick='like("+imageId+","+(count-1)+", 1)' height='30px' />";
					
					//좋아요 개수
					let el2 = document.querySelector('.like'+imageId);
					el2.innerHTML = "<b>좋아요"+(count-1)+"개</b>";
					
					//좋아요 한 사람들
					let username = "${user.username}";
					let myDom = document.querySelector('.like_people'+username+imageId);
					myDom.parentNode.removeChild(myDom);
				
				});
			}else{
				fetch("/like/image/"+imageId,{
					method:"POST"	
				}).then(function(res){
					return res.text();
				}).then(function(result){
					//하트
					let el = document.querySelector('.c__1'+imageId);
					el.innerHTML = "<img src='/image/images/49_like.png' onclick='like("+imageId+","+(count+1)+", -1)' height='30px' />";
					
					//좋아요 개수
					let el2 = document.querySelector('.like'+imageId);
					el2.innerHTML = "<b>좋아요"+(count+1)+"개</b>";
					
					//좋아요 한 사람들
					let username = "${user.username}";
					let el3 = document.querySelector(".like_people"+imageId);
					let myDom = document.createElement("a");
					myDom.className ="like_people like_people"+username+imageId;
					myDom.innerHTML = "${user.username}";
					el3.append(myDom);
				
				});
			}
		}
		
	
	
	
	</script>
	<script type="text/javascript">
	function followlist(check){
		
		
		$( '.img' ).remove()
		
		
	
		if(check){
			let url = '/followlist/'+${user.id};
			fetch(url, {
				method:"GET"
			}).then(function(res){
				console.log(res);
				return res.json();
			}).then(function(rs){
				
				
				let follow_el = document.querySelector('#pop');
				for(let g in rs){
				
				let filePath;
				if(rs[g].toUser.profile === null){
					filePath='/image/images/1212.png';
				}else{
					filePath=rs[g].toUser.profile.filePath;
				}
				
				let follow =document.createElement("div")
				follow.classList.add("img");
				follow.innerHTML = "<a href=/user/"+rs[g].toUser.id+"><img src='"+filePath+"' alt='white'  width='50px' height='50px' style='border-radius: 50%' onerror='this.src=\"/image/images/1212.png\"'><p>"+rs[g].toUser.username+"</p></a><a class='follow"+rs[g].toUser.id+"'><button  class='un' onclick='follow2("+rs[g].toUser.id+", false)'>언팔</button></a>";
				follow_el.prepend(follow); 
				
				
				}
				
			}
					).catch();
			
		}else{
			
		}
		
			
		}
	
	function follow2(id,check){
		//true -> follow
		//false -> unfollow
		
		if(check){
			let url = '/follow/'+id;
			fetch(url, {
				method:"POST"
			}).then(function(res){
				console.log(res);
				return res.text();
			}).then(function(rs){
				if(rs === "ok"){
					let follow_el = document.querySelector('.follow'+id);
					follow_el.innerHTML = "<button class='un' onclick='follow2("+id+", false)'>언팔</button>";
				}
			}
					).catch();
			
		}else{
			let url = '/unfollow/'+id;
			fetch(url, {
				method:"POST"
			}).then(function(res){
				console.log(res);
				return res.text();
			}).then(function(rs){
				if(rs === "ok"){
					let follow_el = document.querySelector('.follow'+id);
					follow_el.innerHTML = "<button onclick='follow2("+id+", true)'>팔로우</button>";
				}
			}
					).catch();
		}
	}
	
	function search(){
		let search_dom = document.querySelector('.searchbox');
		let search_value =search_dom.value;
		if(search_value != null){
			location.href="/images?search="+search_value;	
		}
		
		
	}
	function replyadd(imageid){
		let reply = document.querySelector('.reply'+imageid);
		let reply_value = reply.value;
		if(reply_value != null){
		let data = {
			content: reply_value,
			image: { id: imageid },
		}
		let Url = '/reply/create';
		
		fetch(Url,{
			headers:{'Content-Type': 'application/json'},
				method:"POST",
				body: JSON.stringify(data),
			}).then(function(res){
				
				return res.json();
			}).then(function(rs){
				reply.value="";
				let replycase = document.querySelector('.replycase'+imageid);
				let replybox =  document.createElement("div");
				let hr = document.createElement("hr");
				if(rs.user.profile === null){
					filePath='/image/images/1212.png';
				}else{
					filePath=rs.user.profile.filePath;
				}
				replybox.className ="grid reply_"+rs.id;
				replybox.innerHTML = '<a href="/user/'+rs.user.id+'"><img  width="50px" height="50px" style="border-radius: 50%" src="'+filePath+'" onerror="this.src=\'/image/images/1212.png\'"></a><div class="replymain"><div><p>'+rs.user.username+'</p></div><div><b>'+rs.content+'</b></div></div>';
				replycase.prepend(hr);
				replycase.prepend(replybox);
				
	})
		}
	}
	
	
	
	</script>
	<script src="/js/script.js" type="text/javascript"></script>

</body>

</html>