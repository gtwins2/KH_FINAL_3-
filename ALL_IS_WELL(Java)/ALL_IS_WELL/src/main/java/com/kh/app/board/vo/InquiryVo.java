package com.kh.app.board.vo;

import lombok.Data;

@Data
public class InquiryVo {
	private String no;
	private String memberNo;
	private String title;
	private String content;
	private String enrollDate;
	private String modifyDate;
	private String inquiryStatus;
}
