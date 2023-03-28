<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./include/metatag.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
</head>
<body>
	<%@ include file="./include/header.jsp"%>
	<div id="wrap" class="dashWhole_wrap">
		<div class="sub_top">
			<div>
				<p>
					<span>NEW</span>TREND
				</p>
			</div>
		</div>
		<div class="dashWhole_top">
			<ul class="dash_ad">
				<li>Now, Go with <img src="./img/logo.png"></li>
				<li>최신 개발 트렌드. ALL-IT에서 모두 한번에!</li>
				<li>2023.04.01기준</li>
			</ul>
			<div class="dash_link">
				<ul>
					<li><a><span class="fw800">국내</span> TREND</a></li>
				</ul>
			</div>
		</div>
		<div class="dash_content">
		    <!--  전국 -->
		    <div class="dashWhole">
		        <div class="dashWhole_01">
		            <p>
		                전국의 IT 프로그래밍 언어, 프레임워크, OS<br>워드클라우드로 보는 혁신적인 경험!
		            </p>
		            <box style="margin: 0 auto;width: 400px;display: block;height: 400px;background-color: blue;"></box>
		
		        </div>
		        <div class="dashWhole_02">
		            <div class="dashbox">
		                <h2>01. 프로그래밍 언어</h2>
	                	<div class="box_chart">
							<canvas id="myChart"></canvas>
							<p>
			                    6. PHP<br>7. SQL<br>8. Swift<br>9. Kotlin<br>10. Objective-C
			                </p>
						</div>
						<div class="box_text">
			                <p>
			                    □ Python : 데이터 분석, 인공지능, 웹 프로그래밍 등 다양한 분야에서 사용되며, 간결하고 읽기 쉬운
			                    코드 작성이 가능하여 인기가 높습니다.<br>
			                    □ Java : 기업용 시스템, 안드로이드 애플리케이션 등 다양한 분야에서 사용되며, 오랜
			                    역사와 안정성으로 인기가 있습니다.<br>
			                    □ JavaScript : 웹 프론트엔드 개발에서 가장 많이 사용되며, Node.js를 이용한 서버 사이드
			                    개발에도 사용됩니다.<br>
			                    □ C# : 윈도우 애플리케이션, 게임 개발, 웹 개발 등 다양한 분야에서 사용되며, .NET 프레임워크를
			                    이용한 개발이 가능합니다.
			                </p>
		                </div>
		            </div>
		            <div class="dashbox">
		            	<h2>02. IDE/프레임워크</h2>
	                	<div class="box_chart">
							<canvas id="myChart2"></canvas>
							<p>
			                    6. PyCharm<br> 7. Atom<br> 8. Vim<br>
		                    	9. NetBeans<br> 10. Xcode<br>
			                </p>
						</div>
						<div class="box_text">
			                <p>
			                 □ Visual Studio Code: 마이크로소프트에서 개발한 무료 오픈소스 IDE로, 다양한 언어와 플랫폼을 지원하며,
		                    인텔리센스, 디버깅, Git 통합 등의 기능을 제공합니다.<br>
		                     □ JetBrains IDE: IntelliJ IDEA, PyCharm, WebStorm, 등 다양한
		                    언어와 플랫폼을 지원하는 유료 IDE입니다. 코드 분석, 코드 생성, 리팩토링, 통합 디버깅 등의 기능이 있으며,
		                    IntelliJ IDEA Ultimate는 머신러닝과 데이터 과학을 위한 PyTorch, TensorFlow,
		                    Keras 등을 지원합니다.<br>
		                    □ Eclipse: 무료 오픈소스 IDE로, Java를 비롯한 다양한 언어와 플랫폼을 지원합니다.
		                    플러그인 시스템을 통해 다양한 기능을 추가할 수 있으며, 빌드, 디버깅, 테스팅 등의 기능을 제공합니다.<br>
		                    □ Atom: GitHub에서 개발한 무료 오픈소스 IDE로, JavaScript, HTML, CSS,
		                    Python, Ruby 등 다양한 언어를 지원합니다. 플러그인을 통해 다양한 기능을 추가할 수 있으며, Git 통합,
		                    코드 에디팅 등의 기능을 제공합니다.<br>
		                    □ Sublime Text: 유료 에디터로, 빠른 속도와 사용자 정의 기능을 제공합니다. Python
		                    스크립트를 사용하여 다양한 기능을 추가할 수 있으며, Git 통합, 다중 선택 등의 기능을 제공합니다.<br>
		                    □ Jupyter Notebook: 데이터 과학 분야에서 많이 사용되는 무료 오픈소스 IDE입니다.
		                    코드와 문서를 통합하여 사용자 친화적인 인터페이스를 제공합니다. Python, R, Julia 등 다양한 언어를
		                    지원합니다.<br>
		                    □ CodeSandbox: 웹 기반 온라인 IDE로, 다양한 웹 기술을 지원합니다. 프로젝트 공유 기능이
		                    있으며, 팀으로 작업할 때 유용합니다.
			                </p>
		                </div>
		            </div>
		            <div class="dashbox" id="os">
		            	<h2>03. OS</h2>
	                	<div class="box_chart">
							<canvas id="myChart3"></canvas>
							<!-- <p>
			                    6. 0<br> 7. 0<br> 8. 0<br>
		                    	9. 0<br> 10. 0<br>
			                </p> -->
						</div>
						<div class="box_text">
			                <p>
				                □ Windows: Windows는 여전히 가장 인기있는 운영 체제 중 하나입니다. 이는 대부분의 개인용
			                    컴퓨터가 Windows를 사용하고, 대부분의 기업도 Windows를 선택하고 있기 때문입니다. Windows의 최신
			                    버전인 Windows 11은 2021년 10월에 출시되었으며, 새로운 기능과 디자인 업그레이드가 포함되어 있습니다.<br>
			                    □ Linux: Linux는 주로 개발자, 엔지니어 및 IT 전문가 등 기술적인 분야에서 사용되고 있습니다. 최근 몇 년
			                    동안 Linux의 인기가 상승하고 있으며, 특히 클라우드 컴퓨팅과 같은 분야에서는 Linux가 많이 사용됩니다. 또한,
			                    Android 운영 체제도 Linux 커널을 기반으로 하고 있습니다. <br>
			                    □ Mac: Mac은 Apple의 운영 체제로,
			                    macOS라고도 불립니다. Mac은 주로 창작적인 분야에서 사용되고 있습니다. 디자이너, 뮤지션, 영상 편집자 등이
			                    Mac을 선호하며, 또한 Mac은 보안성이 높은 운영 체제로도 알려져 있습니다. 최근에는 Apple의 M1 칩을 탑재한
			                    새로운 Mac 모델도 출시되었습니다.
			                </p>
		                </div>
		            </div>
		            <div class="dashbox" id="card">
		            	<h2>04. 자격증</h2>
	                	<div class="box_chart">
							<canvas id="myChart4"></canvas>
							<p>
			                    6. SQL전문가<br> 7. 데이터분석 전문가<br>
			                    <!-- 8. <br> 9. 0<br> 10. 0<br> -->
			                </p>
						</div>
						<div class="box_text">
			                <p>
		                   		내용완전수정필요
			                </p>
		                </div>
		            </div>
		            <div class="dashbox" id="area">
		            	<h2>05. 지원분야</h2>
	                	<div class="box_chart">
							<canvas id="myChart5_1"></canvas>
		                	<canvas id="myChart5_2"></canvas>
							<p>
			                    6. 0<br> 7. 0<br> 8. 0<br>
		                    	9. 0<br> 10. 0<br>
			                </p>
						</div>
						<div class="box_text">
			                <p>
		                    2018년: Web: 55.5% App: 44.5%<br> 2019년: Web: 55.2% App: 44.8%
		                    <br> 2020년: Web: 53.9% App: 46.1%<br> 2021년: Web: 52.6%
		                    App: 47.4%<br> 2022년: Web: 51.2% App: 48.8%<br>
			                </p>
			                <p>
			                    2018년 : Front-end : 15 % Back-end : 85%<br> 2019년 : Front-end
			                    : 20% Back-end : 80%<br> 2020년: Front-end : 23% Back-end :
			                    77%<br> 2021년 : Front-end : 31% Back-end : 69%
			                </p>
		                </div>
		            </div>
		            <div class="dashbox" id="edu">
		            	<h2>06. 학력</h2>
	                	<div class="box_chart">
							<canvas id="myChart6"></canvas>
							<!-- <p>
			                    6. 0<br> 7. 0<br> 8. 0<br>
		                    	9. 0<br> 10. 0<br>
			                </p> -->
						</div>
						<div class="box_text">
			                <p>
		                    일반적으로 대학교 졸업 이상의 학력을 보유한 인재를 선호합니다. 국내 대학교 졸업생 비율 중에서는 공학계열
		                   학과가 상대적으로 높은 비중을 차지하며, 특히 IT 분야 전공자들이 많은 관심을 받고 있습니다. 또한, 대학원 학위를
		                   보유한 인재들도 IT 기업에서 높은 평가를 받는 경향이 있습니다. 하지만 학력만으로 판단하지 않고 개인의 역량과 경험,
		                   창의성 등을 고려하는 기업도 늘어나고 있으므로, 단순한 학력 비율로만 판단하기는 어렵습니다.
			                </p>
		                </div>
		            </div>
		            <div class="dashCareer dashbox">
		            	<h2>07. 경력</h2>
	                	<div class="box_chart">
							<canvas id="myChart7"></canvas>
							<!-- <p>
			                    6. 0<br> 7. 0<br> 8. 0<br>
		                    	9. 0<br> 10. 0<br>
			                </p> -->
						</div>
						<div class="box_text">
			                <p>
			                	대체로 경력 채용 비율이 높아지는 추세입니다. 이는 새로운 직원을 채용할 때, 경력이 있는 지원자를 선호하고
			                    인재 경쟁력이 높은 사람들을 선발하기 위해서입니다. 또한, 기업들이 경력자에게는 높은 연봉과 급여를 지급하기 때문에,
			                    기업 입장에서는 경력 채용이 비즈니스적으로 이점이 있기 때문입니다. 하지만, 최근에는 신입사원을 적극 채용하려는 기업도
			                    늘어나고 있으며, 신입사원과 경력사원을 모두 적극적으로 채용하는 추세도 보이고 있습니다. 따라서, 채용 경력 비율은
			                    기업마다 차이가 있을 수 있으며, 년도에 따라 변동성이 있을 수 있습니다.
			                </p>   
			            </div>             
		            </div>
		        </div>
		    </div>
		</div> 
	<%@ include file="./include/footer.jsp"%>
