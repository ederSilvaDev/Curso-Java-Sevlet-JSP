<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script src="<%= request.getContextPath() %>/assets/plugins/Jquery/dist/jquery.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/plugins/tether/dist/js/tether.min.js"></script>

<!-- Required Fremwork -->
<script src="<%= request.getContextPath() %>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Scrollbar JS-->
<script src="<%= request.getContextPath() %>/assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
<script src="<%= request.getContextPath() %>/assets/plugins/jquery.nicescroll/jquery.nicescroll.min.js"></script>

<!--classic JS-->
<script src="<%= request.getContextPath() %>/assets/plugins/classie/classie.js"></script>

<!-- notification -->
<script src="<%= request.getContextPath() %>/assets/plugins/notification/js/bootstrap-growl.min.js"></script>

<!-- Sparkline charts -->
<script src="<%= request.getContextPath() %>/assets/plugins/jquery-sparkline/dist/jquery.sparkline.js"></script>

<!-- Counter js  -->
<script src="<%= request.getContextPath() %>/assets/plugins/waypoints/jquery.waypoints.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/plugins/countdown/js/jquery.counterup.js"></script>

<!-- Echart js -->
<script src="<%= request.getContextPath() %>/assets/plugins/charts/echarts/js/echarts-all.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>

<!-- custom js -->
<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/main.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/assets/pages/dashboard.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/assets/pages/elements.js"></script>
<script src="<%= request.getContextPath() %>/assets/js/menu.min.js"></script>
<script>
	var $window = $(window);
	var nav = $('.fixed-button');
	$window.scroll(function() {
		if ($window.scrollTop() >= 200) {
			nav.addClass('active');
		} else {
			nav.removeClass('active');
		}
	});
</script>