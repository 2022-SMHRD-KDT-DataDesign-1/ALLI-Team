<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.resumeDAO"%>
<%@page import="com.smhrd.model.resumeVO"%>
<%@page import=" java.time.LocalDate"%>
<%@page import=" java.math.BigDecimal"%>
<%@ include file="./include/metatag.jsp" %>  
<link href="./css/dashKO.css" rel="stylesheet">
</head>
<body>
	
	<%
		int resume_num = 253;
		resumeDAO dao = new resumeDAO();
		resumeVO print_vo = dao.resume_Print(resume_num);
		LocalDate now = LocalDate.now();
		int year = now.getYear(); // 현재 년도
		String year_temp = Integer.toString(year).substring(2, 3); // 년도 끝 2자리
		int year_temp1 = Integer.parseInt(year_temp);
		int month = now.getDayOfYear(); // 현재 월
		int date = now.getDayOfMonth(); // 현재 일
		String birth = print_vo.getDate_birth(); // 태어난 년,월,일
		int birth_temp1 = Integer.parseInt(birth.substring(0,2)); // 태어난 년도
		int birth_temp2 = Integer.parseInt(birth.substring(2,4)); // 태어난 월
		int birth_temp3 = Integer.parseInt(birth.substring(4)); // 태어난 일
		int age = 0;
	%>
	
	<%if(birth_temp1 > year_temp1){ %>
			 <% int temp_b = birth_temp1+ 1900;%>
			 <% age = year - temp_b;%>
			 <%if(birth_temp2 * 100 + birth_temp3 > month * 100 + date){ %>
					<%age--; %>
			<%} %>
	<%}else{ %>
			 <% int temp_b = birth_temp1 + 2000; %>
			 <% age = year - temp_b;%>
			 <%if(birth_temp2 * 100 + birth_temp3 > month * 100 + date){ %>
					<%age--; %>
			 <%} %>
	<%} %>

	<%@ include file="./include/header.jsp" %>
	<div id="wrap" class="resumeReg_wrap">
       <div class="sub_top sub_top_a">
            <div>
                <p>구직을 위한, <img src="./img/logo_w.png"></p>
            </div>
       </div>	       
       <div class="resumeReg" id="resumePDF">
            <div class="member_inform">
                <div>개인<br>회원</div>
                <p><%=print_vo.getUser_name()%>님, 반갑습니다.</p>
            </div>
            <div class="sub_box">
                <form>
                    <div class="print_box" id="pbox1">
                        <p>
                        	취미는 백엔드개발인 3년차 웹퍼블리셔입니다.
                        </p>
                    </div>
                    <div class="print_box" id="pbox2">
                        <div class="w_box">
                        	<div>
                        		<img src="./img/R_01.jpg">
                        	</div>
                        	<div>
                        		<p><%=print_vo.getUser_name()%> <span><%=print_vo.getGender()%> <%=print_vo.getDate_birth()%>년 (만 <%=age%>세)</span></p>
                        		<ul>
                        			<li>
                        				<span>연락처</span>
                        				<span>｜</span>
                        				<span><%=print_vo.getUser_tel()%></span>
                        			</li>
                        			<li>
                        				<span>추가연락처</span>
                        				<span>｜</span>
                        				<span>
		                        			<%if(print_vo.getUser_tel2() == null){%>
	                        						<span>-</span>
		                        			<%}else{%>
		                        					<%=print_vo.getUser_tel2() %>
		                        			<%}%>
                        				</span>
	                        			
                        			</li>
                        			<li>
                        				<span>Email</span>
                        				<span>｜</span>
                        				<span><%=print_vo.getUser_email()%></span>
                        			</li>
                        			<li>
                        				<span>주소</span>
                        				<span>｜</span>
                        				<span><%=print_vo.getAddress()%></span>
                        			</li>
                        			<li>
                        				<span>최종학력</span>
                        				<span>｜</span>
                        				<span><%=print_vo.getSchool_division()%><%=print_vo.getGraduation_status()%></span>
                        			</li>
                        			<li>
                        				<span>희망근무지</span>
                        				<span>｜</span>
                        				<span><%=print_vo.getHope_area()%>
                        						  <%if(print_vo.getHope_area2() == null){%>
	                        							<span> </span>
		                        				  <%}else{%>
		                        				  		, <%=print_vo.getHope_area2()%>
		                        			      <%}%>
                        				</span>
                        			</li>
                        			<li>
                        				<span>희망연봉</span>
                        				<span>｜</span>
                        				<span>
                        					<%if(print_vo.getHope_salary() == null){%>
	                        						<span>-</span>
		                        			<%}else{%>
		                        				    <%=print_vo.getHope_salary()%> 만원
		                        			<%}%>
                        				</span>
                        			</li>
                        		</ul>
                        	</div>
                        </div>
                    </div>
                    <div class="print_box" id="pbox3">
                        <h3>개발기술스택</h3>
                        <div class="w_box">
                        	<ul>
                        		<li>
                        			<span>프로그래밍 언어</span>
                       				<span>｜</span>
                       				<div>
                       					<span>Java[상]</span>
                       					<span>Python[상]</span>
                       					<span>JSP[상]</span>
                       					<span>HTML,CSS[상]</span>
                       					<span>servlet[상]</span>
                       				</div>
                        		</li>
                        		<li>
                        			<span>프레임워크</span>
                       				<span>｜</span>
                       				<div>
                       					<span>Spring[상]</span>
                       					<span>Eclipse[상]</span>
                       					<span>Visual Studio Code[상]</span>
                       					<span>Intellij[상]</span>
                       				</div>
                        		</li>
                        		<li>
                        			<span>OS</span>
                       				<span>｜</span>
                       				<div>
                       					<span>Windows[상]</span>

                       				</div>
                        		</li>
                        		<li>
                        			<span>자격증</span>
                       				<span>｜</span>
                       				<div>
                       					<span>정보처리기사</span>
										<span>SQLD</span>
                       				</div>
                        		</li>
                        	</ul>
	                    </div>    
                    </div>
                    <%if(print_vo.getFile_name()!= null && print_vo.getUrl() != null){%>
	                    <div class="print_box" id="pbox4">
	                        <h3>포트폴리오</h3>
	                        <div class="w_box">
	                        	<ul>
	                        		<li>
	                        			<span>URL</span>
	                       				<span>｜</span>
	                       				<span>
	                       					<a href="<%=print_vo.getUrl()%>" class="URL" target="_blank"><%=print_vo.getUrl()%></a>
	                       				</span>
	                        		</li>
	                        		<li>
	                        			<span>파일</span>
	                       				<span>｜</span>
	                       				<span>
	                       					<a href="#" class="download" download><%=print_vo.getFile_name() %> 다운로드</a>
	                       				</span>
	                        		</li>
	                        	</ul>
		                    </div>
		                </div>    
		            <%}else if(print_vo.getFile_name()!= null || print_vo.getUrl() != null){%>
		            		<%if(print_vo.getFile_name() != null){ %>
			                    <div class="print_box" id="pbox4">
			                        <h3>포트폴리오</h3>
			                        <div class="w_box">
			                        	<ul>
			                        		<li>
			                        			<span>파일</span>
			                       				<span>｜</span>
			                       				<span>
			                       					<a href="#" class="download" download><%=print_vo.getFile_name() %> 다운로드</a>
			                       				</span>
			                        		</li>
			                        	</ul>
				                    </div>
				                </div>    
		            		<%}else{%>
			                    <div class="print_box" id="pbox4">
			                        <h3>포트폴리오</h3>
			                        <div class="w_box">
			                        	<ul>
			                        		<li>
	                        					<span>URL</span>
	                       						<span>｜</span>
	                       						<span>
	                       							<a href="<%=print_vo.getUrl()%>" class="URL" target="_blank"><%=print_vo.getUrl()%></a>
	                       						</span>
	                        				</li>
			                        	</ul>
				                    </div>   
				                </div> 
		            		<%}%>
		            <%}%>
                    <div class="print_box" id="pbox5">
                        <h3>기타자격증</h3>
                        <div class="w_box">
                        	<p>- 자동차운전면허</p>
                        	<p>- 웹디자인기능사</p>
                        	<p>- (국가공인)GTQ1급</p>
                        	<p>- 컴퓨터그래픽스운용기능사</p>
	                    </div>    
                    </div>
                    <%if(print_vo.getCareer() != null){%>
	                    <div class="print_box" id="pbox5">
	                        <h3>경력</h3>
	                        <div class="w_box">
	                        	<p>- <%=print_vo.getCareer()%></p>
		                    </div>    
	                    </div>
		            <%}%>
                    <%if(print_vo.getAward() != null){%>
	                    <div class="print_box" id="pbox5">
	                        <h3>수상</h3>
	                        <div class="w_box">
	                        	<p>- <%=print_vo.getAward()%></p>
		                    </div>    
	                    </div>
		            <%}%>
                    <div class="print_box" id="pbox6">
                        <h3>자기소개서</h3>
                        <div class="w_box">
                        	<p>
                               <%=print_vo.getSelf_introduction()%>
                            </p>
	                    </div>    
                    </div>

                    <ul class="print_btns">
                    	<li>
                    		<a href="boardJob.jsp">목록</a>
                    	</li>
                    	<li>
                    		<a href="#" >PDF변환</a>
                    	</li>
                    	<li>
                    		<a href="boardJob.jsp">수정완료</a>
                    	</li>
                    	<li>
                    		<a href="#">삭제</a>
                    	</li>
                    </ul>
                </form>
            </div>
       </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
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

		// 이력서사진
		$(document).on("click", "i.del", function() {
			// 	to remove card
			$(this).parent().remove();
			// to clear image
			// $(this).parent().find('.imagePreview').css("background-image","url('')");
		});
		$(function() {
			$(document).on(
					"change",
					".uploadFile",
					function() {
						var uploadFile = $(this);
						var files = !!this.files ? this.files : [];
						if (!files.length || !window.FileReader)
							return; // no file selected, or no FileReader support

						if (/^image/.test(files[0].type)) { // only image file
							var reader = new FileReader(); // instance of the FileReader
							reader.readAsDataURL(files[0]); // read the local file

							reader.onloadend = function() { // set image data as background of div
								//alert(uploadFile.closest(".upimage").find('.imagePreview').length);
								uploadFile.closest(".imgUp").find(
										'.imagePreview').css(
										"background-image",
										"url(" + this.result + ")");
							}
						}

					});
		});

		//삭제추가..
		$('.delete').click(function() {
			$(this).parent('li').hide();
		});

		var input = $("<li><div class='input'><label>자격증명</label><input type='text' placeholder=''></div><span class='material-symbols-outlined delete'>Close</span></li>");
		$('.add > div').click(function() {
			$(this).parent().siblings('ul').append(input);
		});		
		
	</script>
</body>
</html>