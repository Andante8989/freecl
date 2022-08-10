# freecl
> free + clothes 의 합성어로 남녀노소 불문하고 누구나 입을수 있는 자유로움을 추구하는 옷 쇼핑몰입니다.   

<br/>

## 제작기간 & 참여인원
+ 2022년 6월 14일 ~ 2022년 7월 25일
+ 팀프로젝트 2명   

<br/>      
         
## 사용기술 & 개발환경
+ Java - JDK 1.8 
+ IDE : Eclipse
+ Spring 5.0.7 
+ Spring security
+ JUnit
+ JQuery
+ MyBatis
+ lombok
+ HikariCP
+ Ajax
+ Json
+ Oracle 18c
<br/>

## ERD 설계
![freeclERD](https://user-images.githubusercontent.com/98159122/183849285-4784e448-e326-4c29-be96-f24dd40edea7.png)


## 핵심기능   

+ 회원 (유저)   
  + 로그인 및 회원가입   
  + 내정보 조회, 내정보 수정, 회원탈퇴
  + security 권한 적용으로 비회원, 회원, 운영자 분기
  + 상품에 댓글작성   
  
+ 운영자
  + 회원 DB관리
  + 상품등록 및 상품삭제   
   
+ 상품구매
  + 상품클릭시 상품상세조회
  + 장바구니 기능
  + 상품 결제시 이니시스로 연동
  + 마이페이지에서 주문내역 조회