<<<<<<< HEAD
	<script>
        $('.dash_link > ul:nth-child(1)>li').click(function(){
            $(this).removeClass('off_dashWhole').addClass('on_dashWhole');
            $('.dash_link > ul:nth-child(1) >li').not(this).removeClass('on_dashWhole').addClass('off_dashWhole');
        });
        $('.dash_link > ul:nth-child(1)>li:nth-child(1)').click(function(){
            $('.dashCompare').hide();
            $('.dashWhole').show();
        });
        $('.dash_link > ul:nth-child(1)>li:nth-child(2)').click(function(){
            $('.dashWhole').hide();
            $('.dashCompare').show();
        });
        
        
    </script>
    

		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart').getContext('2d');
			// 차트를 생성한다. 
			var myChart = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'bar',
				// ②차트의 데이터(Object)
				data : {
					// ③x축에 들어갈 이름들(Array)
					labels : [ 'Java', 'Python', 'JavaScript', 'C#', 'C++' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '사용 비율',
						// ⑥dataset값(Array)
						data : [ 21.7, 20.1, 15.3, 7.2, 6.5],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : '#B2A4FF',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#B2A4FF',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ]
				},
				// ⑩차트의 설정(Object)
				options : {
					// ⑪축에 관한 설정(Object)
					scales : {
						// ⑫y축에 대한 설정(Object)
						y : {
							// ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
							beginAtZero : true
						}
					}
				}
			});
		</script>
		
		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart2').getContext('2d');
			// 차트를 생성한다. 
			var myChart2 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'line',
				// ②차트의 데이터(Object)
				data : {
					// ③x축에 들어갈 이름들(Array)
					labels : [ 'IntelliJ IDEA','Visual Studio Code', 'Eclipse',  'Android Studio', 'Sublime Text' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '사용 비율',
						// ⑥dataset값(Array)
						data : [ 41.1, 27.9, 9.8, 6.3, 3.3],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : '#3A1078',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#3A1078',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ]
				},
				// ⑩차트의 설정(Object)
				options : {
					// ⑪축에 관한 설정(Object)
					scales : {
						// ⑫y축에 대한 설정(Object)
						y : {
							// ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
							beginAtZero : true
						}
					}
				}
			});
		</script>
		
		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart3').getContext('2d');
			// 차트를 생성한다. 
			var myChart3 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'doughnut',
				// ②차트의 데이터(Object)
				data : {
					// ③x축에 들어갈 이름들(Array)
					labels : [ 'Windows','macOS','Linux','ChromeOS'],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [50,24,24,2],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : ['#B2A4FF', '#FFB4B4', '#FFDEB4','#FDF7C3'],
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : 'rgba(255, 99, 132, 1)',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ]
				}
				// ⑩차트의 설정(Object)
				
			});
		</script>
		
		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart4').getContext('2d');
			// 차트를 생성한다. 
			var myChart4 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'radar',
				// ②차트의 데이터(Object)
				data : {
					// ③x축에 들어갈 이름들(Array)
					labels : [ '정보처리기사','웹디자인기능사', 'CCNA', '빅데이터분석기사', 'SQLD' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '요구 건수',
						// ⑥dataset값(Array)
						data : [ 1322, 122, 49, 20, 10,0],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : '#3A1078',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#3A1078',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ]
				},
				// ⑩차트의 설정(Object)
				
			});
		</script>
		
		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart5_1').getContext('2d');
			// 차트를 생성한다. 
			var myChart5_1 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'bar',
				// ②차트의 데이터(Object)
				data: {
			        datasets: [{
			            type: 'bar',
			            label: 'Web',
			            data: [55.5, 55.2, 53.9, 52.6,51.2],
				        backgroundColor : '#7149C6',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#B2A4FF',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
			        }, {
			            type: 'bar',
			            label: 'App',
			            data: [44.5, 44.8, 46.1, 47.4, 48.8],
			            backgroundColor : '#a290c9',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#B2A4FF',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
			        }],
			        labels: ['2018', '2019', '2020', '2021','2022']
			    },
			    options: {
			        scales: {
			          y: {
			            beginAtZero: true
			          }
			        }
			      }
			});
		</script>

		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart5_2').getContext(
					'2d');
			// 차트를 생성한다. 
			var myChart5_2 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'bar',
				// ②차트의 데이터(Object)
				data : {
					datasets : [ {
						type : 'bar',
						label : 'Front-end',
						data : [ 15, 20, 23, 31 ],
						backgroundColor : '#f97171',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#B2A4FF',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					}, {
						type : 'bar',
						label : 'Back-end',
						data : [ 85, 80, 77, 69 ],
						backgroundColor : '#FFB4B4',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#B2A4FF',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ],
					labels : ['2018', '2019', '2020', '2021']
				},
				options : {
					scales : {
						y : {
							beginAtZero : true
						}
					}
				}
			});
		</script>

		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart6').getContext('2d');
			// 차트를 생성한다. 
			var myChart6 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'pie',
				// ②차트의 데이터(Object)
				data : {
					// ③x축에 들어갈 이름들(Array)
					labels : [ '고졸','초대졸','대졸','석사','박사','학력무관'],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '요구 건수',
						// ⑥dataset값(Array)
						data : [909,4030,2760,132,7,10696],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : ['#B2A4FF', '#FFB4B4', '#FFDEB4','#7149C6','#FC2947','#37306B'],
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : 'rgba(255, 99, 132, 1)',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ]
				}
				// ⑩차트의 설정(Object)
				
			});
		</script>
		
		<script>
			// 차트를 그럴 영역을 dom요소로 가져온다.
			var chartArea = document.getElementById('myChart7').getContext('2d');
			// 차트를 생성한다. 
			var myChart7 = new Chart(chartArea, {
				// ①차트의 종류(String)
				type : 'bar',
				// ②차트의 데이터(Object)
				data : {
					// ③x축에 들어갈 이름들(Array)
					labels : ['신입', '경력 1~3년', '경력 4~6년', '경력 7~9년', '경력 10년 이상'],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '요구 건수',
						// ⑥dataset값(Array)
						data : [4723, 10526, 5610, 3992, 3842],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : '#B2A4FF',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : '#B2A4FF',
						// ⑨dataset의 선 두께(Number)
						borderWidth : 1
					} ]
				},
				// ⑩차트의 설정(Object)
				options : {
					// ⑪축에 관한 설정(Object)
					scales : {
						// ⑫y축에 대한 설정(Object)
						y : {
							// ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
							beginAtZero : true
						}
					}
				}
			});
		</script>
	</body>
</html>