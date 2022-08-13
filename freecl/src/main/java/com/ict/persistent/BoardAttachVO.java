package com.ict.persistent;

import lombok.Data;

@Data
public class BoardAttachVO {

	private String fileName;
	private String uploadPath;
	
	private int boardNum;
}



/*

create table clothesImage(
	uploadPath varchar2(200) not null,
	fileName varchar2(200) not null,
	boardNum number(15)
);

*/