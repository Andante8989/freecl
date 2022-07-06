package com.ict.persistent;

import lombok.Data;

@Data
public class CartVO {

	private Long cartNum;
	private Long cart_proNum;
	private Long cart_amount;
	private Long cart_price;
	
}



/*
create table cartTbl(
cartNum NUMBER(5,0),
cart_proNum NUMBER(5,0),
cart_amount NUMBER(5,0)
);


*/