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
            <h3 class="page-header"><strong><i class="icofont-search-document"></i>문서 상세 보기</strong></h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/">메인</a></li>
              <li><i class="icon_document_alt"></i>문서 열람</li>
              <li><i class="icofont-search-document"></i>문서 상세 보기</li>
            </ol>
          </div>
        </div>
        <div class="row">
        <div class="col-lg-12">
          <div >
            <section class="panel">
              <header class="panel-heading">
                상세보기
              </header>
              <br><br>
              <form action="/sign/signSuccess" id="formbtn" method="get">
              	<c:if test="${reportRead.signstate != 2}"> 
                     <c:if test="${login.position eq '과장' || login.position eq '부장' || login.position eq '차장'}">
                     
	                     <div class="btn-group col-lg-2 col-lg-offset-10 col-md-2 col-md-offset-10" align="center" >
	                     <button type="submit" class="btn btn-lg btn-danger signer signNo" id="signNo" > <i class="icofont-close-circled"></i></button>
	                     <button type="submit" class="btn btn-lg btn-primary signer signOk" id="signOk" ><i class="icofont-check-circled"></i></button>
	                     </div>
                     </c:if>
                     <input type="hidden" name="mno" value="${login.mno }">
                     <input type="hidden" name="bsigner" value="${login.mname}">
                     <input type="hidden" name="signstate" id="signstate">
                     <input type="hidden" name="bno" value="${reportRead.bno}">
                 </c:if>   
                     </form>
              <div class="panel-body" >
                <form action="target" class="form-horizontal " method="get">
                  <!-- 추후 삭제 가능-->
                  <br><br><br>
                 
                        <c:choose>
                        <c:when test="${reportRead.signstate == 1 }">
                 <div class="row" style="height:130px">
                    
                    <div class="col-md-4 col-md-offset-4">
                    </div>
                      
                      <table style="border:1px solid; width:300px; "class="text-center ">
                        <thead>
                        <tr>
                    
                        <th style="border:1px solid; width:50%"  class="text-center"><h4>반려일자</h4></th>
                          <th style="border:1px solid; width:50%" class="text-center"><h4>반려결재자</h4></th><!-- 조건에 따른 hide 구현 예정 -->
                        </tr>
                        </thead>
                        <tbody>
                        <tr >
                          <td style="border:1px solid; height:100px">${reportRead.bsign_date }</td>
                          <td style="border:1px solid; height:100px">${reportRead.bsigner}</td>
                        </tr>
                        </tbody>
                      </table>
                      
                      

                    </div>
                    </c:when>
                    <c:when test="${reportRead.signstate == 0 || reportRead.signstate == 2}">
                 <div class="row" style="height:130px">
                    
                    <div class="col-md-4 col-md-offset-4">
                    </div>
                      
                      <table style="border:1px solid; width:300px; "class="text-center ">
                        <thead>
                        <tr>
                    
                        <th style="border:1px solid; width:50%"  class="text-center"><h4>결재일자</h4></th>
                          <th style="border:1px solid; width:50%" class="text-center"><h4>결재자</h4></th><!-- 조건에 따른 hide 구현 예정 -->
                        </tr>
                        </thead>
                        <tbody>
                        <tr >
                          <td style="border:1px solid; height:100px">${reportRead.bsign_date }</td>
                          <td style="border:1px solid; height:100px">${reportRead.bsigner}</td>
                        </tr>
                        </tbody>
                      </table>
                      
                      

                    </div>
                    </c:when>
                        </c:choose>
                 
                 <br><br><br>
                 
                  <div class="form-group">
                    <h1 class="text-center" id="titleForm">${reportRead.fname}</h1>
                    <br><br>
                  </div>
                
                  <div class="form-group">
                    <label class="col-sm-1 control-label">문서번호</label>
                    <div class="col-sm-11 ">
                      <input type="text" class="form-control"  readonly="true" value="${reportRead.bno}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">부서명</label>
                    <div class="col-sm-11 ">
                      <input type="text" class="form-control"  readonly="true" value="${reportRead.deptname }"><!-- deptno 작성예정 -->
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">제목</label>
                    <div class="col-sm-11">
                      <input type="text" class="form-control" readonly="true" value="${reportRead.btitle}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성자</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="focusedInput" type="text" readonly="true" value="${reportRead.mname}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-1 control-label">작성일</label>
                    <div class="col-sm-11">
                      <input class="form-control" id="disabledInput" type="text" readonly="true" value="${reportRead.bwrite_date}">
                    </div>
                  </div>
