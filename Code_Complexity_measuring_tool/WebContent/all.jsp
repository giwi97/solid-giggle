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
			<li class="nav-item"><a class="nav-link"
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
			<li class="nav-item active"><a class="nav-link" href="tables.html">
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
						<h1 class="h3 mb-0 text-gray-800">Complexity due to Variables</h1>
					</div>

					<!-- Content Row -->
					<div class="row"></div>
					<!-- /.container-fluid -->

					<div class="box"
						style="display: block; margin-left: auto; margin-right: auto; width: 100%; height: 100%;">

					<table class="table">
  					<thead>
    					<tr>
      						<th scope="col">Line no.</th>
      						<th scope="col">Program Statement</th>
      						<th scope="col">Cs</th>
      						<th scope="col">Cv</th>
      						<th scope="col">Cm</th>
      						<th scope="col">Ci</th>
      						<th scope="col">Ccp</th>
      						<th scope="col">Ccs</th>
      						<th scope="col">Tcps</th>
    						</tr>
  					</thead>
  					<tbody>
    					<tr>
      						<td>1</td>
      						<td>import java.util.Scanner;</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>2</td>
      						<td> class Years{</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>3</td>
      						<td>public int getYear(){</td>
      						<td>2</td>
      						<td>0</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>3</td>
    					</tr>
    					<tr>
      						<td>4</td>
      						<td>int year;</td>
      						<td>1</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>5</td>
      						<td>String enteredYear;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>6</td>
      						<td>Scanner sc = new Scanner(System.in);</td>
      						<td>5</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>5</td>
    					</tr>
    					<tr>
      						<td>7</td>
      						<td>System.out.println("Enter the year as a number :");</td>
      						<td>4</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>4</td>
    					</tr>
    					<tr>
      						<td>8</td>
      						<td>enteredYear = sc.next();</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>9</td>
      						<td>year = Integer.parseInt(enteredYear);</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>10</td>
      						<td>return year;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>11</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>12</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>13</td>
      						<td>//------------------------------------------------------------------------------------------------------------------------------------</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>14</td>
      						<td>class Months extends Years{</td>
      						<td>4</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>5</td>
    					</tr>
    					<tr>
      						<td>15</td>
      						<td>public int getMonth(){</td>
      						<td>2</td>
      						<td>0</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>3</td>
    					</tr>
    					<tr>
      						<td>16</td>
      						<td>int month;</td>
      						<td>1</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>17</td>
      						<td>String enteredMonthNumber;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>18</td>
      						<td>Scanner sc = new Scanner(System.in);</td>
      						<td>5</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>5</td>
    					</tr>
    					<tr>
      						<td>19</td>
      						<td>System.out.println("Enter the month number :");</td>
      						<td>4</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>4</td>
    					</tr>
    					<tr>
      						<td>20</td>
      						<td>enteredMonthNumber = sc.next();</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>21</td>
      						<td>month = Integer.parseInt(enteredMonthNumber);</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>3</td>
    					</tr>
    					<tr>
      						<td>22</td>
      						<td>return month;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>23</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>24</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>25</td>
      						<td>//------------------------------------------------------------------------------------------------------------------------------------</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>26</td>
      						<td>class DaysPerMonth extends Months{ </td>
      						<td>4</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>6</td>
    					</tr>
    					<tr>
      						<td>27</td>
      						<td>static int numDays = 0;</td>
      						<td>4</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>6</td>
    					</tr>
    					<tr>
      						<td>28</td>
      						<td>public static void main(String[] args) {</td>
      						<td>4</td>
      						<td>0</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>6</td>
    					</tr>
    					<tr>
      						<td>29</td>
      						<td>int year;</td>
      						<td>1</td>
      						<td>1</td>
      						<td>0</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>4</td>
    					</tr>
    					<tr>
      						<td>30</td>
      						<td>Months m = new Months();</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>31</td>
      						<td>int month = m.getMonth();</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>32</td>
      						<td>  </td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>33</td>
      						<td>if((month < 1) || (month > 12)){ </td>
      						<td>5</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>4</td>
      						<td>9</td>
    					</tr>
    					<tr>
      						<td>34</td>
      						<td>System.out.println("Kindly enter a number between 0 to 13.");</td>
      						<td>6</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>6</td>
    					</tr>
    					<tr>
      						<td>35</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>36</td>
      						<td>else {</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>37</td>
      						<td>switch (month) {</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>6</td>
      						<td>6</td>
    					</tr>
    					<tr>
      						<td>38</td>
      						<td>case 1:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>39</td>
      						<td>case 3:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>40</td>
      						<td>case 5:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>41</td>
      						<td>case 7:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>42</td>
      						<td>case 8:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>43</td>
      						<td>case 10:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>44</td>
      						<td>case 12:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>45</td>
      						<td>numDays = 31;</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>46</td>
      						<td>System.out.println("Month " + month + " consists of " + numDays + " days.");</td>
      						<td>8</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>8</td>
    					</tr>
    					<tr>
      						<td>47</td>
      						<td>break;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>48</td>
      						<td>case 4:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>49</td>
      						<td>case 6:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>50</td>
      						<td>case 9:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>51</td>
      						<td>case 11:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>7</td>
      						<td>7</td>
    					</tr>
    					<tr>
      						<td>52</td>
      						<td>numDays = 30;</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>53</td>
      						<td>System.out.println("Month " + month + " consists of " + numDays + " days.");</td>
      						<td>8</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>8</td>
    					</tr>
    					<tr>
      						<td>54</td>
      						<td>break;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>55</td>
      						<td>case 2:</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>56</td>
      						<td>year = m.getYear();</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>57</td>
      						<td>if(year < 1) {</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>6</td>
      						<td>8</td>
    					</tr>
    					<tr>
      						<td>58</td>
      						<td>System.out.println("Kindly enter a valid year.");</td>
      						<td>4</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>4</td>
    					</tr>
    					<tr>
      						<td>59</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>60</td>
      						<td>else{</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>61</td>
      						<td>if(((year % 4 == 0) &&  !(year % 100 == 0)) || (year % 400 == 0)){</td>
      						<td>14</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>12</td>
      						<td>26</td>
    					</tr>
    					<tr>
      						<td>62</td>
      						<td>numDays = 29;</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>63</td>
      						<td>if(year > 2020){</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>14</td>
      						<td>16</td>
    					</tr>
    					<tr>
      						<td>64</td>
      						<td>System.out.println("In year " + year + " month " + month + " will consist of " + numDays + " days.");</td>
      						<td>10</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>10</td>
    					</tr>
    					<tr>
      						<td>65</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>66</td>
      						<td>else{</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>67</td>
      						<td>System.out.println("In year " + year + " month " + month + " has consisted of " + numDays + " days.");</td>
      						<td>10</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>10</td>
    					</tr>
    					<tr>
      						<td>68</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>69</td>
      						<td>}</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>70</td>
      						<td>else{</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>71</td>
      						<td>numDays = 28;</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
    					</tr>
    					<tr>
      						<td>72</td>
      						<td>if (year > 2020){</td>
      						<td>2</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>2</td>
      						<td>4</td>
    					</tr>
    					<tr>
      						<td>73</td>
      						<td>System.out.println("In year " + year + " month " + month + " will consist of " + numDays + " days.");</td>
      						<td>10</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>10</td>
    					</tr>
    					<tr>
      						<td>74</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>75</td>
      						<td>else{</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>76</td>
      						<td>System.out.println("In year " + year + " month " + month + " has consisted of " + numDays + " days.");</td>
      						<td>10</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>10</td>
    					</tr>
    					<tr>
      						<td>77</td>
      						<td>}</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>78</td>
      						<td>break;</td>
      						<td>1</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>1</td>
    					</tr>
    					<tr>
      						<td>79</td>
      						<td>}//else at line 70</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>80</td>
      						<td>}//else at line 60</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>81</td>
      						<td>}//switch at line 37</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>82</td>
      						<td>}//else at line 36</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>83</td>
      						<td>}//method</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>
    					<tr>
      						<td>84</td>
      						<td>}//class</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
      						<td>0</td>
    					</tr>

					</tbody>
				</table>


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