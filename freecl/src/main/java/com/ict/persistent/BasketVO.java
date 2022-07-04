package com.ict.persistent;

import lombok.Data;

@Data
public class BasketVO {

	private Long sbNum;
	private String sb_id;
	private Long sb_proNum;
	private String sb_title;
	private Long sb_price;
	private Long sb_amount;
	private String sb_size;
	private String sb_color;
}






/*
create table sbTbl(
sbNum NUMBER(5,0),
sb_id varchar2(20) not null,
sb_proNum NUMBER(5,0),
sb_title varchar2(30) not null,
sb_price NUMBER(10,0) not null,
sb_amount NUMBER(5,0) not null,
sb_size varchar2(5) not null,
sb_color varchar2(10) not null,

);


*/