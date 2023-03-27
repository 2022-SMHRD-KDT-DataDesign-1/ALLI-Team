<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
	<script type="text/javascript">
		function showPopUp() {
			
			//창 크기 지정
			var width = 1000;
			var height = 500;
			
			//pc화면기준 가운데 정렬
			var left = (window.screen.width / 2) - (width/2);
			var top = (window.screen.height / 4);
			
		    	//윈도우 속성 지정
			var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
			
		    	//연결하고싶은url
		    	const url = "SiteTutorial.html";
		
			//등록된 url 및 window 속성 기준으로 팝업창을 연다.
			window.open(url, "hello popup", windowStatus);
		}
	</script>
    <div id="h_container">
        <div id="logo">
            <a href="#">
                <img src="./img/logo.png" alt="ALL-IT">
            </a>
            <p>
                개발인력 전문사이트 <span>ALL-IT</span>
            </p>
        </div>
        <ul id="gnb">
            <li>
                <a href="#">구직</a>
            </li>
            <li>
                <a href="#">채용</a>
            </li>
            <li>
                <a href="#"><span>NEW</span>TREND</a>
            </li>
        </ul>
        <ul id="nav">
            <li>
                <a href="join.jsp">회원가입</a>
            </li>
            <li>
                &#124;
            </li>
            <li>
                <a href="login.jsp">로그인</a>
            </li>
        </ul>
        <!-- <button id="h_btn">Site Information<img src="./img/h_btn.png" alt="사이트 안내영상"></button> -->
        <a id="h_btn" href='javascript:showPopUp()'>Site Information<img src="./img/h_btn.png" alt="사이트 안내영상"></a>
    </div>
</header>