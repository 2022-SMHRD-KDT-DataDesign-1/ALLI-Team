<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/metatag.jsp" %>  
</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<div id="wrap" class="login_wrap">
	   <div class="sub_top">
	        <div>
	            <p>로그인</p>
	        </div>
	   </div>
	   <div class="sub_login">
	     <div class="sub_login01">
	        <img src="./img/logo.png">
	        <p>개발인력을 위한 모든 것, ALL-IT</p>
	     </div>
	     <div class="sub_login02">
	        <ul>
	            <li>개인회원</li>  
	            <li>기업회원</li>
	        </ul>
	        <ul>
	            <li id="login_people">
	                <p><span>개인회원</span> 로그인입니다</p>
	                <form>
	                    <ul class="login_box">
	                        <li>
	                            <input type="text" placeholder="아이디">
	                            <input type="password" placeholder="비밀번호">
	                        </li>
	                        <li>
	                            <input type="submit" value="로그인">
	                        </li>
	                    </ul>
	                </form>
	                <ul class="login_bottom">
	                    <li>
	                        <a href="#">회원가입</a>
	                    </li>
	                    <li>
	                        &#124;
	                    </li>
	                    <li>
	                        <a href="#">아이디	&#183; 비밀번호 찾기</a>
	                    </li>
	                </ul>
	            </li>
	            <li id="login_emp">
	                <p><span>기업회원</span> 로그인입니다</p>
	                <form>
	                    <ul class="login_box">
	                        <li>
	                            <input type="text" placeholder="아이디">
	                            <input type="password" placeholder="비밀번호">
	                        </li>
	                        <li>
	                            <input type="submit" value="로그인">
	                        </li>
	                    </ul>
	                </form>
	                <ul class="login_bottom">
	                    <li>
	                        <a href="#">회원가입</a>
	                    </li>
	                    <li>
	                        &#124;
	                    </li>
	                    <li>
	                        <a href="#">아이디	&#183; 비밀번호 찾기</a>
	                    </li>
	                </ul>
	            </li>
	        </ul>
	    </div>
	   </div>
	</div>
	<%@ include file="./include/footer.jsp" %>
	<script>
        $('.sub_login02 > ul:nth-child(1)>li').click(function(){
            $(this).removeClass('off').addClass('on');
            $('.sub_login02 > ul:nth-child(1) >li').not(this).removeClass('on').addClass('off');
        });
        $('.sub_login02 > ul:nth-child(1)>li:nth-child(1)').click(function(){
            $('#login_emp').hide();
            $('#login_people').show();
        });
        $('.sub_login02 > ul:nth-child(1)>li:nth-child(2)').click(function(){
            $('#login_people').hide();
            $('#login_emp').show();
        });
    </script>
</body>
</html>