<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/metatag.jsp" %>  
</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<div id="wrap" class="login_wrap">
       <div class="sub_top">
            <div>
                <p>회원가입</p>
            </div>
       </div>
       <div class="sub_join">
         <div class="sub_join01">
            <img src="./img/logo.png">
            <p>개발인력을 위한 모든 것, ALL-IT</p>
         </div>
         <div class="sub_join02">
            <ul>
                <li>개인회원</li>  
                <li>기업회원</li>
            </ul>
            <ul>
                <li id="join_people">
                    <ul>
                        <li><span>개인회원</span> 가입하고 다양한 혜택을 누리세요!</li>
                        <li>*필수 입력 정보입니다.</li>
                    </ul>
                    <form>
                        <ul class="join_box01">
                            <li>
                                <input type="text" placeholder="아이디 *">
                                <input type="password" placeholder="비밀번호 *">
                                <input type="text" placeholder="이름(성명) *">
                                <input type="text" placeholder="연락처 *">
                                <input type="text" placeholder="이메일 *">
                                <input type="text" placeholder="생년월일(YYMMDD) *">
                                <input type="text" placeholder="희망지역 *">
                            </li>
                            <li>
                                <input type="button" value="가입하기">
                            </li>
                        </ul>
                    </form>
                </li>
                <li id="join_emp">
                    <ul>
                        <li><span>기업회원</span> 가입하고 다양한 혜택을 누리세요!</li>
                        <li>*필수 입력 정보입니다.</li>
                    </ul>
                    <form>
                        <ul class="join_box02">
                            <li>
                                <input type="text" placeholder="아이디 *">
                                <input type="password" placeholder="비밀번호 *">
                                <input type="text" placeholder="기업명 *">
                                <input type="text" placeholder="사업자번호 *">
                                <input type="text" placeholder="기업의 주소 *">
                            </li>
                            <li>
                                <input type="submit" value="가입하기">
                            </li>
                        </ul>
                    </form>
                </li>

            </ul>
         </div>
       </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script>
        $('.sub_join02 > ul:nth-child(1)>li').click(function(){
            $(this).removeClass('off').addClass('on');
            $('.sub_join02 > ul:nth-child(1) >li').not(this).removeClass('on').addClass('off');
        });
        $('.sub_join02 > ul:nth-child(1)>li:nth-child(1)').click(function(){
            $('#join_emp').hide();
            $('#join_people').show();
        });
        $('.sub_join02 > ul:nth-child(1)>li:nth-child(2)').click(function(){
            $('#join_people').hide();
            $('#join_emp').show();
        });
    </script>

</body>
</html>