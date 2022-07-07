<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 목록</title>
    <style>

        ul {
            list-style: none;
        }

        a {
        	color: black;
            display: block;
            text-decoration: none;
        }

        a:hover {
            background-color: rgba(253, 158, 80, 0.3);
        }

        a:visited {
            color: black;
        }

        .items_container {
            width: 100%;
            min-width: 500px;
        }

        .items_container .menu_wrapper {
            display: flex;
            justify-content: space-between;
            height: 100px;
            margin-left: 150px;
        }
        
        .items_container .menu_wrapper div {
        	margin-right: 50px;
        }

        .menu_wrapper .car_category {
        	display: flex;
        }

        .menu_wrapper .car_category li {
            width: 100px;
            font-size: 20px;
            margin-bottom: 10px;
            text-align: center;
            line-height: 68px;
        }

        .item_wrapper {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
        }
        .item_wrapper .item_list:not(:nth-child(4n)) {
        	margin-right: 35px;
        }

        .hidden {
            visibility: hidden;
        }
        
        @media(max-width: 960px) {
        	.item_wrapper {
        	grid-template-columns: repeat(2, 1fr);
        	}
        	
        }
        
        @media(max-width: 768px) {
        	 .items_container .menu_wrapper {
        	 
        	 margin-left: auto;
        	 }
        }
        
        @media(max-width: 480px) {
           	.item_wrapper {
        		grid-template-columns: 1fr;
        		margin: 0 auto;
        	}
        	
        	.items_container .item_wrapper {
        		width: 200px;
        	}
        }
    </style>
    <script">
    	window.onload = function() {
    		
	    	let xhttp = new XMLHttpRequest();
	    	xhttp.open('get', "${contextPath}/car/listCars.do", true);
	    	httpRequest.responseType = "json";
	    	xhttp.send();
	    	
	    	xhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200) {
					let listCars = this.response;
					console.log(listCars);
					
				}
			}
	    	
    	}
    </script>
</head>
<body>
    <section class="items_container">
        <div class="menu_wrapper">
            <ul class="car_category">
                <li><a href="#">경차</a></li>
                <li><a href="#">세단</a></li>
                <li><a href="#">SUV</a></li>
            </ul>
            <div>검색아이콘<input type="hidden"/></div>
        </div>
        <ul class="item_wrapper">
        
<%--         <c:forEach var="car" items="${list }"> --%>
<!--             <li class="item_list"> -->
<!--                 <figure> -->
<%--                     <a href="${contextPath }/car/carDetail.do"><img src="https://via.placeholder.com/200x200.png" alt=""></a> --%>
<!--                     <figcaption> -->
<%--                         <p>${car.rentCarDTO.carNumber }</p> --%>
<%--                         <p>${car.rentCarDTO.carModel }</p> --%>
<%--                         <p>${car.carDTO.carPrice }</p> --%>
<%--                         <p class="hidden">${car.carDTO.carSize }</p> --%>
<!--                     </figcaption> -->
<!--                 </figure> -->
<!--             </li> -->
<%--          </c:forEach> --%>
         
        </ul>
    </section>
</body>
</html>