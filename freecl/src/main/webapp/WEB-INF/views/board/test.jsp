<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

/* 레이아웃 외곽 너비 400px 제한*/

.wrap{

    max-width: 480px;

    margin: 0 auto; /* 화면 가운데로 */

    background-color: #fff;

    height: 100%;

    padding: 20px;

    box-sizing: border-box;



}

.reviewform textarea{

    width: 100%;

    padding: 10px;

    box-sizing: border-box;

}

.rating .rate_radio {

    position: relative;

    display: inline-block;

    z-index: 20;

    opacity: 0.001;

    width: 60px;

    height: 60px;

    background-color: #fff;

    cursor: pointer;

    vertical-align: top;

    display: none;

}

.rating .rate_radio + label {

    position: relative;

    display: inline-block;

    margin-left: -4px;

    z-index: 10;

    width: 60px;

    height: 60px;

    background-image: url('./img/starrate.png');

    background-repeat: no-repeat;

    background-size: 60px 60px;

    cursor: pointer;

    background-color: #f0f0f0;

}

.rating .rate_radio:checked + label {

    background-color: #ff8;

}



.cmd{

    margin-top: 20px;

    text-align: right;

}

.cmd input[type="button"]{

    padding: 10px 20px;

    border: 1px solid #e8e8e8;

    background-color: #fff;

    background-color:#000;  

    color: #fff;

}



.warning_msg {

    display: none;

    position: relative;

    text-align: center;

    background: #ffffff;

    line-height: 26px;

    width: 100%;

    color: red;

    padding: 10px;

    box-sizing: border-box;

    border: 1px solid #e0e0e0;

}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="orderform" id="orderform" method="post" class="orderform" action="/Order">

    <div class="basket" id="basket">

        <!-- "장바구니 헤더" -->

        <div class="row head">

            <div class="check">선택</div>

            <div class="img">이미지</div>

            <div class="pname">상품명</div>

            <div class="basketprice">가격</div>

            <div class="num">수량</div>

            <div class="sum">합계</div>

            <div class="basketcmd">삭제</div>

        </div>

        <!-- "장바구니 상품 목록" -->

        <div class="row data">

            <div class="check"><input type="checkbox" name="buy" value="260" checked="">&nbsp;</div>

            <div class="img"><img src="./img/basket1.jpg" width="60"></div>

            <div class="pname">

                <span>찜마마(XJ-92214/3)</span>

            </div>

            <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="20000">20,000원</div>

            <div class="num">

                <!-- "장바구니 수량 변경" -->

                <div class="updown">

                    <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="2">

                    <span><i class="fas fa-arrow-alt-circle-up up"></i></span>

                    <span><i class="fas fa-arrow-alt-circle-down down"></i></span>

                </div>

            </div>

            <!-- "장바구니 상품 합계" -->

            <div class="sum">40,000원</div>

            <div class="basketcmd"><a href="#" class="abutton">삭제</a></div>

        </div>

    </div>

    <!-- "장바구니 기능 버튼" -->

    <div class="right-align basketrowcmd">

        <a href="#" class="abutton">선택상품삭제</a>

        <a href="#" class="abutton">장바구니비우기</a>

    </div>

    <!-- "장바구니 전체 합계 정보" -->

    <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 4개</div>

    <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 74,200원</div>



    <div id="goorder" class="">

        <div class="clear"></div>

        <div class="buttongroup center-align cmd">

            <a href="#">선택한 상품 주문</a>

        </div>

    </div>

</form>

</body>
</html>