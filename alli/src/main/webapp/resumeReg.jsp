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
                <p><%=login_vo.getUser_name()%>님, 반갑습니다.</p>
            </div>
            <div class="sub_box">
                <h2 class="sub_title">이력서 등록</h2>
                <form action="resumeReqService.do" method="post" id="myForm">
                <!-- 임의 스타일 수정 추후 확인바람 -->
                <p align="right" style="font-size: 12px;margin-bottom: 3px"><span class="star">&#42;</span> 필수 입력 정보입니다.</p>
                    <div class="resume_box rbox1">
                        <input class="mandatory" type="text" placeholder="기업에게 알리는 나의 강점,목표,관심분야 등 이력서의 제목을 적어주세요">
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
                                    <input class="mandatory" type="text" placeholder=<%=login_vo.getUser_name() %> value=<%=login_vo.getUser_name() %> name="user_name" readonly>
                                </div>
                                <div class="input readonly">
                                    <label>생년월일 <span class="star">&#42;</span></label>
                                    <input class="mandatory" type="text" placeholder=<%=login_vo.getDate_birth() %> value=<%=login_vo.getDate_birth() %> name="date_birth" readonly>
                                </div>
                                <div class="input">
                                    <label>성별 <span class="star">&#42;</span></label>
                                    <input class="mandatory" type="text" name="gender">
                                </div>
                                <div class="input readonly">
                                    <label>이메일<span class="star">&#42;</span></label>
                                    <input class="mandatory" type="email" placeholder=<%=login_vo.getUser_email() %> value=<%=login_vo.getUser_email() %> name="user_email" readonly>
                                </div>
                            </div>
                            <div>
                                <div class="input readonly">
                                    <label>연락처 <span class="star">&#42;</span></label>
                                    <input class="mandatory" type="text" placeholder=<%=login_vo.getUser_tel() %> value=<%=login_vo.getUser_tel() %> name="user_tel" readonly>
                                </div>
                                <div class="input">
                                    <label>추가연락처</label>
                                    <input type="text" placeholder="" name="user_tel2">
                                </div>
                                <div class="input">
                                    <label>주소 <span class="star">&#42;</span></label>
                                    <input class="mandatory" type="text" placeholder="Ex:ooo시oo구ooo로" name="address">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="resume_box rbox3">
                        <h3>최종학력</h3>
                        <div>
                            <div class="input">
                                <div class="label">학교구분<span class="star">&#42;</span></div>
                                <select name="school_division" class="mandatory">
                                    <option value="고등학교">고등학교</option>
                                    <option value="대학(2,3년)">대학(2,3년)</option>
                                    <option value="대학(4년)">대학(4년)</option>
                                    <option value="대학원">대학원</option>
                                    <option value="대입검정고시">대입검정고시</option>
                                </select>
                            </div>
                            <div class="input" class="mandatory">
                                <label>학교명 <span class="star">&#42;</span></label>
                                <input type="text" placeholder="" name="school_name">
                            </div>
                            <div class="input">
                                <label>전공</label>
                                <input type="text" placeholder="" name="major">
                            </div>
                            <div class="input">
                                <div class="label">졸업상태<span class="star">&#42;</span></div>
                                <!-- 글자 세로로 출력댐 수정필요 -->
                                <select name="graduation_status" class="mandatory">
                                    <option value="졸업">졸업</option>
                                    <option value="졸업예정">졸업예정</option>
                                    <option value="재학중">재학중</option>
                                    <option value="대입검정고시">대입검정고시</option>
                                </select>
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
                            <div class="add add2">
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
                            <div class="add add3">
                            	<div>
	                                <span class="material-symbols-outlined">
	                                    add_circle
	                                </span>
	                                추가
                                </div>
                            </div>                        
                            </div>
                    </div>
                    <div class="resume_box rbox8">
                        <h3>자기소개서</h3>
                        <div>
                            <div class="input">
                                <div class="label">성장과정, 성격의 장단점, 경력사항, 지원동기 및 입사 후 포부 등을 입력해주세요.</div>
                                <textarea placeholder="" class="mandatory"></textarea>
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
                                <input type="text" placeholder="" class="mandatory">
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
		// 삭제 및 추가 기타자격증
		$('.add > div').click(function() {
			var input = $("<li><div class='input'><label>자격증명</label><input type='text' placeholder=''></div><span class='material-symbols-outlined delete'>Close</span></li>");
			$(this).parent().siblings('ul').append(input);
			input.find('.delete').click(function() {
				$(this).parent('li').remove();
			});
		});

		// 삭제 및 추가 수상
		$(document).ready(function() {
		  // 추가 버튼을 누르면 input 클래스를 가진 div를 추가합니다.
		  $('.add3').click(function() {
		    var newInput = '<div class="input" style="margin-top: 10px"><div class="label">수상명, 수여기관, 수상연도, 수상내용 등을 입력해주세요.</div><textarea placeholder=""></textarea></div><span class="material-symbols-outlined delete">Close</span>';
		    $(this).before(newInput);
		  });
		  
		  // 삭제 버튼을 누르면 해당 input 클래스를 가진 div를 삭제합니다.
 		  $(document).on('click', '.delete', function() {
		    $(this).prev('.input').remove();
		    $(this).remove();
		  });
		});
		
		// 삭제 및 추가 경력
		$(document).ready(function() {
		  // 추가 버튼을 누르면 input 클래스를 가진 div를 추가합니다.
		  $('.add2').click(function() {
		    var newInput = '<div class="input" style="margin-top: 10px"><div class="label">회사명, 부서명, 입사년월과 퇴사년월, 직급/직책, 담당직무 등을 입력해주세요.</div><textarea placeholder=""></textarea></div><span class="material-symbols-outlined delete">Close</span>';
		    $(this).before(newInput);
		  });
		  
		  // 삭제 버튼을 누르면 해당 input 클래스를 가진 div를 삭제합니다.
		  $(document).on('click', '.delete', function() {
		    $(this).prev('.input').remove();
		    $(this).remove();
		  });
		});
		// 대입검정고시
		var schoolDivision = document
				.querySelector('select[name="school_division"]');
		var schoolName = document.querySelector('input[name="school_name"]');
		var major = document.querySelector('input[name="major"]');
		var graduationStatus = document
				.querySelector('select[name="graduation_status"]');

		schoolDivision.addEventListener('change', function() {
			if (schoolDivision.value === '대입검정고시') {
				schoolName.readOnly = true;
				major.readOnly = true;
				graduationStatus.value = '대입검정고시';
				graduationStatus.disabled = true;
			} else {
				schoolName.readOnly = false;
				major.readOnly = false;
				graduationStatus.value = '';
				graduationStatus.disabled = false;
			}
		});
		const form = document.querySelector('#myForm');
		form.addEventListener('submit', function(event) {
			const requiredInputs = document.querySelectorAll('.mandatory');
			let hasError = false;
			requiredInputs.forEach(function(input) {
				if (!input.value) {
					hasError = true;
				}
			});
			if (hasError) {
				event.preventDefault(); // form submit 취소
				alert('모든 필수 입력 항목을 작성해주세요.');
			}
		});
	</script>
</body>
</html>