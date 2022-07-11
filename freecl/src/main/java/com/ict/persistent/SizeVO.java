package com.ict.persistent;

import lombok.Data;

@Data
public class SizeVO {
	
	private int boardNum;
	private String sizeName;
}


/*

CREATE TABLE sizeTbl (
    sizeNum number(5,0),
    sizeName varchar2(20) not null
    );

*/