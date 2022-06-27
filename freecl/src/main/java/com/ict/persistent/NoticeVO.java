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
}
