<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				
		.lead{
			font-size: 16px;
		}
		
		 .px-3 {
		    margin-top: 30px;
		    margin-bottom: 98px;
		}
	</style>	
</head>

<body>
	<div class="cover-container d-flex p-3 mx-auto flex-column">
	  <header class="mb-auto">
	    <div>
	      <img src="resources/img/logo.png" class="float-md-start mb-0" />
	      <nav class="nav nav-masthead justify-content-center float-md-end">
	        <a class="nav-link active" aria-current="page" href="mainRestaurant.do">식당소개</a>
	        <a class="nav-link" href="insertRestaurant.do">식당예약</a>
	        <a class="nav-link" href="getRestaurantList.do">예약목록</a>
	      </nav>
	    </div>
	  </header>
	
	  <main class="px-3">
	    <img src="resources/img/main.png" width="1208px"/>
	  </main>
	
	  <footer class="my-5 pt-5 text-muted text-center text-small">
	    <p class="mb-1">&copy; 소프트웨어융합학과 2270328 이경승</p>
  	  </footer>
	</div>
</body>
</html>