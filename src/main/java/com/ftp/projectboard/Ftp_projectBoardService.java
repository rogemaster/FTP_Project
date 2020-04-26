package com.ftp.projectboard;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service("ftp_projectBoardController")

public interface Ftp_projectBoardService {
	
	int boardCnt(Ftp_projectBoardVO vo) throws Exception;
	
	List<Ftp_projectBoardVO> all_board_list(Ftp_projectBoardVO vo) throws Exception;
	
	List<Ftp_projectBoardVO> search_writer_list(Ftp_projectBoardVO vo) throws Exception;
	
	List<Ftp_projectBoardVO> search_content_list(Ftp_projectBoardVO vo) throws Exception;
	
	String board_save(Ftp_projectBoardVO vo) throws Exception;
	
	int board_update(Ftp_projectBoardVO vo) throws Exception;
	
	Ftp_projectBoardVO board_view(Ftp_projectBoardVO vo) throws Exception;
	
	int board_delete(Ftp_projectBoardVO vo) throws Exception;

}
