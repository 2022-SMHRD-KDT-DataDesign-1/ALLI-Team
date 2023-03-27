<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/metatag.jsp" %>  
</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<div id="wrap" class="resumeReg_wrap">
       <div class="sub_top sub_top_a">
            <div>
                <p>구직을 위한, <img src="./img/logo_w.png"></p>
            </div>
       </div>
       <div class="resumeReg">
            <div class="member_inform">
                <div>개인<br>회원</div>
                <p>주부은님, 반갑습니다.</p>
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
                            <input type="file">
                            <div>
                                <div class="input readonly">
                                    <label>이름 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder="주부은" readonly>
                                </div>
                                <div class="input readonly">
                                    <label>생년월일 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder="2023.03.02" readonly>
                                </div>
                                <div class="input readonly">
                                    <label>성별 <span class="star">&#42;</span></label>
                                    <input type="text" placeholder="여자" readonly>
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
                                        <li>프로그래밍 언어</li>
                                        <li>프레임워크</li>
                                        <li>OS</li>
                                        <li>자격증</li>
                                    </ul>
                                    <ul>
                                        <li><!-- 프로그래밍언어 시작 -->
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
                                        <li><!-- 프레임워크 시작 -->
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
                                        <li><!-- OS 시작 -->
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
                                        <li><!-- 자격증 시작 -->
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
                                    </ul>
                                </div>
                                <div class="choose_content">
                                    <p>선택한 항목</p>
                                    <div></div>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="resume_box rbox5">
                        <h3>기타자격증</h3>
                        <div>
                            <div class="input">
                                <label>자격증명</label>
                                <input type="text" placeholder="">
                            </div>
                            <span class="material-symbols-outlined delete">
                                Close
                            </span>
                            <div class="add">
                                <span class="material-symbols-outlined">
                                    add_circle
                                </span>
                                추가
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
                                <span class="material-symbols-outlined">
                                    add_circle
                                </span>
                                추가
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
                                <span class="material-symbols-outlined">
                                    add_circle
                                </span>
                                추가
                            </div>
                        </div>
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

</body>
</html>