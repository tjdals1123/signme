<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="/resources/img/favicon.png">

  <title>SIGN ME</title>
<link rel="icon" type="image/png"  href="/resources/img/signmefavicon.png"/>
  <link rel="stylesheet" href="/resources/icofont/icofont.min.css">
  <!-- Bootstrap CSS -->
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="/resources/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="/resources/css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="/resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="/resources/css/owl.carousel.css" type="text/css">
  <link href="/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="/resources/css/fullcalendar.css">
  <link href="/resources/css/widgets.css" rel="stylesheet">
  <link href="/resources/css/style.css" rel="stylesheet">
  <link href="/resources/css/style-responsive.css" rel="stylesheet" />
  <link href="/resources/css/xcharts.min.css" rel=" stylesheet">
  <link href="/resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
<body>
  <!-- container section start -->
  <section id="container" class="">

<!-- include (header, sidebar) start -->  
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
<%@ include file="/WEB-INF/views/include/sidebar.jsp" %>
<!-- include (header, sidebar) end -->

<!-- main content start -->
 
  <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><strong><i class="icofont-law-document"></i>????????????</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">??????</a></li>
              <li><i class="icofont-law-document"></i>????????????</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
              
              <header class="panel-heading">
                <h2>????????????</h2>
                <!-- search start -->
            	
             		
             		<div class="box-body">
             			<select name="searchType">
             				<option value="n" <c:out value="${cri.searchType == null ? 'selected' : ''}" />>-</option>
             				<option value="t" <c:out value="${cri.searchType eq 't' ? 'selected' : ''}" />>??????</option>
             				<option value="c" <c:out value="${cri.searchType eq 'c' ? 'selected' : ''}" />>??????</option>
             				<option value="w" <c:out value="${cri.searchType eq 'w' ? 'selected' : ''}" />>?????????</option>
             				<option value="tc" <c:out value="${cri.searchType eq 'tc' ? 'selected' : ''}" />>??????+??????</option>
             				<option value="cw" <c:out value="${cri.searchType eq 'cw' ? 'selected' : ''}" />>??????+?????????</option>
             				<option value="tcw" <c:out value="${cri.searchType eq 'tcw' ? 'selected' : ''}" />>??????+??????+?????????</option>
             			</select>
             			
             			<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
             			<button id="searchBtn">Search</button>
             		</div>
             	
             	<!-- search end -->
              </header>
              
              <section class="panel">
              <table class="table table-striped table-advance table-hover">
                
                 <thead>
                  <tr>
                    <th>????????????</th>
                    <th>?????????</th>
                    <th>????????????</th>
                    <th>?????????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                  </tr>
                 </thead>
                 <tbody>
                  <c:forEach items="${signStateListA}" var="list">
                  <input type="hidden" name="mno" value="${list.mno}">
                  <c:if test="${list.mno == login.mno || login.position eq '??????' || login.position eq '??????' || login.position eq '??????'}">
                  <tr>
                    <td>${list.bno}</td>
                    <td>${list.deptname}</td>
                    <td><a href="/sign/reportRead?bno=${list.bno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">${list.btitle}</a></td>
                    <td>${list.mname}</td>
                    <td>${list.bwrite_date}</td>
                    <td>${list.bsigner}</td>
                    <td>${list.bsign_date}</td>
                    <td>
	                    <c:choose>
	                    	<c:when test="${list.signstate == 0}">
								<c:out value="?????????" />                   
	                    	</c:when>
	                    	<c:when test="${list.signstate == 1}">
								<Strong>
									<a class="text-danger" href="#myModal" data-toggle="modal">
										<c:out value="????????????" /><i class="icofont-ui-message text-primary"></i>      
									</a>
								</Strong>             
	                    	</c:when>
	                    	<c:when test="${list.signstate == 2}">
								<Strong class="text-muted"><c:out value="????????????" /></Strong>                   
	                    	</c:when>
	                    </c:choose>
                    </td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
              </table>
              <div class="text-center">
        <ul class="pagination justify-content-center" style="text-align : center">
        <c:if test="${pageMaker.prev}">
          <li class="page-item disabled">
          	<a class="page-link" href="/sign/signStateList?page=${pageMaker.startPage -1}">
          		&laquo;
          	</a>
          </li>
        </c:if>
        <c:forEach begin="${pageMaker.startPage}"
        			end ="${pageMaker.endPage}"
        			var ="idx">
        	<li class="page-item
        		<c:out value="${pageMaker.cri.page == idx ? 'active' : ''}" />">
        			<a class="page-link" href="/sign/signStateList?page=${idx}&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx}</a></li>			
        </c:forEach>
          <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
          <li class="page-item">
          	<a class="page-link" href="/sign/signStateList?page=${pageMaker.endPage +1}">
          		&raquo;
          	</a>
          </li>
          </c:if>
        </ul>
              </div>
            </section>
        </div>
          </div>
        <br><br>
        <div class="row">
        	<div class="col-lg-12">
          <header class="panel-heading">
                <h2>????????????</h2>
                <!-- search start -->
            	
             		
             		<div class="box-body">
             			<select name="searchType">
             				<option value="n" <c:out value="${cri.searchType == null ? 'selected' : ''}" />>-</option>
             				<option value="t" <c:out value="${cri.searchType eq 't' ? 'selected' : ''}" />>??????</option>
             				<option value="c" <c:out value="${cri.searchType eq 'c' ? 'selected' : ''}" />>??????</option>
             				<option value="w" <c:out value="${cri.searchType eq 'w' ? 'selected' : ''}" />>?????????</option>
             				<option value="tc" <c:out value="${cri.searchType eq 'tc' ? 'selected' : ''}" />>??????+??????</option>
             				<option value="cw" <c:out value="${cri.searchType eq 'cw' ? 'selected' : ''}" />>??????+?????????</option>
             				<option value="tcw" <c:out value="${cri.searchType eq 'tcw' ? 'selected' : ''}" />>??????+??????+?????????</option>
             			</select>
             			
             			<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
             			<button id="searchBtn">Search</button>
             		</div>
             	
             	<!-- search end -->
              </header>
              
            <section class="panel">

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th>?????????</th>
                    <th>?????????</th>
                    <th>??????</th>
                    <th>?????????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                    <th>????????????</th>
                  </tr>
                   <c:forEach items="${signStateListB}" var="list">
                   <input type="hidden" name="mno" value="${list.mno}">
                  <c:if test="${list.mno == login.mno || list.bsigner == login.mname}">
                  <tr>
                    <td>${list.bno}</td>
                    <td>${list.deptname}</td>
                    <td><a href="/sign/reportRead?bno=${list.bno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">${list.btitle}</a></td>
                    <td>${list.mname}</td>
                    <td>${list.bwrite_date}</td>
                    <td>${list.bsigner}</td>
                    <td>${list.bsign_date}</td>
                    <td>
                    <c:choose>
                    	<c:when test="${list.signstate == 2}">
							<Strong class="text-primary"><c:out value="????????????" /></Strong>                   
                    	</c:when>	
                    	<c:when test="${list.signstate == 1}">
							<c:out value="????????????" />              
                    	</c:when>
                    	<c:when test="${list.signstate == 0}">
							<c:out value="?????????" />                   
                    	</c:when>
                    </c:choose>
                    </td>
                  </tr>
                  </c:if>
                  </c:forEach>
                </tbody>
              </table>
            
          <div class="text-center">
        <ul class="pagination justify-content-center" style="text-align : center">
        <c:if test="${pageMaker2.prev}">
          <li class="page-item disabled">
          	<a class="page-link" href="/sign/signStateList?page=${pageMaker2.startPage -1}">
          		&laquo;
          	</a>
          </li>
        </c:if>
        <c:forEach begin="${pageMaker2.startPage}"
        			end ="${pageMaker2.endPage}"
        			var ="idx">
        	<li class="page-item
        		<c:out value="${pageMaker2.cri.page == idx ? 'active' : ''}" />">
        			<a class="page-link" href="/sign/signStateList?page=${idx}&searchType=${cri2.searchType}&keyword=${cri2.keyword}">${idx}</a></li>			
        </c:forEach>
          <c:if test="${pageMaker2.next && pageMaker2.endPage > 0}">
          <li class="page-item">
          	<a class="page-link" href="/sign/signStateList?page=${pageMaker2.endPage +1}">
          		&raquo;
          	</a>
          </li>
          </c:if>
        </ul>
          </div>
            </section>
          </div>
            </div>
        <!-- page end-->
    <!-- ???????????? ????????? start -->    
    <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">????????????</h4>
          
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <p>????????? ????????? ???????????? ???</p>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">??????</button>
          
        </div>

      </div>
    </div>
  </div>
  <!-- ???????????? ????????? end -->    
      </section>
    </section>
 
 
 
 
 
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Pu
           rchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
  </section>

  <!-- container section start -->

