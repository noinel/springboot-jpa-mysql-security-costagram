<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instagram</title>
<link rel="shortcut icon" href="/image/user/favicon.ico">
<link href="/css/style.css" type="text/css" rel="stylesheet">
<script src="/js/jquery-1.12.3.js" type="text/javascript"></script>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />

<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background-color: rgb(250, 250, 250);
	text-align: center;
}

.body {
	display: inline-block;
	width: 1000px;
	margin-top: 94.961px;
}

.photo1 {
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 20px;
}

.upperbox1 {
	background-color: white;
	border-bottom: 1px solid rgb(220, 220, 220);
	width: 100%;
	position: fixed;
	text-align: center;
	z-index: 1;
}

.semibox {
	display: inline-block;
	width: 1000px;
}

.upperbox2 {
	padding: 24px 20px;
	display: grid;
	grid-template-columns: 3fr 2fr 3fr;
}

.upperbox2 * {
	display: inline-block;
}

.uppervalue1 {
	cursor: pointer;
	text-align: left;
}

.uppervalue3 {
	display: grid;
	grid-template-columns: auto auto auto;
	justify-content: end;
	grid-gap: 50px;
}

.value1image1 {
	position: relative;
	top: -2px;
	left: 2px;
}

.value1image2 {
	background-color: rgb(80, 80, 80);
	height: 28px;
	width: 1px;
	margin: 0 16px;
}

.value1image3 {
	position: relative;
	top: 5px;
	left: -5px;
}

.uppervalue2 {
	text-align: center;
	position: relative;
}

.value2image1 {
	width: 100%;
	height: 90%;
}

.value2image2 {
	border: 1px solid rgb(220, 220, 220);
	border-radius: 3px;
	background-color: rgb(250, 250, 250);
	width: 100%;
	height: 100%;
	font-size: 16px;
	text-align: center;
}

.uppervalue3 {
	text-align: right;
}

.value3image1 * {
	margin: 0 8px 0 0;
}

.value3image2 {
	cursor: pointer;
	background-color: rgb(56, 151, 240);
	color: white;
	font-size: 15px;
	font-weight: 600;
	border-radius: 4px;
	border-style: none;
	padding: 8px 12px;
}

.value3image3 {
	cursor: pointer;
	background-color: white;
	color: rgb(56, 151, 240);
	font-size: 15px;
	font-weight: 600;
	border-radius: 4px;
	border-style: none;
	padding: 8px 12px;
}

.value2image2:active .material-icons {
	display: none;
}

.material-icons {
	display: inline-block;
	top: 14px;
	left: 10px;
	position: absolute;
}

.bodypadding {
	padding: 0 20px;
}

.profile {
	padding: 20px 50px;
	text-align: left;
	display: grid;
	grid-template-columns: auto auto;
}

.profile * {
	display: inline-block;
}

.thumbnail {
	width: 200px;
	height: 200px;
	position: relative;
}

.button4 {
	cursor: pointer;
	background-color: rgb(250, 250, 250);
	color: black;
	font-size: 15px;
	border-style: none;
}

.button4:hover .loginback {
	display: inline-block;
}

.button4:hover .body {
	opacity: 0.2;
}

.explorer {
	width: 150px;
	height: 150px;
	border: 1px solid;
	border-radius: 50%;
	background-image: url("${imageUser.profile.filePath}");
	background-size: cover;
}	

p {
	display: inline-block;
	font-weight: 600;
}

.name {
	margin-right: 15px;
	font-size: 28px;
	font-weight: 100;
}

.rower {
	display: block;
	justify-content: space-between;
	margin-bottom: 20px;
}

.rower2 {
	font-size: 20px;
}

.rower3 {
	font-size: 20px;
	font-weight: 600;
	display: block;
}

.rower * {
	margin-right: 20px;
	display: inline-block;
}

.linkbox {
	width: 120px;
	text-align: center;
}

.links {
	text-align: left;
	padding: 0 45px 45px;
}

.links * {
	display: inline-block;
}

.deco {
	position: relative;
}

.deco1 {
	position: absolute;
	border-top: 1px solid black;
	top: -24px;
	left: 60px;
}

.deco2 {
	color: grey;
}

.link1 {
	width: 80px;
	height: 80px;
	border: 1px solid rgb(220, 220, 220);
	border-radius: 50%;
	background-image: url("/image/user/Personal.jpg");
	background-position: center center;
}

