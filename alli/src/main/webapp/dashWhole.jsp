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
					<li><a><span class="fw800">수도권/지방</span> TREND</a></li>
				</ul>
			</div>
		</div>
		<div>
    <!--  전국 -->
    <div class="dashWhole">
        <div class="dashWhole_01">
            <p>
                전국의 IT 프로그래밍 언어, 프레임워크, OS<br>워드클라우드로 보는 혁신적인 경험!
            </p>
            <box style="margin: 0 auto;width: 400px;display: block;height: 400px;background-color: blue;"></box>

        </div>
        <div class="dashWhole_02">
            <div class="dashcoding">
                <p>01. 프로그래밍 언어</p>
                	<div>
						<canvas id="myChart"></canvas>
					</div>
                <p>
                    6.PHP<br>7.R<br>8.TypeScript<br>9.Swift<br>10.Objective-C
                </p>
                <br>
                <p>
                    Python: 데이터 분석, 인공지능, 웹 프로그래밍 등 다양한<br> 분야에서 사용되며, 간결하고 읽기 쉬운
                    코드 작성이 가능하여<br> 인기가 높습니다.<br>
                    <br> Java: 기업용 시스템, 안드로이드 애플리케이션 등 다양한<br> 분야에서 사용되며, 오랜
                    역사와 안정성으로 인기가 있습니다.<br>
                    <br> JavaScript: 웹 프론트엔드 개발에서 가장 많이 사용되며, Node.js를 이용한 서버 사이드
                    개발에도 사용됩니다.<br>
                    <br> C#: 윈도우 애플리케이션, 게임 개발, 웹 개발 등 다양한 분야에서 사용되며, .NET 프레임워크를
                    이용한 개발이 가능합니다.
                </p>
            </div>
            <div class="dashIde">
                <p>02. IDE/프레임워크</p>
                	<div>
						<canvas id="myChart2"></canvas>
					</div>
                <p>
                    6.Android Studio<br> 7.IntelliJ<br> 8.NetBeans<br>
                    9.RStudio<br> 10.Sublime Text<br>
                </p>
                <br>
                <p>
                    Visual Studio Code: 마이크로소프트에서 개발한 무료 오픈소스 IDE로, 다양한 언어와 플랫폼을 지원하며,
                    인텔리센스, 디버깅, Git 통합 등의 기능을 제공합니다.<br>
                    <br> JetBrains IDE: IntelliJ IDEA, PyCharm, WebStorm, 등 다양한
                    언어와 플랫폼을 지원하는 유료 IDE입니다. 코드 분석, 코드 생성, 리팩토링, 통합 디버깅 등의 기능이 있으며,
                    IntelliJ IDEA Ultimate는 머신러닝과 데이터 과학을 위한 PyTorch, TensorFlow,
                    Keras 등을 지원합니다.<br>
                    <br> Eclipse: 무료 오픈소스 IDE로, Java를 비롯한 다양한 언어와 플랫폼을 지원합니다.
                    플러그인 시스템을 통해 다양한 기능을 추가할 수 있으며, 빌드, 디버깅, 테스팅 등의 기능을 제공합니다.<br>
                    <br> Atom: GitHub에서 개발한 무료 오픈소스 IDE로, JavaScript, HTML, CSS,
                    Python, Ruby 등 다양한 언어를 지원합니다. 플러그인을 통해 다양한 기능을 추가할 수 있으며, Git 통합,
                    코드 에디팅 등의 기능을 제공합니다.<br>
                    <br> Sublime Text: 유료 에디터로, 빠른 속도와 사용자 정의 기능을 제공합니다. Python
                    스크립트를 사용하여 다양한 기능을 추가할 수 있으며, Git 통합, 다중 선택 등의 기능을 제공합니다.<br>
                    <br> Jupyter Notebook: 데이터 과학 분야에서 많이 사용되는 무료 오픈소스 IDE입니다.
                    코드와 문서를 통합하여 사용자 친화적인 인터페이스를 제공합니다. Python, R, Julia 등 다양한 언어를
                    지원합니다.<br>
                    <br> CodeSandbox: 웹 기반 온라인 IDE로, 다양한 웹 기술을 지원합니다. 프로젝트 공유 기능이
                    있으며, 팀으로 작업할 때 유용합니다.
                </p>
            </div>
            <div class="dashOs">
                <p>03. OS</p>
                <div>
					<canvas id="myChart3" width='100px' height='100px'></canvas>
				</div>
                <p>Windows: Windows는 여전히 가장 인기있는 운영 체제 중 하나입니다. 이는 대부분의 개인용
                    컴퓨터가 Windows를 사용하고, 대부분의 기업도 Windows를 선택하고 있기 때문입니다. Windows의 최신
                    버전인 Windows 11은 2021년 10월에 출시되었으며, 새로운 기능과 디자인 업그레이드가 포함되어 있습니다.
                    Linux: Linux는 주로 개발자, 엔지니어 및 IT 전문가 등 기술적인 분야에서 사용되고 있습니다. 최근 몇 년
                    동안 Linux의 인기가 상승하고 있으며, 특히 클라우드 컴퓨팅과 같은 분야에서는 Linux가 많이 사용됩니다. 또한,
                    Android 운영 체제도 Linux 커널을 기반으로 하고 있습니다. Mac: Mac은 Apple의 운영 체제로,
                    macOS라고도 불립니다. Mac은 주로 창작적인 분야에서 사용되고 있습니다. 디자이너, 뮤지션, 영상 편집자 등이
                    Mac을 선호하며, 또한 Mac은 보안성이 높은 운영 체제로도 알려져 있습니다. 최근에는 Apple의 M1 칩을 탑재한
                    새로운 Mac 모델도 출시되었습니다.</p>
            </div>
            <div class="dashLicense">
               <p>04. 자격증</p>
               	   <canvas id="myChart4"></canvas>
               <p>
                   일반적으로 선호하는 자격증 목록<br>
                   <br> 정보처리기사<br> SQLD<br> SQLP<br> CCNA (시스코
                   자격증)<br> MCSE (마이크로소프트 자격증)<br> AWS 인증 자격증 (아마존 웹 서비스)<br>
                   CISA (정보 시스템 감사 자격증)<br> CISM (정보 보안 관리자 자격증)<br> CISSP
                   (인포메이션 시큐리티 전문가 자격증)<br>
               </p>
            </div>
            <div class="dashField">
                <P>05. 지원분야</P>
                <canvas id="myChart5_1"></canvas>
                <canvas id="myChart5_2"></canvas>
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
            <div class="dashAcademic">
               <p>06. 학력</p>
               <canvas id="myChart6"></canvas>
               <p>일반적으로 대학교 졸업 이상의 학력을 보유한 인재를 선호합니다. 국내 대학교 졸업생 비율 중에서는 공학계열
                   학과가 상대적으로 높은 비중을 차지하며, 특히 IT 분야 전공자들이 많은 관심을 받고 있습니다. 또한, 대학원 학위를
                   보유한 인재들도 IT 기업에서 높은 평가를 받는 경향이 있습니다. 하지만 학력만으로 판단하지 않고 개인의 역량과 경험,
                   창의성 등을 고려하는 기업도 늘어나고 있으므로, 단순한 학력 비율로만 판단하기는 어렵습니다.</p>
            </div>
            <div class="dashCareer">
                <p>07. 경력</p>
                <canvas id="myChart7"></canvas>
                <p>대체로 경력 채용 비율이 높아지는 추세입니다. 이는 새로운 직원을 채용할 때, 경력이 있는 지원자를 선호하고
                    인재 경쟁력이 높은 사람들을 선발하기 위해서입니다. 또한, 기업들이 경력자에게는 높은 연봉과 급여를 지급하기 때문에,
                    기업 입장에서는 경력 채용이 비즈니스적으로 이점이 있기 때문입니다. 하지만, 최근에는 신입사원을 적극 채용하려는 기업도
                    늘어나고 있으며, 신입사원과 경력사원을 모두 적극적으로 채용하는 추세도 보이고 있습니다. 따라서, 채용 경력 비율은
                    기업마다 차이가 있을 수 있으며, 년도에 따라 변동성이 있을 수 있습니다.</p>
            </div>
        </div>
    </div>
    <div class="dashCompare">
        <div class="dashWhole_01">
            <p>
                수도권/지방 IT 프로그래밍 언어, 프레임워크, OS<br>
                <br> 워드클라우드로 보는 혁신적인 경험!
            </p>
            <box></box>
        </div>
        <div class="dashWhole_02">
            <div class="dashcoding">
                <p>01. 프로그래밍 언어</p>
                	<box></box>
                <p>
                    수도권<br>6.PHP<br>7.R<br>8.TypeScript<br>9.Swift<br>10.Objective-C
                </p>
                <br>
                <p>
                    지방<br>6.PHP<br>7.R<br>8.TypeScript<br>9.Swift<br>10.Objective-C
                </p>
                <br>
                <p>
                    Python: 데이터 분석, 인공지능, 웹 프로그래밍 등 다양한<br> 분야에서 사용되며, 간결하고 읽기 쉬운
                    코드 작성이 가능하여<br> 인기가 높습니다.<br>
                    <br> Java: 기업용 시스템, 안드로이드 애플리케이션 등 다양한<br> 분야에서 사용되며, 오랜
                    역사와 안정성으로 인기가 있습니다.<br>
                    <br> JavaScript: 웹 프론트엔드 개발에서 가장 많이 사용되며, Node.js를 이용한 서버 사이드
                    개발에도 사용됩니다.<br>
                    <br> C#: 윈도우 애플리케이션, 게임 개발, 웹 개발 등 다양한 분야에서 사용되며, .NET 프레임워크를
                    이용한 개발이 가능합니다.
                </p>

            </div>
            <div class="dashIdeCom">
                <p>2. IDE/프레임워크</p>
                <box></box>
                <box></box>
                <p>
                    수도권<br> 6.Android Studio<br> 7.IntelliJ<br>
                    8.NetBeans<br> 9.RStudio<br> 10.Sublime Text<br>
                </p>
                <br>
                <p>
                    지방<br> 6.Android Studio<br> 7.IntelliJ<br>
                    8.NetBeans<br> 9.RStudio<br> 10.Sublime Text<br>
                </p>
                <br>
                <p>
                    최근 수도권에서 인기있는 IDE 입니다.<br> 1. Visual Studio Code -
                    Microsoft에서 제공하는 무료 오픈 소스 IDE로, JavaScript, TypeScript, Node.js,
                    Python 등 다양한 언어를 지원합니다.<br> 2. IntelliJ IDEA - JetBrains에서
                    개발한 Java 기반의 IDE로, Java, Kotlin, Scala, Groovy 등 다양한 언어를 지원합니다.<br>
                    3. Eclipse - 또 다른 Java 기반의 IDE로, Java, C/C++, Python 등 다양한 언어를
                    지원합니다.<br> 4. Android Studio - Google에서 제공하는 안드로이드 애플리케이션 개발용
                    IDE입니다.<br> 5. Xcode - Apple에서 제공하는 iOS, macOS 애플리케이션 개발용
                    IDE입니다.<br> 지방에서도 대체로 비슷한 추세이나, PyCharm이 추가되고 좀 더 다양한 IDE를
                    사용하는 것으로 드러났습니다.<br>
                </p>

            </div>
            <div class="dashOs">
                <p>3. OS</p>
                <box></box>
                <p>
                    수도원, 지방 모두 Windows의 인기가 가장 많습니다.<br> Windows는 게임 업계에서 인기가 높고,
                    mac은 디자인 업계에서 인기가 많습니다. 일부 지역의 경우 서버 OS인 Linux의 인기가 상승 중인 곳도
                    있었습니다.<br> 각 지역마다 비율이 조금씩 다르지만 대체로 Windows가 가장 인기가 많고 다음으로
                    mac, Linux 순입니다.<br> 기본적으로는 Windows, mac, Linux 모두 널리 쓰이고 있다고
                    볼 수 있습니다.
                </p>

            </div>
            <div class="dashLicense">
                <p>4. 자격증</p>
                <box></box>
                <p>
                    1. 정보처리기사: 컴퓨터와 소프트웨어 기술에 대한 전반적인 이해를 바탕으로 개발, 유지보수 등의 업무를 수행할 수
                    있는 역량을 검증하는 자격증입니다.<br> 2. 리눅스 마스터: 리눅스 운영체제에 대한 이해와 실무 능력을
                    검증하는 자격증입니다. 최근 클라우드, 인공지능 등 새로운 기술 발전으로 인해 리눅스 기술의 중요성이 더욱 높아지고
                    있습니다.<br> 3. 네트워크 관리사: 컴퓨터 네트워크 설계, 운용, 보안 등에 대한 지식과 능력을 검증하는
                    자격증입니다.<br> 4. AWS 인증: 아마존 웹 서비스(AWS) 클라우드 컴퓨팅 서비스를 사용하는데 필요한
                    기술과 능력을 검증하는 자격증으로, 최근 클라우드 컴퓨팅 기술이 활발히 발전하면서 수요가 높아지고 있습니다.<br>
                    5. PMP(Project Management Professional): IT 프로젝트 관리에 대한 전문 지식과 경험을
                    검증하는 자격증입니다. IT 기업들이 프로젝트를 성공적으로 수행하기 위해 필수적으로 고려하는 자격증 중 하나입니다.<br>
                    6. CISSP(Certified Information Systems Security Professional):
                    정보보안 전문가로서 필요한 기술과 지식을 검증하는 자격증입니다. 최근 사이버 보안 문제가 더욱 빈번해지면서, 정보보안
                    전문가의 수요가 높아지고 있습니다
                </p>

            </div>
            <div class="dashFieldCom">
                <P>5. 지원분야</P>
                <box></box>
                <box></box>
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
                <box></box>
                <box></box>
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
            <div class="dashAcademic">
                <p>6. 학력</p>
                <box></box>
                <p>
                    수도권과 지방 모두 컴퓨터 공학, 전자공학, 통계학 등의 전공을 가진 지원자를 우대하는 경향은 있으나 코딩 부트캠프,
                    온라인 교육 등 다양한 교육 경로를 통해 프로그래밍 능력을 갖춘 개인도 채용 대상이 될 수 있습니다.<br>
                    따라서 학력 외에도 개인의 역량과 경험, 열정 등이 중요한 역할을 하는 산업이기 때문에, 학력이 중요한 채용 기준이
                    되는 것은 아닙니다.
                </p>

            </div>
            <div class="dashCareer">
                <p>7. 경력</p>
                <box></box>
                <p>
                    수도권은 경쟁이 치열하고 인재 수요가 많아 신입일 경우 추천서를 가지고 있거나, 대학 졸업 이상의 학력을 요구하는
                    경우가 많습니다. 때에 따라서는 대학의 학점을 보는 경우도 있으며, 유명 대학교를 나온 경우, 전공 관련 학위(석사,
                    박사)를 가지고 있는지 따져보는 경우도 있습니다.<br> 지방은 상대적으로 경쟁이 덜하다보니 프로젝트 경험 및
                    성과, 관련 분야에서의 경력 및 기술, 창업 및 스타트업 경험, 커뮤니케이션 능력, 문제해결능력, 창의성 등 업계에서의
                    경험을 더욱 중요시 하는 경향이 있습니다
                </p>
            </div>
        </div>
    </div>
