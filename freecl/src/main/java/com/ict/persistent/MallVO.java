package com.ict.persistent;

import java.sql.Date;

import lombok.Data;

@Data
public class MallVO {

	private int mallNum;
	private String company;
	private String shop_name;
	private String stat_nm;
	private int tot_point;
	private Date first_date;
	
}


/*

create table mall (
    mallNum number(10, 0),
    company varchar2(200),
    shop_name varchar2(200),
    stat_nm varchar2(100),
    tot_point number(5, 0),
    firt_date date
);

*/