.link2 {
	width: 80px;
	height: 80px;
	border: 1px solid rgb(220, 220, 220);
	border-radius: 50%;
	background-image: url("/image/user/Features.jpg");
	background-position: center center;
}

.link3 {
	width: 80px;
	height: 80px;
	border: 1px solid rgb(220, 220, 220);
	border-radius: 50%;
	background-image: url("/image/user/Facebook.jpg");
	background-position: center center;
}

.link4 {
	width: 80px;
	height: 80px;
	border: 1px solid rgb(220, 220, 220);
	border-radius: 50%;
	background-image: url("/image/user/hwak.jpg");
	background-position: center center;
}

.lining {
	padding: 20px;
	text-align: center;
}

.lining * {
	padding: 0 30px;
	display: inline-block;
	font-size: 14px;
	font-weight: 600;
}

.photo * {
	display: inline-block;
	width: 1fr;
	height: 300px;
	margin: 0 0 15px 0;
}

.photo * * {
	width: 300px;
	margin: 0 15px 0 0;
}

.photobox {
	position: relative;
}

.photobox:hover .photoimage {
	opacity: 0.4;
}

.photobox:hover .score {
	display: inline;
}

.score {
	display: none;
	position: absolute;
	padding: 150px 0 0 0;
}

.scorein {
	font-size: 20px;
	font-weight: 600;
	color: red;
	margin: 15px;
	display: inline;
}

footer {
	margin: 0 45px 0 15px;
}

.footerbox {
	padding: 40px 0;
	display: grid;
	grid-template-columns: 5fr 1fr
}

.footerbox ul {
	font-size: 13px;
	font-weight: 550;
}

.footerbox ul li {
	display: inline;
	padding: 7px;
}

.footerbox ul li a {
	color: black;
	text-decoration: none;
}

.copyright {
	font-size: 12px;
	font-weight: 600;
	color: grey;
	text-align: right;
}

.topbox {
	display: inline-block;
	height: 50px;
}

.top1 {
	width: 50px;
	height: 50px;
	border-radius: 50px;
}

.top2 {
	width: 100px;
	height: 100px;
	border-radius: 50px;
}

.text1box {
	display: inline-block;
	height: 50px;
	padding-top: 10px;
	vertical-align: top;
}

.text1 {
	color: black;
	font-size: 20px;
	font-weight: 1000;
	display: inline;
}

.text2 {
	color: black;
	text-align: center;
	font-size: 20px;
	font-weight: 600;
}

.text3 {
	color: gray;
	text-align: center;
	font-size: 20px;
}

section {
	width: 600px;
	height: 1000px;
	text-align: center;
	padding-top: 20px;
}

article {
	display: inline-block;
}

table {
	text-align: center;
	background-color: white;
	width: 430px;
	height: 600px;
	border-radius: 15px;
}

h1 {
	font-size: 45px;
	margin: 10px 0px;
}

input[type=text] {
	width: 300px;
	height: 45px;
	border-radius: 3px;
	background-color: #FAFAFA;
	font-size: 15px;
	border: 1px solid whitesmoke;
	padding: 0px;
}

input[type=password] {
	width: 300px;
	height: 45px;
	border-radius: 3px;
	background-color: #FAFAFA;
	font-size: 15px;
	border: 1px solid whitesmoke;
	padding: 0px;
}

input[type=submit] {
	width: 300px;
	height: 45px;
	background-color: #3897f0;
	color: white;
	font-size: 14px;
	cursor: pointer;
	border-radius: 3px;
	border: 0;
	outline: 0;
	padding: 0px;
}

.sliceline {
	display: grid;
	grid-template-columns: 3fr 2fr 3fr;
	vertical-align: middle;
}

.sliceline * {
	font-weight: 600;
	color: gray;
}

.slice {
	display: inline-block;
	background-color: gray;
	height: 1px;
	position: relative;
	top: 4px;
}

.face {
	width: 20px;
	height: 20px;
}

.bin {
	background-color: #FAFAFA;
	height: 15px;
	border: 1px solid whitesmoke;
}

.click1 {
	text-decoration: none;
	color: #385185;
	font-size: 18px;
	font-weight: 600;
}

.click2 {
	text-decoration: none;
	color: #385185;
}

.click3 {
	text-decoration: none;
	color: #385185;
	font-size: 19px;
	font-weight: 700;
}

