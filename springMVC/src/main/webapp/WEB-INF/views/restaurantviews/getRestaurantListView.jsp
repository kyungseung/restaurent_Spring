<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" 
	prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<style>
		.cover-container {
		  max-width: 1280px;
		}
		
		.nav-masthead .nav-link {
		  padding: .25rem 0;
		  font-weight: 700;
		  color: #333;
		  background-color: transparent;
		  border-bottom: .25rem solid transparent;
		}
		
		.nav-masthead .nav-link:hover,
		.nav-masthead .nav-link:focus {
		  border-bottom-color: #515151;
		  border-bottom-width: 4px;
		}
		
		.nav-masthead .nav-link + .nav-link {
		  margin-left: 1rem;
		}
		
		.nav-masthead .active {
		  border-bottom-color: #515151;
		  border-bottom-width: 4px;
		}

		.form-select {
			width: 100px;
			margin-right: 3px;
			font-size: 12px;
		}

		.form-control {
			font-size: 12px;
		}
		
        .bordertable th{
            background-color: #cfe2ff;
            text-align: center;
            width: 150px
       }

        .bordertable td{
       		padding-left:20px !important;
   		}  

        .bordertable th, .bordertable td{
	        font-size: 12px;    
	        border:1px solid #ededed !important;
	        font-weight: normal;  
	        line-height: 19px;
        }
		
	    .px-3 {
		    margin-top: 30px;
		    margin-bottom: 98px;
	    }
	    
	    .navbar{
	    	margin: 22px 0px 0px 0px;
    		padding: 0px 0px 5px 0px;
	    }
	    
	    .img-wrap{
    	    width: 100%;
		    height: 280px;
		    background-size: cover;
		    background-image: url(./resources/img/list.png);
		    background-position: 0px -269px;
	    }
	    .container-fluid{
	    	 padding: 0px;
	    }
	</style>
</head>
<body>
	<div class="cover-container d-flex p-3 mx-auto flex-column">
		<header class="mb-auto">
			<div>
				<img src="resources/img/logo.png" class="float-md-start mb-0" />
				<nav class="nav nav-masthead justify-content-center float-md-end">
				<a class="nav-link" aria-current="page" href="mainRestaurant.do">식당소개</a>
				<a class="nav-link" href="insertRestaurant.do">식당예약</a>
				<a class="nav-link active" href="getRestaurantList.do">예약목록</a>
				</nav>
			</div>
		</header>

		<main class="px-3">
		 <div class="img-wrap"></div>
			<div class="col-12 form-style mx-auto">
			<nav class="navbar">
				<div class="container-fluid">
					<button class="btn btn-sm btn-primary"
						onclick="location.href='insertRestaurant.do'">추가 예약</button>
					
						<form class="d-flex" action="searchRestaurantList.do" method="post">
							<select name="searchCon" class="form-select" aria-label="Default select">
								<option value="name"> 이름</option>
								<option value="month"> 월(날짜)</option>
							</select>
							<input name="searchKey" class="form-control me-2" type="text"
									placeholder="Search" aria-label="Search">
							<button class="btn btn-sm btn btn-primary" type="submit">search</button>
						</form>
					</div>
				</nav> 
				<table class="table table-hover table-bordered bordertable">
					<thead>
						<tr class="table-primary">
							<th scope="col">이름</th>
							<th scope="col">전화번호</th>
							<th scope="col">인원수</th>
							<th scope="col">월</th>
							<th scope="col">일</th>
							<th scope="col">시간</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rList}" var="restaurant">
							<tr>
								<td scope="row"> <a href="getRestaurant.do?num=${restaurant.num}"> ${restaurant.name} </a></td>
								<td> ${restaurant.tel} </td>
								<td> ${restaurant.people} </td>
								<td> ${restaurant.month} </td>
								<td> ${restaurant.date} </td>
								<td> ${restaurant.time} </td>
							</tr>	
						</c:forEach>
					</tbody>
				</table>
			 </div>
		</main>
	</div>
	<footer class="my-5 pt-5 text-muted text-center text-small">
	    <p class="mb-1">&copy; 소프트웨어융합학과 2270328 이경승</p>
    </footer>
</body>
</html>