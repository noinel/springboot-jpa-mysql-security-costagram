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
	min-height: 800px;
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

header hr {
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

.menu5 {
	border-left-color: black !important;
}

.main2 {
	padding: 20px 50px;;
}

.main2 button {
	background-color: rgba(0, 140, 255, 0.363);
	border: 0px;
	color: white;
	border-radius: 2px;
	font-size: 8px;
	padding: 7px;
}

.main2 span {
	font-weight: 400;
}

.main2 div {
	display: grid;
	justify-content: space-between;
	grid-template-columns: auto auto;
}

.main2 p {
	font-weight: 900;
	display: inline-block;
	text-align: start;
}

.hidden {
	color: rgba(0, 140, 255, 0.747);
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
	<div class="main2">
		<h2>연락처 관리</h2>
		<br />
		<form action="">
			<span>Instagram에 업로드한 연락처입니다. 동기화된 연락처를 삭제하려면 모두 삭제를 누르세요. 이
				페이지에서 연락처를 삭제해도 휴대폰에 추가하는 새 연락처가 계속 업로드됩니다. 동기화를 중지하려면 기기 설정으로 이동하여
				연락처에 대한 액세스 권한을 해제하세요.</span> <br /> <br /> <span>업로드한 연락처 정보는
				Instagram이 회원님에게 친구를 추천하거나 이용 환경을 개선하는 데 사용됩니다. 이 연락처 정보는 회원님만 볼 수
				있습니다.</span> <br /> <br />
			<div>
				<p>동기화된 연락처 0개</p>
				<p>
					<a href="#" class="hidden"> 모두삭제</a>
				</p>
			</div>
			<br />
			<hr />
			<br /> <span> Instagram에 연락처를 업로드하면 여기에 표시됩니다. </span> <br /> <br />
			<hr />
			<br />
			<button>모두 삭제</button>


		</form>
	</div>
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