</div> 
	<%@ include file="./include/footer.jsp"%>
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
    
   // 해당 부분은 JS파일을 따로 만들어서 사용해도 된다.
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
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [ 30, 25, 20, 10, 10, 50],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : 'rgba(255, 99, 132, 0.2)',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : 'rgba(255, 99, 132, 1)',
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
					labels : [ 'VScode','Jupyter Notebook', 'Eclipse',  'Atom', 'CodeSandbox' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [ 40, 25, 15, 15, 10, 50],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : 'rgba(255, 99, 132, 0.2)',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : 'rgba(255, 99, 132, 1)',
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
					labels : [ 'Windows','macOS','Linux' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [65,20,15],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : ['#ffd950', '#02bc77', '#28c3d7',],
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
					labels : [ '정보처리기사','SQLD', 'SQLP', 'CISSP', 'CISM' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [ 80, 50, 30, 35, 35,0],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : 'rgba(255, 99, 132, 0.2)',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : 'rgba(255, 99, 132, 1)',
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
			            data: [55.5, 55.2, 53.9, 52.6,51.2]
			        }, {
			            type: 'bar',
			            label: 'App',
			            data: [44.5, 44.8, 46.1, 47.4, 48.8],
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
						data : [ 15, 20, 23, 31 ]
					}, {
						type : 'bar',
						label : 'Back-end',
						data : [ 85, 80, 77, 69 ],
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
					labels : [ '대졸','석사','박사' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [75,15,10],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : ['#ffd950', '#02bc77', '#28c3d7',],
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
					labels : [  '경력', '신입', '경력 무관' ],
					// ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets : [ {
						// ⑤dataset의 이름(String)
						label : '# of Votes',
						// ⑥dataset값(Array)
						data : [8, 11, 20],
						// ⑦dataset의 배경색(rgba값을 String으로 표현)
						backgroundColor : 'rgba(255, 99, 132, 0.2)',
						// ⑧dataset의 선 색(rgba값을 String으로 표현)
						borderColor : 'rgba(255, 99, 132, 1)',
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