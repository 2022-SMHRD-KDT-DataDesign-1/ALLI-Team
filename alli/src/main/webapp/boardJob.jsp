<%@page import="com.smhrd.model.cmpRecomVO"%>
<%@page import="com.smhrd.model.cmpRecomDAO"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="com.smhrd.model.OsDAO"%>
<%@page import="com.smhrd.model.FrameworkDAO"%>
<%@page import="com.smhrd.model.LanguageDAO"%>
<%@page import="com.smhrd.model.LanguageVO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.resumeDAO"%>
<%@page import="com.smhrd.model.resumeVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./include/metatag.jsp" %>  
</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<!-- 생년월일 나이 변환 스크립틀릿 -->
	<%  
		// 사용자의 생년월일 정보를 세션의 login_vo에서 가져옴
		String birth = (String)login_vo.getDate_birth();
		System.out.println(birth); // ex) 940911
		// 현재 날짜를 초기화
		Date date = new Date(); // 날짜형 데이터임
		System.out.println(date);
		SimpleDateFormat format = new SimpleDateFormat("yymmdd"); // yymmdd형으로 전환
		String str = format.format(date); // yymmdd형의 문자형으로 전환
		System.out.println(str);
		String birth_y = birth.substring(0,2); // 문자형 앞의 두글자만 잘라서 연도 추출
		System.out.println(birth_y);
		String date_y = str.substring(0,2); // 문자형 앞의 두글자만 잘라서 연도 추출
		System.out.println(date_y);
		int birth_y_int = Integer.parseInt(birth_y); // 문자열을 정수형으로 바꾼다.
		int date_y_int = Integer.parseInt(date_y); // 문자열을 정수형으로 바꾼다.
		
		// 생년월일의 연도가 현재 연도보다 작으면 2000을 더하고 크면 1900을 더해서
		// 생년월일 연도 추출
		if(birth_y_int>date_y_int){
			birth_y_int += 1900;
		}else{
			birth_y_int += 2000;
		};
		
		date_y_int += 2000 ; // 2000을 더해서 2023의 형태로
		System.out.println(date_y_int);
		System.out.println(birth_y_int);
		int age = date_y_int - birth_y_int + 1 ; // 현재 연도에서 생년 연도를 빼서 나이 계산
		System.out.println(age);
	%>
	
	<!-- 내 아이디의 이력서 리스트 받아오는 스크립클릿 -->
	<% 
		resumeDAO dao = new resumeDAO();
		List<resumeVO> resumes = dao.selectResumeList(login_vo.getUser_id());
		System.out.println(resumes.size());
		BigDecimal resumeNum = new BigDecimal(0);
	%>
	
	<!-- 언어 가져오는 스크립틀릿 -->
	<%
		LanguageVO lanVO = new LanguageVO();
		LanguageDAO lanDAO = new LanguageDAO();
		List<String> lanList = lanDAO.selectUserLanguage(login_vo.getUser_id());
		Set<String> lanList2 = new HashSet<String>(lanList);
		List<String> lanList3 = new ArrayList<String>(lanList2);
		System.out.println(lanList3);
	%>
	
	<!-- 프레임워크 가져오는 스크립틀릿 -->
	<%
		FrameworkDAO frameDAO = new FrameworkDAO();
		List<String> frameList = frameDAO.selectUserFrameWork(login_vo.getUser_id());
		Set<String> frameList2 = new HashSet<String>(frameList);
		List<String> frameList3 = new ArrayList<String>(frameList2);
		System.out.println(frameList3);
	%>
	
	<!-- OS 가져오는 스크립틀릿 -->
	<%
		OsDAO osDAO = new OsDAO();
		List<String> osList = osDAO.selectUserOS(login_vo.getUser_id());
		Set<String> osList2 = new HashSet<String>(osList);
		List<String> osList3 = new ArrayList<String>(osList2);
		System.out.println(osList3);
	%>
	
	<!-- 추천 기업정보 가져오는 스크립틀릿 -->
	<%
		cmpRecomDAO cmpRecomDAO = new cmpRecomDAO();
		List<cmpRecomVO> cmpRecomList = cmpRecomDAO.selectCmpInfo();
		ArrayList<String[]> cmpRecomList1 = new ArrayList<String[]>();
		for(int i = 0 ; i < cmpRecomList.size() ; i++){
			cmpRecomList1.add(cmpRecomList.get(i).getStac().replace(" ","").split(",")); // 기술스택 리스트
		};
		System.out.println(cmpRecomList.size());
		System.out.println(cmpRecomList1.size());
		System.out.println(cmpRecomList1.get(1).length);
		ArrayList<cmpRecomVO> cmpRecomList2 = new ArrayList<cmpRecomVO>();
		for(int i = 0 ; i < lanList3.size() ; i++){
			for(int j = 0 ; j < cmpRecomList.size() ; j++){
				for(int z = 0 ; z < cmpRecomList1.get(j).length ; z++){
					if(lanList3.get(i).equals(cmpRecomList1.get(j)[z])){
						cmpRecomList2.add(cmpRecomList.get(j));
					}
				}
			}
		}
	%>

	
    <input type="hidden" value="<%= resumes.size() %>" id="resumesSize">
    <input type="hidden" value="<%= lanList %>" id="lanList">
    <input type="hidden" value="<%= frameList %>" id="frameList">
    <input type="hidden" value="<%= osList %>" id="osList">
	
	<div id="wrap" class="boardJob_wrap">
       <div class="sub_top sub_top_a">
            <div>
                <p>구직을 위한, <img src="./img/logo_w.png"></p>
            </div>
       </div>	       
       <div class="resumeReg">
            <div class="member_inform">
                <div>개인<br>회원</div>
                <p><%=login_vo.getUser_name() %>님, 반갑습니다.</p>
            </div>
            
            <!-- 기업추천 시작 -->
            <div class="sub_box">
                <h2 class="sub_title">맞춤기업 추천 서비스</h2>
                <p class="sub_title_text">이력서에 기재한 기술스택을 바탕으로 맞춤기업을 추천해드립니다. 나와 맞는 기업을 확인해보세요. 공개이력서 기준으로 추천되며, 이력서가 없거나 모두 비공개하는 경우 추천되지 않습니다.</p>
 				<div class="boardJob01">
	                <div class="chooseJob">
	                    <ul>
	                        <li class="c_btn" id="pro_lan">
	                        	<div id="prolanDiv">프로그래밍 언어</div>
	                        	<div></div>
	                        </li>
	                        <li class="c_btn" id="frameWork">
	                        	<div id="frameWorkDiv">프레임워크</div>
	                        	<div></div>
	                        </li>
	                        <li class="c_btn" id="OS">
	                        	<div id="OSDiv">OS</div>
	                        	<div></div>
	                        </li>
	                    </ul>
	                    <ul>
	                    	<!-- 프로그래밍언어 시작 -->
	                        <li class="c_content" id="prolan_li">
	                            <ul>
	                            	<%for(int j = 0 ; j < lanList3.size() ; j++){ %>
	                            	<li class="chooseBtn">
	                            		<input type="button" value="<%=lanList3.get(j) %>" id="<%=lanList3.get(j) %>">
	                            	</li>
	                            	<%} %>
	                            </ul>
	                            <div class="chooseCon">
		                            <ul>
		                            	<%for(int i = 0 ; i < 3 ; i++){ %>
		                            	<li>
		                            		<div><%=i+1 %></div>
					                           		<div>(주)페픽</div>
					                           		<div>
					                           			<p>웹 개발자 경력 채용</p>
					                           			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
					                           			<p>
					                           				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
					                           				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
					                           			</p>
					                           		</div>
					                           		<div>
					                           			<a href="#">상세보기</a>
					                           		</div>
		                            	<%} %>
		                            	</li>
		                            </ul>
	                        	</div>
	                        </li>
	                        <!-- 프레임워크 시작 -->
	                        <li class="c_content" id="frameWork_li">
	                            <ul>
	                            	<%for(int j = 0 ; j < frameList3.size() ; j++){ %>
	                            	<li class="chooseBtn">
	                            		<input type="button" value="<%=frameList3.get(j) %>" id="<%=frameList3.get(j)%>">
	                            	</li>
	                            	<%} %>
	                            	<!-- <li class="chooseBtn">
	                            		<input type="button" value="Eclipse" id="Eclipse">
	                            	</li> -->
	                            </ul>
	                            <div class="chooseCon">
		                            <ul id="Spring_ul">
		                            	<li>
		                            		<div>1</div>
		                            		<div>(주)페픽</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>2</div>
		                            		<div>(주)페픽</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>3</div>
		                            		<div>(주)페픽</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            </ul>
		                            <ul id="Eclipse_ul">
		                            	<li>
		                            		<div>1</div>
		                            		<div>(주)파이썬</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>2</div>
		                            		<div>(주)파이썬</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>3</div>
		                            		<div>(주)파이썬</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            </ul>
	                        	</div>
	                        </li>
	                        <!-- OS 시작 -->
	                        <li class="c_content" id="OS_li">
	                            <ul>
	                            	<%for(int j = 0 ; j < osList3.size() ; j++){ %>
	                            	<li class="chooseBtn">
	                            		<input type="button" value="<%=osList3.get(j) %>" id="<%=osList3.get(j)%>">
	                            	</li>
	                            	<%} %>
	                            	<!-- <li class="chooseBtn">
	                            		<input type="button" value="Mac" id="Mac">
	                            	</li> -->
	                            </ul>
	                            <div class="chooseCon">
		                            <ul id="Window_ul">
		                            	<li>
		                            		<div>1</div>
		                            		<div>(주)페픽</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>2</div>
		                            		<div>(주)페픽</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>3</div>
		                            		<div>(주)페픽</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            </ul>
		                            <ul id="Mac_ul">
		                            	<li>
		                            		<div>1</div>
		                            		<div>(주)파이썬</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>2</div>
		                            		<div>(주)파이썬</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            	<li>
		                            		<div>3</div>
		                            		<div>(주)파이썬</div>
		                            		<div>
		                            			<p>웹 개발자 경력 채용</p>
		                            			<p>경력1년↑ ｜ 학력무관 ｜ 광주 서구 ｜ 정규직</p>
		                            			<p>
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            				정보처리기사,전자정부프레임워크 개발,전자정부프레임워크 JAVA개발,ISP,NI,SI,네트워크,
		                            			</p>
		                            		</div>
		                            		<div>
		                            			<a href="#">상세보기</a>
		                            		</div>
		                            	</li>
		                            </ul>
	                        	</div>
	                        </li>
	                    </ul>
	                </div>
				</div>
            </div>
            
            
            
            <!-- 이력서 시작 -->
            <div class="sub_box">
                <h2 class="sub_title">구직자를 위한 '특별한'IT전문이력서</h2>
                <p class="sub_title_text">프로그래밍 언어부터 프레임워크, OS .. 개발관련 자격증까지. 나의 기술스택을 한장으로 깔끔하게 정리합니다. 1차 서류통과의 확률을 높여주는 나만의 IT전문이력서!</p>
 				<a href="resumeReg.jsp" id="resumeReg_btn">이력서 등록</a>
 				<div class="boardJob02">
					<ul>
						<%if(resumes.size()==0){ %>
							<%System.out.println("등록된 이력서 없음"); %>
						<%}else{ %>
							<%for(int i = 0 ; i<resumes.size();i++){ %>

							<% resumeNum = resumes.get(i).getResume_num();%>

							<!-- <li class="open"> -->
							
						<%-- 	<%
							if(resumes.get(i).getOn_off() != null){
								if(resumes.get(i).getOn_off().equals("on")){
									out.print("<li class='open'>");
								}else{
									out.print("<li>");
								}
							}else{
								out.print("<li>");
							}%> --%>
							
							<%if(resumes.get(i).getOn_off() != null){ %>
								<% if(resumes.get(i).getOn_off().equals("on")){%>
									<li class='open'>
								<%}else{ %>
									<li>
								<%} %>
							<%}else{ %>
								<li>
							<%} %>
								<div class="boardJob_listTop">
									<div>
										<%if(resumes.get(i).getPicture()==null){ %>
										<span style="cursor: pointer;"  onclick="location.href='resumePrint.jsp?resume_num=<%=resumes.get(i).getResume_num() %>'"  class="material-symbols-outlined person_icon">
											account_circle
										</span>
										<%}else { %>
										<img style="cursor: pointer;"  onclick="location.href='resumePrint.jsp?resume_num=<%=resumes.get(i).getResume_num() %>'" src="<%= resumes.get(i).getPicture() %>">
										<%} %>
									</div>
									<a href="javascript:void(0);" class="optionBtn"><img src="./img/boardJob_icon.png"></a>
									<div>
										<p>
											<span><%= login_vo.getUser_name() %></span><span>(<%=resumes.get(i).getGender() %>,<%=age %>세)</span>
										</p>
										<p>
											<%=resumes.get(i).getCareer_date() %>
										</p>
									</div>
								</div>
								<div class="boardJob_listBtm">
									<h3><%=resumes.get(i).getResume_title() %></h3>
									<p>
										<%=resumes.get(i).getSchool_name() %> 
										<%if(resumes.get(i).getSchool_division().equals("고등학교")){ %>
										<%}else if(resumes.get(i).getSchool_division().equals("대학(2,3년)")){ %>
											(2,3년)
										<%}else if(resumes.get(i).getSchool_division().equals("대학(4년)")){%>
											(4년)
										<%}else if(resumes.get(i).getSchool_division().equals("대학원")){ %>
											대학원
										<%}else if(resumes.get(i).getSchool_division().equals("대입검정고시")){ %>
											대입검정고시(검정고시)
										<%} %><br>
										<%=resumes.get(i).getMajor() %> 
										<%if(resumes.get(i).getGraduation_status()==null){ %>
										
										<%}else{ %>
										<%=resumes.get(i).getGraduation_status() %>
										<%} %>
									</p>
									<p>
										희망지역:<%=resumes.get(i).getHope_area() %><br>
										<%if(resumes.get(i).getHope_salary() == null){ %>
										희망연봉:
										<%}else{ %>
										희망연봉:<%=resumes.get(i).getHope_salary() %>
										<%} %>
									</p>
									<p>
									<%for(int j = 0 ; j < lanList.size() ; j++){ %>
										<%if(resumes.get(i).getResume_num().equals(resumes.get(j).getResume_num())){ %>
											<span><%=lanList.get(j) %></span>
										<%} %>
									<%} %>
									
									<%for(int j = 0 ; j < frameList.size() ; j++){ %>
										<%if(resumes.get(i).getResume_num().equals(resumes.get(j).getResume_num())){ %>
											<span><%=frameList.get(j) %></span>
										<%} %>
									<%} %>
									
									<%for(int j = 0 ; j < osList.size() ; j++){ %>
										<%if(resumes.get(i).getResume_num().equals(resumes.get(j).getResume_num())){ %>
											<span><%=osList.get(j) %></span>
										<%} %>
									<%} %>
									</p>
									<p class="boardJob_date"><%=resumes.get(i).getCre_date() %></p>
								</div>
								
								<div class="boardJob_add" id="option">
									<a href="javascript:void(0);" class="closeBtn">
										<span class="material-symbols-outlined delete">
			                                Close
			                            </span>
									</a>
									<ul>
										<%if(resumes.get(i).getOn_off() != null){ %>
											<%if(resumes.get(i).getOn_off().equals("on")){ %>
											<!-- 공개로 되어있을 때 -->
												<li class="closeBoard"><a href="CloseUpdateService.do?resume_num=<%=resumeNum%>">공개이력서 해제</a></li>
											<%}else{ %>
											<!-- 비공개일 때 -->
												<li class="openBoard"><a href="OpenUpdateService.do?resume_num=<%=resumeNum%>&user_id=<%=login_vo.getUser_id() %>">공개이력서로 설정</a></li>
											<%} %>
										<%}else{ %>
											<li class="openBoard"><a href="OpenUpdateService.do?resume_num=<%=resumeNum%>&user_id=<%=login_vo.getUser_id() %>">공개이력서로 설정</a></li>
										<%} %>
										<%-- <li class="openBoard"><a href="OpenUpdateService.do?resume_num=<%=resumeNum%>&user_id=<%=login_vo.getUser_id() %>">공개이력서로 설정</a></li> --%>
										<%-- <li class="closeBoard"><a href="CloseUpdateService.do?resume_num=<%=resumeNum%>">공개이력서 해제</a></li> --%>
										<li><a href="resumeModify.jsp?resume_num=<%=resumeNum %>">수정</a></li>
										<li class="resumeDelBtn"><a href="resumeDeleteService.do?delIndex=<%=resumeNum%>">삭제</a></li>
									</ul>
								</div>
							</li>
							<%} %>
						<%} %>
						<%-- <li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle
									</span>
									<!-- <img src=""> -->
								</div>
								<a href="#" class="optionBtn"><img src="./img/boardJob_icon.png"></a>
								<div>
									<p>
										<span><%=login_vo.getUser_name() %></span><span>(남,<%=age %>세)</span>
									</p>
									<p>
										신입
									</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br>
									스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br>
									희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
								<p class="boardJob_date">최종수정일 : 23.04.01</p>
							</div>
							<div class="boardJob_add" id="option">
								<a href="#" class="closeBtn">
									<span class="material-symbols-outlined delete">
		                                Close
		                            </span>
								</a>
								<ul>
									<li class="openBoard"><a href="#">공개이력서로 설정</a></li>
									<li class="closeBoard"><a href="#">공개이력서 해제</a></li>
									<li><a href="#">PDF 다운로드</a></li>
									<li><a href="#">수정</a></li>
									<li><a href="#">삭제</a></li>
								</ul>
							</div>
						</li> --%>
						<%-- <li>
							<div class="boardJob_listTop">
								<div>
									<span class="material-symbols-outlined person_icon">
										account_circle
									</span>
									<!-- <img src=""> -->
								</div>
								<a href="#" class="optionBtn"><img src="./img/boardJob_icon.png"></a>
								<div>
									<p>
										<span><%=login_vo.getUser_name() %></span><span>(남,<%=age %>세)</span>
									</p>
									<p>
										신입
									</p>
								</div>
							</div>
							<div class="boardJob_listBtm">
								<h3>뽑지않으면 후회할겁니다</h3>
								<p>
									서울대학교(4년)<br>
									스킨스쿠버과 졸업
								</p>
								<p>
									희망지역:서울<br>
									희망연봉:100억
								</p>
								<p>
									<span>JAVA</span><span>JSP</span><span>HTML</span><span>CSS</span><span>기타</span><span>등등</span>
								</p>
								<p class="boardJob_date">최종수정일 : 23.04.01</p>
							</div>
							<div class="boardJob_add" id="option">
								<a href="#" class="closeBtn">
									<span class="material-symbols-outlined delete">
		                                Close
		                            </span>
								</a>
								<ul>
									<li class="openBoard"><a href="#">공개이력서로 설정</a></li>
									<li class="closeBoard"><a href="#">공개이력서 해제</a></li>
									<li><a href="#">PDF 다운로드</a></li>
									<li><a href="#">수정</a></li>
									<li><a href="#">삭제</a></li>
								</ul>
							</div>
						</li> --%>
					</ul>
				</div>
            </div>
       </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	
	<!-- 맞춤기업 영역 스크립트 -->
	<script>
		let lanList = $('#lanList').val();
		console.log('lanList : '+lanList);
		let lanList1 = lanList.substr(1,lanList.length-2);
		console.log('lanList1 : '+lanList1);
		let lanList2 = lanList1.split(', ');
		console.log('lanList2 : '+lanList2);
		
		let frameList = $('#frameList').val();
		console.log('frameList : '+frameList);
		let frameList1 = frameList.substr(1,frameList.length-2);
		console.log('frameList1 : '+frameList1);
		let frameList2 = frameList1.split(', ');
		console.log('frameList2 : '+frameList2);
		
		let osList = $('#osList').val();
		console.log('osList : '+osList);
		let osList1 = osList.substr(1,osList.length-2);
		console.log('osList1 : '+osList1);
		let osList2 = osList1.split(', ');
		console.log('osList2 : '+osList2);
		
		let pro_lan = document.getElementById('pro_lan')
		let frameWork = document.getElementById('frameWork')
		let OS = document.getElementById('OS')
		
		let prolan_li = document.getElementById('prolan_li')
		let frameWork_li = document.getElementById('frameWork_li')
		let OS_li = document.getElementById('OS_li')
		
		let prolanDiv = document.getElementById('prolanDiv')
		let frameWorkDiv = document.getElementById('frameWorkDiv')
		let OSDiv = document.getElementById('OSDiv')
		
		/* let Java_ul = document.getElementById('Java_ul')
		let Python_ul = document.getElementById('Python_ul') */
		
		/* let Spring_ul = document.getElementById('Spring_ul')
		let Eclipse_ul = document.getElementById('Eclipse_ul') */
		
		/* let Window_ul = document.getElementById('Window_ul')
		let Mac_ul = document.getElementById('Mac_ul') */
		
		/* let SpringBtn = document.getElementById('Spring')
		let EclipseBtn = document.getElementById('Eclipse') */
		
	/* 	let WindowBtn = document.getElementById('Window')
		let MacBtn = document.getElementById('Mac') */
		
		/* 프로그래밍 언어 영역 */
		
		/* 측면 탭 */
		document.getElementById('pro_lan').onclick=()=>{
			console.log('pro_lan_Ck')
			prolan_li.style.display ='block'
			frameWork_li.style.display='none'
			OS_li.style.display = 'none'
			
			pro_lan.classList.add('choose_on')
			pro_lan.classList.remove('choose_off')
				
			frameWork.classList.add('choose_off')
			frameWork.classList.remove('choose_on')
				
			OS.classList.add('choose_off')
			OS.classList.remove('choose_on')
			
		}
		
		/* 상단 탭 */
		try {
			for(let i = 0 ; i < lanList2.length ; i++){
				 document.getElementById(lanList2[i]).onclick=()=>{
					console.log(lanList2[i]+'Ck')
					for(let j = 0 ; j < lanList2.length ; j ++) {
						document.getElementById(lanList2[j]).style.border ='1px solid #d3d3d3'
						document.getElementById(lanList2[j]).style.background ='#fff'
					}
					document.getElementById(lanList2[i]).style.border = '2px solid #6c00ff'
					document.getElementById(lanList2[i]).style.background = '#f5f1fb'
				}
			}
			
		} catch(err){
			console.log("프로그래밍 언어 없음")
		}
		
		
		/* 프레임워크 영역 */
		
		/* 측면 탭 */
		document.getElementById('frameWork').onclick=()=>{
			console.log('frameWork_Ck')
			prolan_li.style.display ='none'
			frameWork_li.style.display='block'
			OS_li.style.display = 'none'
			
			pro_lan.classList.add('choose_off')
			pro_lan.classList.remove('choose_on')
			
			frameWork.classList.add('choose_on')
			frameWork.classList.remove('choose_off')
			
			OS.classList.add('choose_off')
			OS.classList.remove('choose_on')
		}
		
		/* 상단 탭 */
		try {
			for(let i = 0 ; i < frameList2.length ; i++){
				 document.getElementById(frameList2[i]).onclick=()=>{
					console.log(frameList2[i]+'Ck')
					for(let j = 0 ; j < frameList2.length ; j ++) {
						document.getElementById(frameList2[j]).style.border ='1px solid #d3d3d3'
						document.getElementById(frameList2[j]).style.background ='#fff'
					}
					document.getElementById(frameList2[i]).style.border = '2px solid #6c00ff'
					document.getElementById(frameList2[i]).style.background = '#f5f1fb'
				}
			}
			
		} catch(err){
			console.log("프레임워크 없음")
		}
		
		/* OS 영역 */
		
		/* 측면 탭 */
		document.getElementById('OS').onclick=()=>{
			console.log('OS_Ck')
			prolan_li.style.display ='none'
			frameWork_li.style.display='none'
			OS_li.style.display = 'block'
			
			pro_lan.classList.add('choose_off')
			pro_lan.classList.remove('choose_on')
					
			frameWork.classList.add('choose_off')
			frameWork.classList.remove('choose_on')
					
			OS.classList.add('choose_on')
			OS.classList.remove('choose_off')
		}
		
		/* 상단 탭 */
		try{
			for(let i = 0 ; i < osList2.length ; i++){
				 document.getElementById(osList2[i]).onclick=()=>{
					console.log(osList2[i]+'Ck')
					for(let j = 0 ; j < osList2.length ; j ++) {
						document.getElementById(osList2[j]).style.border ='1px solid #d3d3d3'
						document.getElementById(osList2[j]).style.background ='#fff'
					}
					document.getElementById(osList2[i]).style.border = '2px solid #6c00ff'
					document.getElementById(osList2[i]).style.background = '#f5f1fb'
				}
			}
			
		} catch(err){
			console.log("OS 없음")
		}
		
		</script>
	
	<!-- 이력서 스크립트 -->
	<script>
		
		var resumesSize = $('#resumesSize').val();
		console.log("resumesSize : " + resumesSize);
		let delIndex = null;
	
	
		let optionBtn = document.getElementsByClassName('optionBtn')
		let boardJob_add = document.getElementsByClassName('boardJob_add')
		let closeBtn = document.getElementsByClassName('closeBtn')
		let openBoard = document.getElementsByClassName('openBoard')
		let closeBoard = document.getElementsByClassName('closeBoard')
		let boardJob_listTop = document.getElementsByClassName('boardJob_listTop')
		let boardJob_li = document.querySelectorAll('div.boardJob02>ul>li')
		let resumeDelBtn = document.getElementsByClassName('resumeDelBtn')
		
		// 더보기 창 꺼두는 for문
		for(let i = 0 ; i < resumesSize ; i++){
			boardJob_add[i].style.display = 'none'
		}
		/* boardJob_add[1].style.display = 'none'
		boardJob_add[2].style.display = 'none' */
		
		/* if(closeBoard[0]).style.display.equals('block')){
			closeBoard[1]).style.display = 'none'
			closeBoard[2]).style.display = 'none'
		}else if(closeBoard[1]).style.display.equals('block')){
			closeBoard[0]).style.display = 'none'
			closeBoard[2]).style.display = 'none'
		}else if(closeBoard[2]).style.display.equals('block')){
			closeBoard[0]).style.display = 'none'
			closeBoard[1]).style.display = 'none'
		} */
		
		
		// 공개 이력서 해제 꺼두는 for문
		/* for(let i = 0 ; i < resumesSize ; i++){
			closeBoard[i].style.display='none'
		} */
		/* closeBoard[1].style.display='none'
		closeBoard[2].style.display='none' */
		
		// 더보기 닫기 클릭 시 닫히는 for문
		for(let i = 0 ; i < resumesSize ; i++){
			closeBtn[i].onclick=()=>{
				boardJob_add[i].style.display= 'none'
			}
		}
		/* closeBtn[1].onclick=()=>{
			boardJob_add[1].style.display= 'none'
		}
		closeBtn[2].onclick=()=>{
			boardJob_add[2].style.display= 'none'
		} */
		
		
		// 더보기 버튼 클릭시 더보기 창이 열리고 다른 곳에 열려 있던 더보기 창은 닫히는 for문
		for(let i = 0 ; i < resumesSize ; i++){
			optionBtn[i].onclick=()=>{
				console.log("optionBtn["+i+"] click")
				boardJob_add[i].style.display = 'block'
				for(let j = 0 ; j < resumesSize ; j++){
					if(j!=i){
					boardJob_add[j].style.display='none'
					}
				}
			}
			/* boardJob_add[1].style.display = 'none'
			boardJob_add[2].style.display = 'none' */
		}
		
		/* optionBtn[1].onclick=()=>{
			console.log("optionBtn[1] click")
			boardJob_add[1].style.display = 'block'
			boardJob_add[0].style.display = 'none'
			boardJob_add[2].style.display = 'none'
		}
		
		optionBtn[2].onclick=()=>{
			console.log("optionBtn[2] click")
			boardJob_add[1].style.display = 'none'
			boardJob_add[0].style.display = 'none'
			boardJob_add[2].style.display = 'block'
		} */
		
		
		// 공개이력서 설정 클릭 시 해당 이력서의 테두리가 바뀌고 공개 이력서 설정 글씨가 공개 이력서 해제로
		// 다른 이력서 테두리가 바뀌고 공개이력서해제로 되어있던게 공개이력서 설정으로 바뀌는 for문
		//for(let i = 0 ; i < resumesSize ; i++){
			//openBoard[i].onclick=()=>{
				//console.log('openBoard click')
				//console.log(boardJob_li[i])
				//boardJob_li[i].classList.add('open')
				/* boardJob_li[1].classList.remove('open')
				boardJob_li[2].classList.remove('open') */
				//openBoard[i].style.display = 'none'
				/* openBoard[1].style.display = 'block'
				openBoard[2].style.display = 'block' */
				//closeBoard[i].style.display = 'block'
				/* closeBoard[1].style.display = 'none'
				closeBoard[2].style.display = 'none' */
				
			//	for(let j = 0 ; j < resumesSize ; j++){
					//if(j!=i){
						//boardJob_li[j].classList.remove('open')
						//openBoard[j].style.display = 'block'
						//closeBoard[j].style.display = 'none'
					//}
				//}
			//}
		//}
		
		// 공개 이력서 해제 클릭시 해당 공개 이력서의 테두리가 바뀌고 공개이력서해제 글씨가
		// 공개 이력서 설정으로 바뀌는 for문
		/* for(let i = 0 ; i < resumesSize ; i++){
			closeBoard[i].onclick=()=>{
				console.log('openBoard click')
				console.log(boardJob_li[i])
				boardJob_li[i].classList.remove('open')
				openBoard[i].style.display = 'block'
				closeBoard[i].style.display = 'none'
			}
		} */
		
		/* openBoard[1].onclick=()=>{
			console.log('openBoard click')
			console.log(boardJob_li[0])
			boardJob_li[1].classList.add('open')
			boardJob_li[0].classList.remove('open')
			boardJob_li[2].classList.remove('open')
			openBoard[1].style.display = 'none'
			openBoard[0].style.display = 'block'
			openBoard[2].style.display = 'block'
			closeBoard[1].style.display = 'block'
			closeBoard[0].style.display = 'none'
			closeBoard[2].style.display = 'none'
		}
		
		closeBoard[1].onclick=()=>{
			console.log('openBoard click')
			console.log(boardJob_li[1])
			boardJob_li[1].classList.remove('open')
			openBoard[1].style.display = 'block'
			closeBoard[1].style.display = 'none'
		}
		
		openBoard[2].onclick=()=>{
			console.log('openBoard click')
			console.log(boardJob_li[0])
			boardJob_li[2].classList.add('open')
			boardJob_li[0].classList.remove('open')
			boardJob_li[1].classList.remove('open')
			openBoard[2].style.display = 'none'
			openBoard[0].style.display = 'block'
			openBoard[1].style.display = 'block'
			closeBoard[2].style.display = 'block'
			closeBoard[0].style.display = 'none'
			closeBoard[1].style.display = 'none'
		}
		
		closeBoard[2].onclick=()=>{
			console.log('openBoard click')
			console.log(boardJob_li[2])
			boardJob_li[2].classList.remove('open')
			openBoard[2].style.display = 'block'
			closeBoard[2].style.display = 'none'
		} */
		
		// 이력서 삭제 버튼
		/* for(let i = 0 ; i < resumesSize ; i++){
			resumeDelBtn[i].onclick=()=>{
				console.log("resumeDelBtn["+i+"] click")
				let delIndex = i
				console.log("delIndex :",i)
			}
		} */
	</script>
	
	<script>
	// 맞춤기업 추천 서비스
	    //함수 호출 반복문
	     /* for(let i = 0; i < $('.c_btn').length; i++){
	         tabOpen(i); 
	     }
	
	     //함수에 보관
	     function tabOpen(e){
	         $('.c_btn').eq(e).click(function(){
	        	 $(this).removeClass('choose_off').addClass('choose_on');
	             $('.c_btn').not(this).removeClass('choose_on').addClass('choose_off');
	             $('.c_content').eq(e).show();
	             $('.c_content').not( $('.c_content').eq(e)).hide();
	             
	             var RightTabAll = $('.c_content').eq(e);
	             for(let j = 0; j < RightTabAll.find('.chooseBtn').length; j++){
	            	 tabOpen2(j);
	             }
	             
	             function tabOpen2(e){
	    	    	 $('.chooseBtn').children('input').click(function(){
	    	    		 console.log('df');
	    		    	 $(this).removeClass('choose_tabOff').addClass('choose_tabOn');
	    	             $('.chooseBtn').not(this).removeClass('choose_tabOn').addClass('choose_tabOff');
	             	});
	    	     }
	             
	         });
	     }; */
	</script>
</body>
</html>