<!--                   <div class="form-group"> -->
<!--                     <label class="col-sm-1 control-label">결재자</label> -->
<!--                     <div class="col-sm-11"> -->
<%--                       <input type="text" class="form-control" readonly="true" value="${reportRead.bsigner}"> --%>
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="form-group"> -->
<!--                     <label class="col-sm-1 control-label">결재일자</label> -->
<!--                     <div class="col-sm-11"> -->
<%--                       <input type="text" class="form-control" readonly="true" value="${reportRead.bsign_date}"> --%>
<!--                     </div> -->
<!--                   </div> -->
                  <div class="form-group">
                    <label class="col-sm-1 control-label">내용</label>
                    <div class="col-sm-11">
                      <textarea class="form-control" readonly="true" cols="30" rows="10">${reportRead.bcontent}</textarea>
                    </div>
                  </div>
                  <input type="hidden" id="signstate" value="${reportRead.signstate}">
                  <input type="hidden" id="fno" name="fno" value="${reportRead.fno}">
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-8"></div>
                      	<input type = "hidden" name="page" value="${cri.page}">
				    	<input type = "hidden" name="searchType" value="${cri.searchType}">
				    	<input type = "hidden" name="keyword" value="${cri.keyword}">
				    	
                      <a class="btn btn-primary col-md-1 btn-lg" style="margin-right:5px; margin-left: 70px;" href="/sign/signSuccessList?page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}" title="Bootstrap 3 themes generator"><i class="icofont-list"></i></a>
                      <c:if test="${reportRead.mno == login.mno}">
	                     <c:if test="${reportRead.signstate != 2}"> 
	                     	<a class="btn btn-success col-md-1 btn-lg" style="margin-right:5px;" href="/sign/reportModifyForm?bno=${reportRead.bno}" title="Bootstrap 3 themes generator"><i class="icofont-edit"></i></a>
	                     </c:if>
	                      <a class="btn btn-danger col-md-1 btn-lg" href="/sign/reportDelete?bno=${reportRead.bno}" title="Bootstrap 3 themes generator"><i class="icofont-trash"></i></a>
                      </c:if>
                  </div>
                  </div>
                </form>
              </div>
            </section>
           
          </div>
        </div>
       
              </div>
            
         <div class="modal fade" id="signmsgmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close closebtn" >&times;</button>
                        <h4 class="modal-title">반려 사유</h4>
                      </div>
                      <div class="modal-body">
                      <div class="form-group ">
                        <label for="msgcontent" class="control-label col-md-2 col-lg-2">사유 작성</label>
                        <div class="col-md-10 col-lg-10">
                          <textarea class="form-control" id="msgcontent" name="msgcontent" required ></textarea>
                        </div>
                        <br><br>
						</div>
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-primary btn-lg" id="signmsgbtn"><i class="icofont-checked"></i></button>
                        <button class="btn btn-default closebtn btn-lg" type="button"><i class="icofont-exit"></i></button>
                      </div>
                      </div>
                    </div>
                  </div>
    	
        <!-- page end-->
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
      var title = "신청서";
      
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
    
    var takemno = ${reportRead.mno};
    var sendmno = ${login.mno};
    var msgtitle = "";
    var bno = ${reportRead.bno};
    
	$(".signOk").on("click", function(){
		
		$("#signstate").val("2");
		
		
	});
	
	$(".signNo").on("click", function(){
		
		$("#signstate").val("1");
	});   
    
	$(document).ready(function(){
		
	if($("#fno").val() == 2){
	        	
	        	$("#titleForm").html('신청서');
        } 
	});
	
	$("#signNo").on("click", function(e){
		let result1 = confirm("결재를 반려하시겠습니까?");
		
		e.preventDefault();
		if(result1) {
			$("#signstate").val("1");
			$("body").attr("class", "modal-open");
		    $("body").append("<div id='backdrop' class='modal-backdrop fade show'>");
		    $("#signmsgmodal").attr("class", "modal fade show");
		    $("#signmsgmodal").attr("aria-modal", "true");
		    $("#signmsgmodal").attr("aria-hidden", "false");
		    $('#signmsgmodal').modal({backdrop: 'static'});
		    $("#signmsgmodal").modal("show");
		}
		
	});
	
	var msgcontent = "";
	$("#signmsgbtn").on("click", function() {
		msgtitle = "[${reportRead.fname}] 결재 반려";
		var msgtemp = $("#msgcontent").val();
		msgcontent = "문서 [${reportRead.btitle}]의 반려 사유 : " + msgtemp;
		console.log(takemno);
		console.log(sendmno);
		console.log(msgtitle);
		console.log(msgcontent);
		$.ajax({
			type : 'post',
			url : '/message/sendmsg',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				takemno : takemno,
				sendmno : sendmno,
				msgtitle : msgtitle,
				msgcontent : msgcontent
			}),
			success : function(result) {
				if (result == 'SUCCESS'){
					alert("반려 사유를 쪽지로 전송하였습니다.");
					$("#formbtn").submit();
// 					self.location = "/sign/signSuccess";
				}
			}
		})
		
	})
	
	$(".closebtn").on("click", function() {
			$("body").attr("class", "");
			$("#backdrop").remove();
		    $("#signmsgmodal").attr("class", "modal fade");
		    $("#signmsgmodal").attr("aria-modal", "false");
		    $("#signmsgmodal").attr("aria-hidden", "true");
		    $("#signmsgmodal").modal("hide");
	})
	
	
	$("#signOk").on("click", function(e){
		let result2 = confirm("결재하시겠습니까?");
		e.preventDefault();
		if(result2) {
			$("#signstate").val("2");
			msgcontent = "문서 [${reportRead.btitle}] 결재 완료했습니다.";
			msgtitle = "[${reportRead.fname}] 결재 승인";
			console.log(takemno);
			console.log(sendmno);
			console.log(msgtitle);
			console.log(msgcontent);
			$.ajax({
				type : 'post',
				url : '/message/sendmsg',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					takemno : takemno,
					sendmno : sendmno,
					msgtitle : msgtitle,
					msgcontent : msgcontent
				}),
				success : function(result) {
					if (result == 'SUCCESS'){
						alert("결재 승인 쪽지를 전송하였습니다.");
						$("#formbtn").submit();
					}
				}
			})
		}
		
		
	});
    </script>

</body>

</html>
