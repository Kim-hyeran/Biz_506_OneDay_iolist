package com.biz.iolist.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class ProductVO {
	
	private long io_seq;
	private String io_date;
	private String io_time;
	private int io_input;
	private String io_pname;
	private int io_price;
	private int io_quan;
	private int io_total;
	
	private int io_iprice;
	private int io_oprice;
	
}
