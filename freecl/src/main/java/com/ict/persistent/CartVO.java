package com.ict.persistent;

import lombok.Data;

@Data
public class CartVO {

	private Long cartNum;
	private String userId;
	private Long cart_proNum;
	private Long cart_amount;
	private Long cart_price;
	private String cart_name;
	private String cart_color;
	private String cart_size;
}



/*
create table cartTbl(
cartNum NUMBER(5,0),
cart_proNum NUMBER(5,0),
cart_amount NUMBER(5,0)
cart_price NUMBER(10,0),
cart_name varchar2(100),
cart_color varchar2(10),
cart_size varchar2(10)
);


*/