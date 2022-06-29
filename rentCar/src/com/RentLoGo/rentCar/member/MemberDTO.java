package com.RentLoGo.rentCar.member;

import java.sql.Date;

import lombok.Data;

//CREATE TABLE "member" (
//		   "member_id"    VARCHAR2(20) NOT NULL, -- 회원id
//		   "member_pw"    VARCHAR2(20) NOT NULL, -- 회원pw
//		   "member_class" CHAR(1)      NULL,     -- 회원분류
//		   "member_name"  VARCHAR2(20) NULL,     -- 회원이름
//		   "member_birth" VARCHAR2(20) NULL,     -- 생년월일
//		   "member_phone" VARCHAR2(20) NULL,     -- 전화번호
//		   "member_email" VARCHAR2(50) NULL,     -- 이메일
//		   "member_date"  DATE         NULL      -- 가입날짜

@Data
public class MemberDTO {
	
	private String memberId;
	private String memberPw;
	private String memberClass;
	private String memberName;
	private String memberBirth;
	private String memberPhone;
	private String memberEmail;
	private Date memberDate;
	
}
