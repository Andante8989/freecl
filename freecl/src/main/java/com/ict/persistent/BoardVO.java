package com.ict.persistent;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int boardNum;
	private String name;
	private String content;
	private String image;
	private String kind;
	private String useyn;
	private int hit;
	private Date bdate;
	private int price;
	private int amount;
	private String color;
	private String product_size;
	
	
	/*
	 CREATE table boardTbl (
	    boardNum number(5,0),
	    name varchar2(30) not null,
	    content varchar2(1000) not null,
	    image varchar2(100) default 'default.jpg', 
	    kind varchar2(20) not null, -- pants, outer, 
	    useyn char default 'y',
	    hit number default 0 not null,
	    bdate date default sysdate,
	    price NUMBER(10,0) not null,
	    amount NUMBER(5,0) not null,
	    color varchar2(10) not null,
	    product_size varchar2(5) not null -- size는 예약어 이므로 사용불가
	);
	 */
	
}
