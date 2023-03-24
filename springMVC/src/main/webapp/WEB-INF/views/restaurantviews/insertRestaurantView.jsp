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
		
		.nav-masthead .nav-link + .nav-link {
		  margin-left: 1rem;
		}
		
		.nav-masthead .active {
		  border-bottom-color: #515151;
		  border-bottom-width: 4px;
		}
		
		.nav-masthead .nav-link:hover,
		.nav-masthead .nav-link:focus {
		  border-bottom-color: #515151;
		  border-bottom-width: 4px;
		}
    	
    	.img-wrap{
    	    width: 100%;
		    height: 280px;
		    background-size: cover;
		    background-image: url(./resources/img/list2.png);
		    background-position: 0px -269px;
	    }
	    .px-3 {
		    margin-top: 30px;
		    margin-bottom: 98px;
		}
		
		.form-style{
			margin: 30px;
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
        <a class="nav-link active" href="insertRestaurant.do">식당예약</a>
        <a class="nav-link" href="getRestaurantList.do">예약목록</a>
      </nav>
    </div>
  </header>

	<main class="px-3">
		<div class="img-wrap"></div>
	    <div class="row">
	      <div class="col-8 form-style mx-auto">
	        <form class="row g-3" action="insertProcRestaurant.do" method="post">
	        
	          <div class="col-12">
	            <label class="form-label">이름</label>
	            <input type="text" class="form-control" name="name" required>
	          </div>
	          
	          <div class="col-12">
	            <label class="form-label">전화번호</label>
	            <input type="text" class="form-control" name="tel" placeholder="010-1234-5678" required>
	          </div>
	          
	          <div class="col-12">
	          <label class="form-label">인원 수</label>
	            <select class="form-select" name="people" required>
	              <option value="2명">2명</option>
	              <option value="3명">3명</option>
	              <option value="4명">4명</option>
	              <option value="5명">5명</option>
	            </select>
	           </div>
	           
	          <div class="col-md-6">
	            <label class="form-label">월</label>
	              <select class="form-select" name="month" required>
	                <option value="" selected disabled>월</option>
	                <option value="1월">1월</option>
	                <option value="2월">2월</option>
	                <option value="3월">3월</option>
	                <option value="4월">4월</option>
	                <option value="5월">5월</option>
	                <option value="6월">6월</option>
	                <option value="7월">7월</option>
	                <option value="8월">8월</option>
	                <option value="9월">9월</option>
	                <option value="10월">10월</option>
	                <option value="11월">11월</option>
	                <option value="12월">12월</option>
	              </select>
	          </div>
	          
	          <div class="col-md-6">
	            <label class="form-label">일</label>
	            <input type="text" class="form-control" name="date" required>
	          </div>
	          
	          <div class="col-12">
	          <label class="form-label">시간</label>
	            <select class="form-select" name="time" required>
	              <option value="" selected disabled>시간</option>
	              <option value="18:00">18:00</option>
	              <option value="19:00">19:00</option>
	              <option value="20:00">20:00</option>
	              <option value="21:00">21:00</option>
	            </select>
	           </div>
	           
	            <hr class="my-4">
	           
	          <div class="col-12">
	          	<button type="submit" class="w-100 btn btn-primary">예약하기</button>
	         </div>
	        </form>
	      </div>
	    </div>
	</main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 소프트웨어융합학과 2270328 이경승</p>
  </footer>
</div>
</body>
</html>