.loginback {
	display: none;
	position: absolute;
	width: 100%;
	z-index: 2;
	text-align: center;
}

.logmain {
	display: inline-block;
	width: 500px;
	padding-top: 120px;
}


.big {
	display: grid;
	background-color: white;
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
	margin-top: 10px;
	width: 100%;
}

.a5 {
	margin-left: 10px;
}

input:focus {
	outline: none;
}

.btn2 {
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
					<a href="/user/${user.id}"><img src="/image/images/43.png"
						height="30px"></a>
				</div>
			</div>
		</div>

	</div>

	<main class="body">
	<div class="bodypadding">
		<div class="profile">
			<div class="thumbnail">
				<div class="explorer"></div>
			</div>
			<div class="text">
				<div class="rower">

					<div class="name">${imageUser.username}</div>
					<c:choose>
						<c:when test="${imageUser.id ne user.id and followCheck eq false}">

							<div class="followCheck">
								<!-- Follow 유무 체크해야함. -->
								<button class="value3image2" onclick="follow(true)">팔로우</button>
							</div>
						</c:when>
						<c:when test="${imageUser.id ne user.id and followCheck eq true}">

							<div class="followCheck">
								<!-- Follow 유무 체크해야함. -->
								<button class="value3image2" onclick="follow(false)">언팔로우</button>
							</div>
						</c:when>

						<c:otherwise>
							<div>
								<button class="value3image2"
									onclick="location.href='/user/edit'">프로필편집</button>
								<button class="value3image2"
									onclick="location.href='/images/upload'">사진업로드</button>
							</div>
						</c:otherwise>
					</c:choose>

				</div>
				<div class="rower">
					<div>
						게시물
						<p>${imageCount}</p>
					</div>
					<a href="#" class="popup" onclick="followlist(false)"> 팔로워
						<p class="followerCount">${followerCount}</p>

					</a> <a href="#" class="popup" onclick="followlist(true)"> 팔로우
						<p class="followCount">${followCount}</p>
					</a>
				</div>
				<div class="rower2">

					<div class="rower3">${imageUser.name}</div>
					${imageUser.bio} <br /> <a href="${imageUser.website }">${imageUser.website }</a>

				</div>
			</div>
		</div>

		<hr />

		<div class="lining">
			<div class="deco">
				<div class="deco1"></div>
				<div>🎞 게시물</div>
				<div class="deco2">🖼 태그됨</div>
			</div>
		</div>

		<div class="photo">

			<!-- photo item -->
			<div class="photo1">
				<c:forEach var="item" items="${imageList}">
					<div class="photobox">
						<div class="score">
							<div class="scorein">💖${item.likeCount}</div>
						</div>
						<img class="photoimage" src="${item.filePath}">
					</div>
				</c:forEach>
				<c:if test="${imageCount mod 3 == 1}">
					<div class="photobox"></div>
					<div class="photobox"></div>
				</c:if>
				<c:if test="${imageCount mod 3 == 2}">
					<div class="photobox"></div>
				</c:if>
			</div>
			<!-- end photo item -->

		</div>

	</div>

	<footer>
		<div class="footerbox">
			<ul>
				<li><a href="#">INSTAGRAM 정보</a></li>
				<li><a href="#">지원</a></li>
				<li><a href="#">홍보 센터</a></li>
				<li><a href="#">API</a></li>
				<li><a href="#">채용 정보</a></li>
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">약관</a></li>
				<li><a href="#">디렉터리</a></li>
				<li><a href="#">프로필</a></li>
				<li><a href="#">해시태그</a></li>
				<li><a href="#">언어</a></li>
			</ul>
			<div class="copyright">ⓒ 2019 INSTAGRAM</div>
		</div>
	</footer> </main>
	<div id="modal">
		<div id="pop">
			<div class="close">
				<button type="button" id="btn-close">닫기</button>
			</div>
		</div>
	</div>
	<!-- Modal 끝 -->
	<!-- wrap 끝 -->

	<script type="text/javascript">

	function follow(check){
		//true -> follow
		//false -> unfollow
		
		if(check){
			let url = '/follow/'+${imageUser.id};
			fetch(url, {
				method:"POST"
			}).then(function(res){
				console.log(res);
				return res.text();
			}).then(function(rs){
				if(rs === "ok"){
					let follow_el = document.querySelector('.followCheck');
					follow_el.innerHTML = "<button class='value3image2' onclick='follow(false)' >언팔로우</button>";
					
					let follower_c = document.querySelector('.followerCount');
					
					let followercount =follower_c.innerHTML;
					followercount *=1;
					followercount +=1;
					follower_c.innerHTML = followercount;
					
				}
			}
					).catch();
			
		}else{
			let url = '/unfollow/'+${imageUser.id};
			fetch(url, {
				method:"POST"
			}).then(function(res){
				console.log(res);
				return res.text();
			}).then(function(rs){
				if(rs === "ok"){
					let follow_el = document.querySelector('.followCheck');
					follow_el.innerHTML = "<button class='value3image2' onclick='follow(true)' >팔로우</button>";
					let follower_c = document.querySelector('.followerCount');
					let followercount =follower_c.innerHTML;
					followercount *=1;
					followercount -=1;
					follower_c.innerHTML = followercount;
					
				}
			}
					).catch();
		}
		 
	}
	
	
	
	
	
	function followlist(check){
		
		
		$( '.img' ).remove()
		
		
	
		if(check){
			let url = '/followlist/'+${imageUser.id};
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
				follow.innerHTML = "<a href=/user/"+rs[g].toUser.id+"><img src='"+filePath+"' alt='white' width='50px' height='50px' style='border-radius: 50%' onerror='this.src=\"/image/images/1212.png\"'><p>"+rs[g].toUser.username+"</p></a><a class='follow"+rs[g].toUser.id+"'><button  class='un' onclick='follow2("+rs[g].toUser.id+", false)'>언팔</button></a>";
				if(rs[g].toUser.id !== ${user.id}){
				follow_el.prepend(follow); 
				}
				
				
				}
			
			}
					).catch();
			
		}else{
			let url = '/followerlist/'+${imageUser.id};
			fetch(url, {
				method:"GET"
			}).then(function(res){
				console.log(res);
				return res.json();
			}).then(function(rs){
				
				
				let follow_el = document.querySelector('#pop');
				for(let g in rs){
					let filePath;
					if(rs[g].fromUser.profile === null){
						filePath='/image/images/1212.png';
					}else{
						filePath=rs[g].fromUser.profile.filePath;
					}
					
					
					let follow =document.createElement("div")
					follow.classList.add("img");
					if(rs[g].doFollowing === true){
					follow.innerHTML = "<a href=/user/"+rs[g].fromUser.id+"><img src='"+filePath+"' alt='white' width='50px' height='50px' style='border-radius: 50%' onerror='this.src=\"/image/images/1212.png\"'><p>"+rs[g].fromUser.username+"</p></a><a class='follow"+rs[g].fromUser.id+"'><button onclick='follow2("+rs[g].fromUser.id+", true)'>팔로우</button></a>";
					}else{
					follow.innerHTML = "<a href=/user/"+rs[g].fromUser.id+"><img src='"+filePath+"' alt='white' width='50px' height='50px' style='border-radius: 50%' onerror='this.src=\"/image/images/1212.png\"'><p>"+rs[g].fromUser.username+"</p></a><a class='follow"+rs[g].fromUser.id+"'><button  class='un' onclick='follow2("+rs[g].fromUser.id+",false)'>언팔</button></a>";						
					}
					if(rs[g].fromUser.id !== ${user.id}){
					follow_el.prepend(follow); 
					}
				}
				
			}
					).catch();
		}
		
			
		}
	
	function follow2(id,check){
		//true -> follow
		//false -> unfollow
		//type -> follow = true, follower= false
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
					if(${imageUser.id eq user.id}){
						
							let follow_c = document.querySelector('.followCount');
							let followcount =follow_c.innerHTML;
							followcount *=1;
							followcount +=1;
							follow_c.innerHTML = followcount;
					}
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
					if(${imageUser.id eq user.id}){
							let follow_c = document.querySelector('.followCount');
							let followcount =follow_c.innerHTML;
							followcount *=1;
							followcount -=1;
							follow_c.innerHTML = followcount;
					}
				}
			}
					).catch();
		}
		
	}
	
	
	</script>
	<script src="/js/script.js" type="text/javascript"></script>
	<script type="text/javascript">
function search(){
	let search_dom = document.querySelector('.searchbox');
	let search_value =search_dom.value;
	if(search_value != null){
		location.href="/images?search="+search_value;	
	}	
}
</script>
</body>

</html>