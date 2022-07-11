<%@page import="com.RentLoGo.rentCar.model.AllCarDTO"%>
<%@page import="com.RentLoGo.rentCar.model.CarDTO"%>
<%@page import="com.RentLoGo.rentCar.model.RentCarDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>렌터카 관리</title>
<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>
<style>
        .carManagement .title {
            text-align: center;
        }
        
        .carManagement article .title {
            text-align: center;
            display: grid;
            grid-template-columns: repeat(9, 1fr);
            margin-bottom: 50px;
            border-top: 1px solid rgba(0,0,0,0.3);
            border-bottom: 1px solid rgba(0,0,0,0.3);
            line-height: 50px;
        }
        .carManagement article .content {
        	text-align: center;
            display: grid;
            grid-template-columns: repeat(9, 1fr);
            border-bottom: 1px solid rgba(160, 52, 248, 0.8);
            line-height: 30px;
        }
</style>
 <script>
        	
            	function delCar(e) {
            		
                let carNumber = e.parentElement.parentElement.querySelector('div:first-child').textContent;
                let xhttp = new XMLHttpRequest();
                let requestJSON = new Object();
                requestJSON.carNumber = carNumber;

                xhttp.open('post', "${contextPath }/manager/dropCar.do", true);
                xhttp.setRequestHeader('Content-type', 'application/json; charset=UTF-8;');
                xhttp.responseType = "json";
                xhttp.send(JSON.stringify(requestJSON));

                xhttp.onreadystatechange = function() {
	    			if(this.readyState == 4 && this.status == 200) {

                        let article = document.querySelector('.carManagement article');
	    				$(article).load('${contextPath}/manager/manageCar.do article');
	    				
//                         let jsonMemberList = this.response;
//                         let string = '';
//                         let child = document.querySelectorAll('.memberManagement article .content');

//                         for(let j = 0; j < child.length; j++) {
//                             document.querySelector('.memberManagement article').removeChild(child[j]);
//                         }
                        
// 	                        for(let j = 0; j < jsonMemberList.length; j++) {
//                       string = '<div class="content">' +
// 	                                '<div>'+jsonMemberList[j].memberId+'</div>' +
// 	                                '<div>'+jsonMemberList[j].memberPw+'</div>' +                     
// 	                                '<div>'+jsonMemberList[j].memberClass+'</div>' +
// 	                                '<div>'+jsonMemberList[j].memberName+'</div>' +
// 	                                '<div>'+jsonMemberList[j].memberBirth+'</div>' +
// 	                                '<div>'+jsonMemberList[j].memberPhone+'</div>' +
// 	                                '<div>'+jsonMemberList[j].memberEmail+'</div>' +
// 	                                '<div>'+jsonMemberList[j].memberDate+'</div>' +
// 	                                '<div><input type="button" class="dropMemberButton" value="삭제"></div>' +
// 	                            '</div>';
	                            
// 	                            article.insertAdjacentHTML('beforeend', string);
	                            
// 	                        }
		    			}
		    		}
	
            	} //click 이벤트 함수 끝 
            	
            	$(document).ready(function(){
            		$('.delete_Car').click(function() {
            			if(!confirm("삭제 시, 복구할 수 없습니다. 삭제하시겠습니까?")){
            				return false;
            			}
            		})
            	})       
    </script>
</head>
<body>

	<section class="carManagement">
		<div class="title">
			<h1>렌터카 관리</h1>
		</div>
		<article>
			<div class="title">
				<div>차량번호</div>
				<div>모델</div>
				<div>색상</div>
				<div>크기</div>
				<div>종류</div>
				<div>주행거리</div>
				<div>제조사</div>
				<div>가격</div>
                <div></div>
            </div>
            
            <c:forEach var="allCar" items="${list }">
	            <div class="content">
		            <div>${allCar.rentCarDTO.carNumber}</div>
		            <div>${allCar.carDTO.carModel }</div>
		            <div>${allCar.rentCarDTO.carColor }</div>
		            <div>${allCar.carDTO.carSize }</div>
		            <div>${allCar.carDTO.carType }</div>
		            <div>${allCar.rentCarDTO.carDistance }</div>
		            <div>${allCar.carDTO.carMade }</div>
		            <div>${allCar.carDTO.carPrice }</div>
		            <div><input type="button" class="modify_Car" onclick="ModCar(this)" value="수정"/>
		            	<input type="button" class="delete_Car" onclick="delCar(this)" value="삭제"/></div>
	            </div>
            </c:forEach>
		</article>

	</section>
</body>
</html>