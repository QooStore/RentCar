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
<script src="https://kit.fontawesome.com/166dc8a7b4.js" crossorigin="anonymous"></script>
<style>
		.memberSearchBar {
			width: 500px;
			margin-left: 65%;
			margin-bottom: 10px;
		}
		
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
        .hiddenIcon {
        	display: none;
        	font-size: 30px;
        	margin-right: 50px;
        }
        
        @media(max-width: 960px) {
        	.hiddenIcon {
        		display: block;
        	}
        	.memberSearchBar form {
        		display: none;
        	}
        }
        
        @media(max-width: 780px) {
        	.hiddenIcon {
        		text-align: left;
        		margin-left: 100px;
        	}
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
	    				
		    			}
		    		}
	
            	} //delMember 함수 끝
            	
            	$(document).ready(function() {
            		

            		
            		$('#searchButton').click(function() {
            			
                		let inputVal = $('.inputSearch').val();
                		let selected = $('.selected').val();
                		let jsonData = {'inputVal':inputVal, 'selected':selected};
            			
            			$.ajax({
            				type: 'POST',
            				url: '${contextPath}/managerMember/searchMember.do',
            				data: JSON.stringify(jsonData),
            				contentType : "application/json; charset=utf-8",
            				dataType: 'json',
            				success: function(jsonMemberList) {
//             					$('.memberManagement article').load('${contextPath}/managerMember/searchMember.do article');

		                        let string = '';
		                        let child = document.querySelectorAll('.memberManagement article .content');
		
		                        for(let j = 0; j < child.length; j++) {
		                            document.querySelector('.memberManagement article').removeChild(child[j]);
		                        }
		                        
			                        for(let j = 0; j < jsonMemberList.length; j++) {
		                      string += '<div class="content">' +
			                                '<div>'+jsonMemberList[j].memberId+'</div>' +
			                                '<div>'+jsonMemberList[j].memberPw+'</div>' +
			                                '<div>'+jsonMemberList[j].memberClass+'</div>' +
			                                '<div>'+jsonMemberList[j].memberName+'</div>' +
			                                '<div>'+jsonMemberList[j].memberBirth+'</div>' +
			                                '<div>'+jsonMemberList[j].memberPhone+'</div>' +
			                                '<div>'+jsonMemberList[j].memberEmail+'</div>' +
			                                '<div>'+jsonMemberList[j].memberDate+'</div>' +
			                                '<div><input type="button" class="dropMemberButton" value="삭제"></div>' +
			                            '</div>';
			                            
			                        }
			                        let article = document.querySelector('.memberManagement article');
			                            article.insertAdjacentHTML('beforeend', string);
            					
            				},
            				error: function() {
        	    				$('.memberManagement article').load('${contextPath}/member/manage.do article');
            				}
            			});
            		});
            		
            	});
            
    </script>
</head>
<body>

	<section class="memberManagement">
		<div class="title">
			<h1>회원 관리</h1>
			<div class="memberSearchBar">
				<div class="hiddenIcon"><i class="fa-solid fa-magnifying-glass"></i></div>
				<form action="" method="post" id="memberSearchForm">
					<input type="text" class="inputSearch" name="searchInput"/>
					<select name="searchOption" class="selected">
						<option value="id">아이디</option>
						<option value="name">이름</option>
					</select>
					<input type="button" value="검색" id="searchButton"/>
				</form>
			</div>
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