<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<title>Instagram</title>
<link rel="shortcut icon" href="/image/user/favicon.ico">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	min-width: 630px;
	background-color: #fafafa;
	min-height: 1200px;
}

a {
	color: black;
	text-decoration: none;
}

header {
	width: 100%;
	position: fixed;
	top: 0px;
	background-color: white;
	display: grid;
	padding: 10px;
	grid-template-columns: 1fr 1fr 1fr;
	justify-content: center;
	text-align: center;
	align-items: center;
	border: 1px solid gainsboro;
}

header img {
	height: 40px;
}

.search {
	position: relative;
	display: inline-block;
	width: 150px;
	margin: 0 auto;
	height: 30px;
}

.material-icons {
	position: absolute;
	left: 37%;
	top: 15%;
	font-size: 15px;
	color: gainsboro;
}

header input {
	width: 100%;
	padding-left: 20px;
	text-align: center;
}

hr {
	height: 40px;
	width: 0;
	background-color: black;
	border-color: black;
	display: inline-block;
}

nav a {
	padding: 0px 10px;
}

main {
	height: 100%;
	margin: 106px 15% 40px;
	background-color: white;
	border: 1px solid gainsboro;
	display: grid;
	grid-template-columns: 1fr 3fr;
}

main>div {
	border: 1px solid gainsboro;
}

.main1>div {
	text-align: center;
	font-size: 17px;
	border-left: white solid 2px;
}

.main1>div>a {
	width: 100%;
	padding: 20px 20px 20px 18px;
	display: inline-block;
}

.main1>div:hover {
	border-left-color: gainsboro;
}

footer {
	display: grid;
	grid-template-columns: repeat(12, 1fr);
	font-size: 12px;
	text-align: center;
	height: 100px;
	margin: 0 15%;
}

input:focus {
	outline: none;
}

input[type=text]:focus {
	text-align: start;
}

.copyright {
	color: gainsboro;
}

.menu1 {
	border-left-color: black !important;
}

.profile {
	grid-column: 1/2 span;
	padding: 10px;
}

.profile p:nth-child(1) {
	font-size: 20px;
}

.profile p:nth-child(2) {
	color: #3897f0;
	font-size: 13px;
}

.liner:nth-child(1n) {
	display: inline-block;
}

.profile div {
	display: inline-block;
	height: 40px;
}

.liner {
	padding: 50px;
	grid-column: 1/2 span;
}

.liner>div {
	display: grid;
	grid-template-columns: 1fr 3fr;
}

.key {
	text-align: end;
}

.tablediv {
	grid-template-columns: 5% auto;
	display: grid;
}

.a_check {
	height: 100%;
}

.table {
	display: inline-block;
}
input[type=submit] {
	display: inline-block;
	width: 100%;
	height: 100%;
	padding: 10px;
	background-color: skyblue;
	color: white;
	border: 0px;
	border-radius: 3px;
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
	width: 100%;
	margin-top: 10px;
}
.a5 {
	margin-left: 10px;
}
input:focus {
	outline: none;
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
</style>
</head>

<body onLoad="check()">
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
	<main>

	<div class="main1">

		<div class="menu1">
			<a href="/user/edit">프로필 편집</a>
		</div>
		<div class="menu2">
			<a href="/user/change">비밀번호 변경</a>
		</div>
		<div class="menu3">
			<a href="/user/manage_access">허가된앱</a>
		</div>

		<div class="menu4">
			<a href="/user/settings">이메일 및 SMS</a>
		</div>
		<div class="menu5">
			<a href="/user/contact_history">연락처 관리</a>
		</div>
		<div class="menu6">
			<a href="/user/privacy_and_security">공개 범위 및 보안</a>
		</div>
	</div>
	<form action="/user/editProc" method="post">
	<input type="hidden" name="id" value="${user.id}" readonly />
	<div class="main2">
		<div class="liner">
		
			<div class="profile">
				<img class="key" src="/image/media/Screenshot_70.png" alt="x">
				<div>
					<p>${user.username }</p>
					<a href="/profileimages/upload"><p>프로필 사진 바꾸기</p></a>
				</div>
			</div>

			<div class="line1">
				<div class="key">
					이름<br />
				</div>
				<input class="a_name" type="text" name="name" value="${user.name}" size="30"><br />
			</div>
			<div class="line2">
				<div class="key">
					사용자 이름<br />
				</div>
				<input class="a_userid" type="text" name="username" value="${user.username}" size="30" readonly><br />
			</div>
			<div class="line3">
				<div class="key">
					웹사이트<br />
				</div>
				<input class="a_wedserver" type="url" name="website" value="${user.website}" size="30"><br />
			</div>
			<div class="line4">
				<div class="key">
					소개<br />
				</div>
				<textarea cols="32" name="bio" ${user.bio} rows="5">${user.bio}</textarea>
				<br />
			</div>
			<div class="line9">
				<div></div>
				<div class="개인 정보">개인정보</div>
				<br />
			</div>
			<div class="line5">
				<div class="key">
					이메일<br />
				</div>

				<input class="a_email" name="email" value="${user.email}" type="email" size="30"><br />
			</div>
			<div class="line6">
				<div class="key">
					전화번호<br />
				</div>
				<input class="a_callnumber" name="phone" value="${user.phone}" type="tel" size="30"><br />
			</div>
			<div class="line7">
				<div class="key">
					성별<br />
				</div>
				<c:choose>
				<c:when test="${user.gender eq '남' }">
				<select class="a_gender" name="gender" >
					<option>남</option>
					<option>여</option>
				</select> 
				</c:when>
				<c:otherwise>
				<select class="a_gender" name="gender" >
					<option>여</option>
					<option>남</option>
				</select>
				</c:otherwise>
				</c:choose>
				<br />
			</div>

			<div class="line8">
				<div class="key">
					비슷한 계정 추천<br />
				</div>
				<div class="tablediv">

					<input class="a_check" type="checkbox"> <span class="table">

						팔로우 할 만한 비슷한 계정을 <br /> 추천할 떄 회원님의 계정을 포 <br /> 함 합니다.
					</span>


				</div>

			</div>
			<div class="line10">
				<input type="submit" value="제출"> <a href="#">계정을 일시적으로
					비활성화</a>
					
			
			</div>
	
		</div>

	</div>
	</form>
	</main>
	<footer>
		<div>
			<a href="#">INSTARGRAM 정보</a>
		</div>
		<div>
			<a href="#">지원</a>
		</div>
		<div>
			<a href="#">홍보 센터</a>
		</div>
		<div>
			<a href="#">API</a>
		</div>
		<div>
			<a href="#">채용 정보</a>
		</div>

		<div>
			<a href="#">개인정보처리방침</a>
		</div>
		<div>
			<a href="#">약관</a>
		</div>
		<div>
			<a href="#">디렉터리</a>
		</div>
		<div>
			<a href="#">프로필</a>
		</div>
		<div>
			<a href="#">해시태그</a>
		</div>

		<div>
			<a href="#">언어</a>
		</div>
		<div>
			<p class="copyright">©️2019 INSTARGRAM</p>
		</div>
		<div></div>

	</footer>
<script type="text/javascript">
function check(){
	
	if( '${fail}' === 'success'){
		alert('정보가 변경 되었습니다.');
	}
}</script>
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