package com.ict.persistent;

import lombok.Data;

@Data
public class ChartVO {
	
	private int advertisement;
	private int discord;
	private int suspension;
	private int opening;
	private int unconfirmed;
	private int holiday;
}



/*

create table chart (
    advertisement number(10, 0),
    discord number(10,0),
    suspension number(10,0),
    opening number(10,0),
    unconfirmed number(10,0),
    holiday number(10,0)
);


*/