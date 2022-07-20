package com.ict.persistent;

import java.sql.Date;

import lombok.Data;

@Data
public class BuyVO {

	private String merchant_uid;
	private Date buydate;
	private String buyer;
	private int buy_price;
	private String buyColor;
	private String buySize;
	
	
	
	/*
create table buyTbl(
    merchant_uid varchar2(100) not null primary key,
    buydate date default sysdate,
    buyer varchar2(50) not null,
    buy_price number(10,0),
    buy_color varchar2(10),
    buy_size varchar2(5) not null
);
	 * 
	 */
}
