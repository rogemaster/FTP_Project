package com.ftp.projectboard;

import java.sql.Date;

public class Ftp_projectBoardVO {
	
	private int board_seq;
	private String board_title;
	private String board_writer_name;
	private String board_content_text;
	private Date board_reg_date;
	private String board_notice;
	private String board_img_path;
	private int startIndex;
	private int cntPerPage;
	
	
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getCntPerPage() {
		return cntPerPage;
	}
	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	
	public String getBoard_img_path() {
		return board_img_path;
	}
	public void setBoard_img_path(String board_img_path) {
		this.board_img_path = board_img_path;
	}
	public int getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_writer_name() {
		return board_writer_name;
	}
	public void setBoard_writer_name(String board_writer_name) {
		this.board_writer_name = board_writer_name;
	}
	public String getBoard_content_text() {
		return board_content_text;
	}
	public void setBoard_content_text(String board_content_text) {
		this.board_content_text = board_content_text;
	}
	public Date getBoard_reg_date() {
		return board_reg_date;
	}
	public void setBoard_reg_date(Date board_reg_date) {
		this.board_reg_date = board_reg_date;
	}
	public String getBoard_notice() {
		return board_notice;
	}
	public void setBoard_notice(String board_notice) {
		this.board_notice = board_notice;
	}
	
	
	

}
