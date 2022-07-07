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
    <script>
    
    window.onload = function() {

    	var countPrint = 4;
    	var startIndex = 1;
    	var endIndex = startIndex + countPrint -1;
    	var docElement = document.documentElement;
    	var initialHeight = docElement.scrollHeight;
    	
    	let setInt = setInterval(function() { //스크롤 생길때까지 로드
    	    
    		listCars();

            let currentHeight = docElement.scrollHeight;

            if(initialHeight != currentHeight) clearInterval(setInt);
    	}, 100);


  let timer;

  window.addEventListener('scroll', function() {
	    if(!timer) { //쓰로틀링
	        timer = setTimeout(function() {
	            timer = null;
	        	console.log('참고');
	            if (docElement.scrollTop < docElement.scrollHeight - window.innerHeight) {
	            	return null; // 스크롤 끝 판별
	            }else {
	            	listCars();
	            }
	            
	        }, 500);
    	}
  });
  
    
    function listCars() {
    		
	    	let xhttp = new XMLHttpRequest();
	    	xhttp.open('get', "${contextPath}/car/ajaxCars.do", true);
	    	xhttp.responseType = "json";
	    	xhttp.send();
	    	
	    	xhttp.onreadystatechange = function() {
				if(this.readyState == 4 && this.status == 200) {
					
					let jsonCars = this.response;
					let arrayCars = jsonCars.cars;
					let string = '';
					
					for(var i = startIndex-1; i < endIndex; i++) {
						
						if(i < arrayCars.length) {
					       string = '<li class="item_list">' +
				                '<figure>' +
				                    '<a href="${contextPath }/car/carDetail.do"><img src="https://via.placeholder.com/200x200.png" alt=""></a>' +
				                    '<figcaption>' +
				                        '<p>'+ arrayCars[i].rentCarDTO.carNumber +'</p>' +
				                        '<p class="keyword">'+ arrayCars[i].carDTO.carModel +'</p>' +
				                        '<p>'+ arrayCars[i].carDTO.carPrice +'</p>' +
				                        '<p class="hidden">'+ arrayCars[i].carDTO.carSize +'</p>' +
				                    '</figcaption>' +
				                '</figure>' +
				            '</li>';
						
					       document.querySelector('.item_wrapper').innerHTML += string;
						} //if 끝
						
					}//for 끝
	                startIndex += countPrint;
	                endIndex += countPrint;
				}
			}
	    	
    	} //listCars 끝
    
    }
    </script>
</head>
<body>
    <section class="items_container">
        <div class="menu_wrapper">
            <ul class="car_category">
                <li><a href="#">소형</a></li>
                <li><a href="#">중형</a></li>
                <li><a href="#">대형</a></li>
                <li><a href="#">SUV</a></li>
            </ul>
            <div>검색아이콘<input type="search" class="hidden"/></div>
        </div>
        <ul class="item_wrapper">
        
        </ul>
    </section>
    
</body>
</html>