package com.ict.persistent;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private long nt_num;
	private String nt_title;
	private String nt_content;
	private Date nt_date;
	private String nt_writer;
	
	/*
	create table noticeTbl (
	    nt_num NUMBER(3,0),
	    nt_title varchar2(50) not null,
	    nt_content varchar2(3000) not null,
	    nt_date date default sysdate,
	    nt_writer varchar2(100) not null
    );
	 */
}
