<%@page import="com.smhrd.model.developDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.developVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./include/metatag.jsp"%>
</head>
<body>
	<%@ include file="./include/header.jsp"%>
	<%
	// session값 가져오기
	cmpVO cmpLoginVO = (cmpVO) session.getAttribute("cmpLogin_vo");

	// 개발T 가져오기
	developDAO dao = new developDAO();
	List<developVO> list = dao.selectDevelopList();
	 if(list != null) {
			System.out.println("개발T 성공");
			// 주의. el문법을 사용하기 위해서는 값을 가져와서 'set'해야한다
				request.setAttribute("list", list);
				//session.setAttribute("list", list);
	} else {

		System.out.println("개발T 실패");
	}
	%>
	<div id="wrap" class="boardEmp_wrap">
		<div class="sub_top sub_top_a">
			<div>
				<p>
					채용을 위한, <img src="./img/logo_w.png">
				</p>
			</div>
		</div>
		<div class="resumeReg">
			<div class="member_inform">
				<div>
					기업<br>회원
				</div>
				<%if(cmpLoginVO != null){ %>
				<p><%=cmpLoginVO.getCmp_name()%>님, 반갑습니다.
				</p>
				<%}%>
			</div>
			<div class="sub_box">
				<h2 class="sub_title">인재 PICK</h2>
				<p class="sub_title_text">기업이 원하는 인재를 '즐겨찾기 기능'으로 PICK하세요. 아래
					게시판에서 관리가 가능합니다. (단, 구직자가 이력서를 비공개 처리한 경우, 자동으로 숨김처리됩니다.)</p>
				<div class="boardJob02">
					<ul>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="board_list">
					<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
					<a href="#">5</a> <a href="#" class="end">></a>
				</div>
			</div>
			<div class="sub_box" id="filter">
				<h2 class="sub_title">인재 필터링</h2>
				<p class="sub_title_text">기업이 원하는 인재를 '필터링 기능'으로 만나보세요. 회사에서
					사용하는 프로그래밍 언어, 프레임워크, 필수자격증 뿐 아니라 학력, 경력도 선택이 가능합니다.</p>
				<div class="resume_box rbox4">
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
									<li class="c_btn">
										<div>학력</div>
										<div></div>
									</li>
									<li class="c_btn">
										<div>경력</div>
										<div></div>
									</li>
								</ul>
								<ul>
									<li class="c_content">
										<!-- 프로그래밍언어 시작 -->
										<ul>
											<c:forEach items="${list}" var="item">
												<li>
													<p>${item.languages}</p>
													<div>
														<input type="checkbox">
													</div>
												</li>
											</c:forEach> 
										</ul>
									</li>
									<li class="c_content">
										<!-- 프레임워크 시작 -->
										<ul>
											<c:forEach items="${list}" var="item">
												<li>
													<p>${item.frameworks}</p>
													<div>
														<input type="checkbox">
													</div>
												</li>
											</c:forEach> 
										</ul>
									</li>
									<li class="c_content">
										<!-- OS 시작 -->
										<ul>
											<c:forEach items="${list}" var="item">
												<li>
													<p>${item.oss}</p>
													<div>
														<input type="checkbox">
													</div>
												</li>
											</c:forEach> 
										</ul>
									</li>
									<li class="c_content">
										<!-- 자격증 시작 -->
										<ul>
											<c:forEach items="${list}" var="item">
												<li>
													<p>${item.licenses}</p>
													<div>
														<input type="checkbox">
													</div>
												</li>
											</c:forEach> 
										</ul>
									</li>
								</ul>
							</div>
							<div class="choose_content">
								<p>선택한 항목</p>
								<div>
									<p>
										JAVA <span class="material-symbols-outlined delete_choose">
											Close </span>
									</p>
									<p>
										C <span class="material-symbols-outlined delete_choose">
											Close </span>
									</p>
									<p>
										SPRING <span class="material-symbols-outlined delete_choose">
											Close </span>
									</p>
									<p>
										TypeScript <span
											class="material-symbols-outlined delete_choose"> Close
										</span>
									</p>
								</div>
								<a href="#">선택한 조건<br>검색하기
								</a>
							</div>
						</section>
					</div>
				</div>
				<div class="boardJob02">
					<ul>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star0.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star0.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>
						<li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle </span>
									<!-- <img src=""> -->
								</div>
								<a href="#"> <img src="./img/star1.png">
								</a>
								<div>
									<p>
										<span>고유빈</span><span>(남,26세)</span>
									</p>
									<p>신입</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br> 스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br> 희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
							</div>
						</li>

					</ul>
				</div>
				<div class="board_list">
					<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
					<a href="#">5</a> <a href="#" class="end">></a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="./include/footer.jsp"%>
	<script>
		// 개발기술스택 tab 처리
		//함수 호출 반복문
		for (let i = 0; i < $('.c_btn').length; i++) {
			tabOpen(i);
		}

		//함수에 보관
		function tabOpen(e) {
			$('.c_btn').eq(e)
					.click(
							function() {
								$(this).removeClass('choose_off').addClass(
										'choose_on');
								$('.c_btn').not(this).removeClass('choose_on')
										.addClass('choose_off');
								$('.c_content').eq(e).show();
								$('.c_content').not($('.c_content').eq(e))
										.hide();
							});
		}
	</script>
</body>
</html>