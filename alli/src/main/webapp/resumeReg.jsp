<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/metatag.jsp" %>  
</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<%
		
	%>
	<div id="wrap" class="resumeReg_wrap">
       <div class="sub_top sub_top_a">
            <div>
                <p>구직을 위한, <img src="./img/logo_w.png"></p>
            </div>
       </div>	       
       <div class="resumeReg">
            <div class="member_inform">
                <div>개인<br>회원</div>
                <p><%=login_vo.getUser_name()%>님, 반갑습니다.</p>
            </div>
            <div class="sub_box">
                <h2 class="sub_title"></h2>이력서 등록</h1>
                <form>
                    <div class="resume_box rbox1">
                        <input type="text" placeholder="기업에게 알리는 나의 강점,목표,관심분야 등 이력서의 제목을 적어주세요">
                    </div>
                    <div class="resume_box rbox2">
                        <h3>인적사항</h3>
                        <p><span class="star">&#42;</span> 필수 입력 정보입니다.</p>
                        <div>
                            <section class="col-sm-2 imgUp">
						    	<div class="imagePreview"></div>
								<label class="btn btn-primary">
									사진등록<input type="file" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
								</label>
						 	 </section><!-- col-2 -->
                            <div>
                                <div class="input readonly">
                                    <label>이름 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder=<%=login_vo.getUser_name() %> name="user_name" readonly>
                                </div>
                                <div class="input readonly">
                                    <label>생년월일 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder=<%=login_vo.getDate_birth() %> name="date_birth" readonly>
                                </div>
                                <div class="input readonly">
                                    <label>성별 <span class="star">&#42;</span></label>
                                    <input type="text" name="gender">
                                </div>
                                <div class="input">
                                    <label>연락처<span class="star">&#42;</span></label>
                                    <input type="email" placeholder="jubueun@naver.com" value="jubueun@naver.com">
                                </div>
                            </div>
                            <div>
                                <div class="input">
                                    <label>연락처 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder="010-6792-5045" value="010-6792-5045">
                                </div>
                                <div class="input">
                                    <label>추가연락처</label>
                                    <input type="text" placeholder="">
                                </div>
                                <div class="input">
                                    <label>성별 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder="광주 북구 일곡동" value="광주 북구 일곡동">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox3">
                        <h3>최종학력</h3>
                        <div>
                            <div class="input">
                                <div class="label">학교구분<span class="star">&#42;</span></div>
                                <select>
                                    <option value="">고등학교</option>
                                    <option value="">대학(2,3년)</option>
                                    <option value="">대학(4년)</option>
                                    <option value="">대학원</option>
                                </select>
                            </div>
                            <div class="input">
                                <label>학교명 <span class="star">&#42;</span></label>
                                <input type="text" placeholder="">
                            </div>
                            <div class="input">
                                <label>전공</label>
                                <input type="text" placeholder="">
                            </div>
                            <div class="input">
                                <div class="label">졸업상태<span class="star">&#42;</span></div>
                                <select>
                                    <option value="">졸업</option>
                                    <option value="">졸업예정</option>
                                    <option value="">재학중</option>
                                </select>
                            </div>
                            <div >
                                <input type="checkbox" id="resume_exception"> 대입검정고시
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox4">
                        <h3>개발기술스택</h3>
                        <div>
                            <section>
                                <div class="choose">
                                    <ul>
                                        <li class="c_btn">
                                        	<div>프로그래밍 언어</div>
                                        	<div></div>
                                        </li>
                                        <li class="c_btn">
                                        	<div>프레임워크</div>
                                        	<div></div>
                                        </li>
                                        <li class="c_btn">
                                        	<div>OS</div>
                                        	<div></div>
                                        </li>
                                        <li class="c_btn">
                                        	<div>자격증</div>
                                        	<div></div>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li class="c_content"><!-- 프로그래밍언어 시작 -->
                                            <ul>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
                                            </ul>
                                        </li>
                                        <li class="c_content"><!-- 프레임워크 시작 -->
                                            <ul>
												<li>
													<p>프레임워크</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
                                            </ul>
                                        </li>
                                        <li class="c_content"><!-- OS 시작 -->
                                            <ul>
												<li>
													<p>OS</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
                                            </ul>
                                        </li>
                                        <li class="c_content"><!-- 자격증 시작 -->
                                            <ul>
												<li>
													<p>자격증</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Java</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>JavaScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Python</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C++</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C#</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>PHP</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Swift</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Kotlin</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>TypeScript</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>Red Hat Enterprise Linux</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
												<li>
													<p>C</p>
													<div>
														<input type="radio">
														<input type="radio">
														<input type="radio">
													</div>
												</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="choose_content">
                                    <p>선택한 항목</p>
                                    <div>
                                    	<p>
                                    		JAVA [상]
                                    		<span class="material-symbols-outlined delete_choose">
                                				Close
                                			</span>
                                    	</p>
                                    	<p>
                                    		C [상]
                                    		<span class="material-symbols-outlined delete_choose">
                                				Close
                                			</span>
                                    	</p>
                                    	<p>
                                    		SPRING [상]
                                    		<span class="material-symbols-outlined delete_choose">
                                				Close
                                			</span>
                                    	</p>
                                    	<p>
                                    		TypeScript [상]
                                    		<span class="material-symbols-outlined delete_choose">
                                				Close
                                			</span>
                                    	</p>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="resume_box rbox5">
                        <h3>기타자격증</h3>
                        <div>
                        	<ul>
                        		<li>
		                            <div class="input">
		                                <label>자격증명</label>
		                                <input type="text" placeholder="">
		                            </div>
		                            <span class="material-symbols-outlined delete">
		                                Close
		                            </span>
	                           	</li>
                            </ul>
                            <div class="add">
                            	<div>
	                                <span class="material-symbols-outlined">
	                                    add_circle
	                                </span>
	                                추가
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox6">
                        <h3>경력</h3>
                        <div>
                            <div class="input">
                                <div class="label">회사명, 부서명, 입사년월과 퇴사년월, 직급/직책, 담당직무 등을 입력해주세요.</div>
                                <textarea placeholder=""></textarea>
                            </div>
                            <span class="material-symbols-outlined delete">
                                Close
                            </span>
                            <div class="add">
                            	<div>
	                                <span class="material-symbols-outlined">
	                                    add_circle
	                                </span>
	                                추가
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox6">
                        <h3>수상</h3>
                        <div>
                            <div class="input">
                                <div class="label">수상명, 수여기관, 수상연도, 수상내용 등을 입력해주세요.</div>
                                <textarea placeholder=""></textarea>
                            </div>
                            <span class="material-symbols-outlined delete">
                                Close
                            </span>
                            <div class="add">
                            	<div>
	                                <span class="material-symbols-outlined">
	                                    add_circle
	                                </span>
	                                추가
                                </div>
                            </div>                        </div>
                    </div>
                    <div class="resume_box rbox8">
                        <h3>자기소개서</h3>
                        <div>
                            <div class="input">
                                <div class="label">성장과정, 성격의 장단점, 경력사항, 지원동기 및 입사 후 포부 등을 입력해주세요.</div>
                                <textarea placeholder=""></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox9">
                        <h3>포트폴리오</h3>
                        <div>
                            <input type="file">
                            <div class="input">
                                <label>URL</label>
                                <input type="text" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox10">
                        <h3>희망근무조건</h3>
                        <div>
                            <div class="input">
                                <label>희망연봉</label>
                                <input type="text" placeholder="">
                                <span>만원이상</span>
                            </div>
                            <div class="input">
                                <label>희망지역<span class="star">&#42;</span></label>
                                <input type="text" placeholder="">
                            </div>
                            <div class="input">
                                <label>희망지역2</label>
                                <input type="text" placeholder="">
                            </div>
                        </div>
                    </div>
                    <input type="submit" id="resumeReg_btn" value="이력서 저장">
                </form>
            </div>
       </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script>
	// 개발기술스택 tab 처리
	    //함수 호출 반복문
	     for(let i = 0; i < $('.c_btn').length; i++){
	         tabOpen(i); 
	     }
	
	     //함수에 보관
	     function tabOpen(e){
	         $('.c_btn').eq(e).click(function(){
	        	 $(this).removeClass('choose_off').addClass('choose_on');
	             $('.c_btn').not(this).removeClass('choose_on').addClass('choose_off');
	             $('.c_content').eq(e).show();
	             $('.c_content').not( $('.c_content').eq(e)).hide();
	         });
	     }
	
	     
	     
	 // 이력서사진
		 $(document).on("click", "i.del" , function() {
		// 	to remove card
		  $(this).parent().remove();
		// to clear image
		  // $(this).parent().find('.imagePreview').css("background-image","url('')");
		});
		$(function() {
		    $(document).on("change",".uploadFile", function()
		    {
		    		var uploadFile = $(this);
		        var files = !!this.files ? this.files : [];
		        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
		 
		        if (/^image/.test( files[0].type)){ // only image file
		            var reader = new FileReader(); // instance of the FileReader
		            reader.readAsDataURL(files[0]); // read the local file
		 
		            reader.onloadend = function(){ // set image data as background of div
		                //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
		uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url("+this.result+")");
		            }
		        }
		      
		    });
		});
		 
	 

	 //삭제추가..
	 $('.delete').click(function(){
            $(this).parent('li').hide();
     });
	 
	 var input = $("<li><div class='input'><label>자격증명</label><input type='text' placeholder=''></div><span class='material-symbols-outlined delete'>Close</span></li>");
	 $('.add > div').click(function(){
            $(this).parent().siblings('ul').append(input);
     });
	</script>
</body>
</html>