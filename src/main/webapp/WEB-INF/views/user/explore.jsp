<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
 
<title>Instagram</title>
<link rel="shortcut icon" href="/image/user/favicon.ico">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <style>
        
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body{
            text-align: center;
        }
        nav{
            margin-top:8%;
            display: inline-block;
            text-align: center;
            width: 1000px;
        }
        .a p{
            color: gray;
            font-size: 17px;
            font-weight: 600;
        }
        .b p{
            font-weight: 600;
        }
        a{
            text-decoration: none;
            color: skyblue;
            font-weight: 600;
        }
        .midbox{
            width: 100%;
            display: grid;
            grid-template-columns: auto auto auto auto auto;
            justify-content: center;
            grid-gap: 3%;
        }
        .follow{
            padding: 20px;
            align-content: center;
            border: 1px solid lightgray;
            background-color: white;
            width: 150px;
        }
        .a{
            width: 100%;
            display: grid;
            grid-template-columns: auto auto;
            justify-content:space-between; 
        }
        .b{
            width: 90%;
            margin: 3% 0 4% 6%;
            display: grid;
            grid-template-columns: auto auto;
            justify-content:space-between;
        }
        .id{
            font-weight: 600;
            cursor: pointer;
        }
        .nav_text{
            font-size: 12px;
            margin: 2%;
            color: lightgray;
        }
        input[type=button]{
            width: 60%;
            font-weight :600;
            font-size: 15px;
            border-radius : 3px;
            border : 0px;
            background-color: #3897f0;
            color: white;
            margin-top: 20px;
            padding: 10px;
            cursor: pointer;
        }

        .foot{
            margin:100px;
            display: grid;
            grid-template-columns: repeat(12, auto);
            
        }
      

        .text{
            text-align: left;
            grid-column:1/3 span;
            margin-top: 30px;
            
        }

        .article{
            
            display: grid;
            grid-template-columns: auto auto auto;
            justify-content: center;
            grid-gap: 2%;
           
            text-align: center;
        }

        .articleimg1{
            width:300px;
            height: 300px;
            background-color: azure;
            border : 1px solid gray;
            display: inline-block;
            position: relative;
            
        }

        .imagetext1{
            position: absolute;
            color :white;
            top: 45%;
            font-size: 25px;
            width: 100%;
            display: none;
        }


        .articleimg1:hover .imagetext1{
            display: block;
        }
        .header{
            background-color:  rgb(255, 255, 255);
            
        }

        .container {
            display: block;
            width: 100%;
            height: 100px;
            display: grid;
            grid-template-columns: 1fr 2fr;
            background-color: rgb(255, 255, 255);
            position: fixed;
            z-index: 1;
            padding: 1%;
            border:1px solid lightgray;

            /* justify-content: center;
        align-items: center; */
        }

        input[type=text] {
            height: 35px;
            width: 250px;
            margin-top: 3%;
            text-align: center;
            background-color: rgb(250, 250, 250);
            border: 1px solid lightgray;
            font-size: 18px;
            color: rgb(168, 170, 173);
            padding-left: 37px;
            
        }
        input[type=text]:focus{
            text-align: left;
        }
        .rogo{
            display: inline-block;
        }

        .moonjjin {
            display: grid;
            grid-template-columns: repeat(4, auto);
            /* justify-content: space-between; */
            
        }
        .info{
        	display: grid;
            grid-column: 3/1 span;
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(3, auto);
            justify-content: center;
        }
        .info >a{
        	grid-row: 2/1 span;
        }
        .info1{
        	grid-column: 1/1 span;
        }
        .info2{
        	grid-column: 2/1 span;
        }
        .info3{
        	grid-column: 3/1 span;
        }

        .search {
            position: relative;
            
            
        }

        .material-icons {
            position: absolute;
            top: 0px;
            left: 0px;
            padding: 15px 10px;
            color: rgb(168, 170, 173);
            width: 10px;
            
        }
       
        


        @media(max-width:715px){
        .mid{
            display: none;
            margin-top: 0;
            position: absolute;
            }
        .articleimg1{
            width : 200px;
            height: 200px;
        }

        header{
            display: block;
            min-width: 100%;
        }
             
        .search{
            display: none;
           
        }
       
        }
        @media(max-width:450px){
            .rogo{
                display: none;
            }
            .articleimg1{
            width : 100px;
            height: 100px;
        }
        .container{
            height:50px;
        }
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
          
        <nav class="mid">
             
                <div class="b">
                    <p>회원님을 위한 추천</p>
                    <div><a href="#">모두 보기</a></div>
                </div>
                <div class="midbox">
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in1.png" alt="x"></a></div>
                        <div class="id">iot_404</div>
                        <div class="nav_text">teacher님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in2.png" alt="x"></a></div>
                        <div class="id">inmoonhak</div>
                        <div class="nav_text">mun_JJin님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in3.png" alt="x"></a></div>
                        <div class="id">Eletronic</div>
                        <div class="nav_text">hohoho님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in4.png" alt="x"></a></div>
                        <div class="id">Frozen</div>
                        <div class="nav_text">Do_you_want님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in5.png" alt="x"></a></div>
                        <div class="id">japanjob</div>
                        <div class="nav_text">in_to_the_in님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                </div>
            </nav>
    <div class="article">
            <div class="text">둘러보기</div>
        <c:forEach var='image' items='${imageList}'>
        <div class="articleimg1"><a href="/user/${image.user.id}"><div class="imagetext1 image${image.user.id}">❤${image.likes.size()} 🗨1</div><img src="${image.filePath }" alt="" width="100%" height="100%" /></a></div>
        </c:forEach>
        
      
    </div>
    <div class = "foot">
            <a href="#" class="href">INSTAGRAM 정보</a>
            <a href="#" class="href">지원</a>
            <a href="#" class="href">홍보 센터</a>
            <a href="#" class="href">API</a>
            <a href="#" class="href">채용 정보</a>
            <a href="#" class="href">개인정보처리방침</a>
            <a href="#" class="href">약관</a>
            <a href="#" class="href">디렉터리</a>
            <a href="#" class="href">프로필</a>
            <a href="#" class="href">해시 태그</a>
            <a href="#" class="href">언어</a>
            <a href="#" class="href3">@ 2019 INSTAGRAM</a>
</div>

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