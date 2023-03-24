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
	<script type="text/javascript">
		const modal = document.getElementById("modal fade")
		const btnModal = document.getElementById("btn-modal")
		btnModal.addEventListener("click", e) {
		    modal.style.display = "flex"
		})
		
		
	</script>
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
		    margin-bottom: 128px;
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
	        <a class="nav-link" href="getRestaurantList.do">예약목록</a>
	      </nav>
	    </div>
	  </header>

    <main class="px-3">
      <div class="col-4 form-style mx-auto">
	    <table class="table table-bordered bordertable" >
        <tbody>
            <tr>
              <th>이름</th>
              <td>${restaurant.name}</td>
            </tr>
            <tr>
              <th>전화번호</th>
              <td>${restaurant.tel}</td>
            </tr>
            <tr>
              <th>인원수</th>
              <td>${restaurant.people}</td>
            </tr>
            <tr>
              <th>월</th>
              <td>${restaurant.month}</td>
            </tr>
             <tr>
              <th>일</th>
              <td>${restaurant.date}</td>
            </tr>
            <tr>
                <th>시간</th>
                <td>${restaurant.time}</td>
            </tr>
            <tr height="50" align="center">
              <td colspan="2">
                <input class="btn btn-primary btn-sm" type="button" value="예약수정"
                  onclick="location.href='modifyRestaurant.do?num=${restaurant.num}'" />
                <input class="btn btn-danger btn-sm" type="button" value="예약취소"
                  onclick="location.href='deleteRestaurant.do?num=${restaurant.num}'" data-target="#deleteModal"/>
                  
                <!-- Button trigger modal -->
				<button id="modal" type="button" class="btn btn-primary" 
				data-bs-toggle="modal" data-bs-target="#deleteModal">
				  예약취소
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="deleteModal" data-bs-backdrop="static" data-bs-keyboard="false" 
					tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel">취소하시겠습니까?</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <p>예약하신 내역이 취소됩니다.</p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				        <button type="button" class="btn btn-primary">Understood</button>
				      </div>
				    </div>
				  </div>
				</div>
				
              </td>
            </tr>
      </tbody>
     </table>
     </div>
	  </main>

	 <footer class="my-5 pt-5 text-muted text-center text-small">
	    <p class="mb-1">&copy; 소프트웨어융합학과 2270328 이경승</p>
  	</footer>
</div>
</body>
</html>