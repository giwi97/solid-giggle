<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Code Complexity Measuring Tool</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Styles for dropzonejs <link href="css/dropzone.css" rel="stylesheet"> -->


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
<link rel="stylesheet" type="text/css" href="css/upload-contain.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="far fa-file-code"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Code Complexity Measurer</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Measure code
						complexity</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Measurements</div>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Size -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-laptop-code"></i> <span>Size,
						Variables, Methods</span></a></li>

			<!-- Nav Item - Inheritance -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-grip-horizontal"></i> <span>Inheritance</span>
			</a></li>

			<!-- Nav Item - Coupling -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-sign-in-alt"></i> <span>Coupling</span>
			</a></li>

			<!-- Nav Item - Control Structures -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>Control Structures</span>
			</a></li>

			<!-- Nav Item - All factors -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fab fa-fw fa-google-wallet"></i> <span>All Factors</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Size, Variables, Methods:</h1>
					</div>

					<!-- Content Row -->
					<div class="row"></div>
					<!-- /.container-fluid -->

					<div class="box"
						style="display: block; margin-left: auto; margin-right: auto; width: 100%; height: 100%;">

						<form action="FileUploadServlet" method="post"
							enctype="multipart/form-data">
							<div class="selection"
								style="margin-left: 5%; margin-bottom: 2%;">
								<label for="factors">Factor:</label> <select id="factor"
									name="factor">
									<option value="Size">Size</option>
									<option value="Variable">Variable</option>
									<option value="Methods">Methods</option>
								</select> <label for="language">Language:</label> <select id="language">
									<option value="Java">Java</option>
									<option value="cpp">C++</option>
								</select>
							</div>
							<div class="upload-box"
								style="display: block; margin-left: auto; margin-right: auto; width: 90%; height: 300px; border: 3px solid #007284; border-radius: 25px;">

								<input type="file" id="files" name="filename"
									multiple="multiple" accept=".zip, .java, .cpp"
									style="display: block; margin-left: auto; margin-right: auto; align-content: center;" />
							</div>
							<p style="text-align: right; margin-top: 2%; margin-right: 5%;">
								<input type="submit" value="upload"
									class="btn btn-lg btn-primary" name = "upload" />
							</p>


						</form>


					</div>
					<!-- End of Main Content -->



				</div>
				<!-- End of Content Wrapper -->

				<!-- Footer -->
				<footer class="sticky-footer bg-white" style="margin-top: 8%;">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; WD_27</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
		</div>
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<!-- you need to include the ShieldUI CSS and JS assets in order for the Upload widget to work -->
	<script type="text/javascript"
		src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

	<script type="text/javascript">
		jQuery(function($) {
			$("#files").shieldUpload();
		});
	</script>
</body>

</html>