<!-- javascripts -->
  <script src="/resources/js/jquery.js"></script>
  <script src="/resources/js/jquery-ui-1.10.4.min.js"></script>
  <script src="/resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="/resources/js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="/resources/js/jquery.scrollTo.min.js"></script>
  <script src="/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="/resources/assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="/resources/js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="/resources/js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <script src="/resources/js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="/resources/js/calendar-custom.js"></script>
    <script src="/resources/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="/resources/js/jquery.customSelect.min.js"></script>
    <script src="/resources/assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="/resources/js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="/resources/js/sparkline-chart.js"></script>
    <script src="/resources/js/easy-pie-chart.js"></script>
    <script src="/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/resources/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/resources/js/xcharts.min.js"></script>
    <script src="/resources/js/jquery.autosize.min.js"></script>
    <script src="/resources/js/jquery.placeholder.min.js"></script>
    <script src="/resources/js/gdp-data.js"></script>
    <script src="/resources/js/morris.min.js"></script>
    <script src="/resources/js/sparklines.js"></script>
    <script src="/resources/js/charts.js"></script>
    <script src="/resources/js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
      
      $('#searchBtn').on("click", function(event){
    	  
    	  
    	  self.location = "signSuccessList"
    	  		+ "?page=1"
    	  		+ "&searchType="
    	  		+ $("select option:selected").val()
    	  		+ "&keyword=" + $("#keywordInput").val();
      });
      
      console.log(${signerSelect})
    </script>
	
</body>

</html>
