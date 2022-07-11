<%@page import="com.RentLoGo.member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>
<style>
        .memberManagement .title {
            text-align: center;
        }
        
        .memberManagement article .title {
            text-align: center;
            display: grid;
            grid-template-columns: repeat(9, 1fr);
            margin-bottom: 50px;
            border-top: 1px solid rgba(0,0,0,0.3);
            border-bottom: 1px solid rgba(0,0,0,0.3);
            line-height: 50px;
        }
        .memberManagement article .content {
        	text-align: center;
            display: grid;
            grid-template-columns: repeat(9, 1fr);
            border-bottom: 1px solid rgba(160, 52, 248, 0.8);
            line-height: 30px;
        }
</style>
 <script>
        	
            	function delMember(e) {
            		
                let memberId = e.parentElement.parentElement.querySelector('div:first-child').textContent;
                let xhttp = new XMLHttpRequest();
                let requestJSON = new Object();
                requestJSON.memberId = memberId;

                xhttp.open('post', "${contextPath }/managerMember/dropMember.do", true);
                xhttp.setRequestHeader('Content-type', 'application/json; charset=UTF-8;');
                xhttp.responseType = "json";
                xhttp.send(JSON.stringify(requestJSON));

                xhttp.onreadystatechange = function() {
	    			if(this.readyState == 4 && this.status == 200) {

                        let article = document.querySelector('.memberManagement article');
	    				$(article).load('${contextPath}/member/manage.do article');
	    				
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
            	
            
    </script>
</head>
<body>

	<section class="memberManagement">
		<div class="title">
			<h1>회원 관리</h1>
		</div>
		<article>
			<div class="title">
				<div>아이디</div>
				<div>비밀번호</div>
				<div>회원분류</div>
				<div>이름</div>
				<div>생년월일</div>
				<div>전화번호</div>
				<div>이메일</div>
				<div>가입일자</div>
                <div></div>
            </div>
            
            <c:forEach var="member" items="${list }">
	            <div class="content">
		            <div>${member.memberId}</div>
		            <div>${member.memberPw}</div>
		            <div>${member.memberClass}</div>
		            <div>${member.memberName}</div>
		            <div>${member.memberBirth}</div>
		            <div>${member.memberPhone}</div>
		            <div>${member.memberEmail}</div>
		            <div>${member.memberDate}</div>
		            <div><input type="button" onclick="delMember(this)" value="삭제"/></div>
	            </div>
            </c:forEach>
		</article>

	</section>
</body>
</html>