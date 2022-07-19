package com.ict.persistent;

import java.sql.Date;

import lombok.Data;

@Data
public class BuyVO {

	private int buyNum;
	private int productNum;
	private Date buydate;
	private String buyer;
	private int buy_price;
	private int buy_amount;
	private String buy_color;
	private String buy_size;
	
	
	
	
	
	/*
create table buyTbl(
    buyNum number(5,0), -- 주문번호
    productNum number(5,0), -- 상품번호
    buydate date default sysdate,
    buyer varchar2(50) not null,
    buy_price number(10,0),
    buy_amount number(5,0),
    buy_color varchar2(10),
    buy_size varchar2(5) not null
);
	 * 
	 */
}
