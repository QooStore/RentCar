<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>렌트하고 축제가자!</title>
<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>

     <style>    
        .event {
            max-width: 1200px;
            height: 700px;
        }
        .d-block {
            display: block;
            width: 100%;
            height: 100%;
        }

        .favorites {
          max-width: 500px;
          height: 300px;
        }
        
        .favorites_outside {
        	margin: 100px auto;
        }
        
        .carousel-indicators > button {
        	visibility: hidden;
        }
        .carousel-caption {
        	font-weight: bold;
        	text-shadow: -1px 0 2px #000, 0 1px 2px #000, 1px 0 2px #000, 0 -1px 2px #000;
        }
        
     </style>
        
</head>
<body>
    <div id="carouselExampleControls" class="carousel slide event event_outside" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active event">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item active event">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item active event">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

		
      <div id="carouselExampleCaptions" class="carousel slide favorites favorites_outside" data-bs-ride="false">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="7" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
        
          <c:forEach var="car" items="${list }">
	          <div class="carousel-item active favorites">
	            <img src="${contextPath }/download?imageFileName=${car.carModel }.png" class="d-block w-100" alt="...">
	            <div class="carousel-caption d-none d-md-block">
	              <h5>${car.carModel }</h5>
	              <p>${car.carPrice }</p>
	            </div>
	          </div>
          </c:forEach>

          
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
</body>
</html>