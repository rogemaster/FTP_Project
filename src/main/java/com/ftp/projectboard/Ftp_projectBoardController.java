package com.ftp.projectboard;



import java.io.File;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Array;

@Controller
public class Ftp_projectBoardController {
	
	@Resource(name = "ftp_projectBoardService")
	private Ftp_projectBoardService service;
	
	@Autowired
	ServletContext ctx;
	
	// 리스트 출력
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_list.do")
	public String ftpproject1_get_board_list(HttpServletRequest req, Ftp_projectBoardVO vo, ModelMap model, @RequestParam(defaultValue = "1") int curPage) throws Exception {
		
		String target = req.getParameter("search_target");
		String word = req.getParameter("search_word");
		
		System.out.println("TARGET = " + req.getParameter("search_target"));
		System.out.println("WORD = " + req.getParameter("search_word"));
		
		int listCnt = service.boardCnt(vo);
		Ftp_projectBoardPaging paging = new Ftp_projectBoardPaging(listCnt, curPage);
		
		vo.setStartIndex(paging.getStartIndex());
		vo.setCntPerPage(paging.getPageSize());
		
		
		List<Ftp_projectBoardVO> board_list = service.all_board_list(vo);
		
		
		if(word != null && target.equals("board_writer_name")) {
			vo.setBoard_writer_name(word);
			board_list = service.search_writer_list(vo);
			
			if(board_list.contains("")) {
				board_list = service.all_board_list(vo);
			}
			
		}else if(word != null && target.equals("board_content_text")) {
			vo.setBoard_content_text("%" + word + "%");
			board_list = service.search_content_list(vo);
			
		}else {
			board_list = service.all_board_list(vo);
		}
	 
		model.addAttribute("list", board_list);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("paging", paging);
		
		return "views/board/board_list";
		
	}
	
	// 게시글 상세
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_view.do")
	public String ftpproject1_tab05(ModelMap model, Ftp_projectBoardVO vo, @RequestParam int no) throws Exception {
		
		vo.setBoard_seq(no);
		
		Ftp_projectBoardVO board_view = service.board_view(vo);
		model.addAttribute("board_view", board_view);
		
		return "views/board/board_view";
	}
	
	// 특정 게시글 수정전환
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_view_details.do")
	public String ftpproject1_tab07(ModelMap model, Ftp_projectBoardVO vo, @RequestParam int no) throws Exception {
		
		vo.setBoard_seq(no);
		
		Ftp_projectBoardVO board_view = service.board_view(vo);
		model.addAttribute("board_view", board_view);
		
		return "views/board/board_view_details";
	}
	
	
	// 새글 쓰기
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_insert.do")
	public String ftpproject1_tab02(ModelMap model, Ftp_projectBoardVO vo) throws Exception {
		
		return "views/board/board_insert";
	}
	
	// 새글 저장
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_save.do", method = RequestMethod.POST, produces="application/text;charset=utf-8")
	public String ftpproject1_tab03(HttpServletRequest req, @RequestParam MultipartFile board_img, Ftp_projectBoardVO vo) throws Exception {
		
		long time = System.currentTimeMillis();
		String board_img_name = String.valueOf(time) + "_" + board_img.getOriginalFilename();

		String path = ctx.getRealPath(String.valueOf(time));
		File dir = new File(path);
		
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		File dst = new File(dir, board_img_name);
		board_img.transferTo(dst);
		
		String attach_board_img = "/" + time + "/" + board_img_name;
		
		vo.setBoard_title(req.getParameter("board_title"));
		vo.setBoard_writer_name(req.getParameter("board_writer_name"));
		vo.setBoard_content_text(req.getParameter("board_content_text"));
		
		if(req.getParameter("board_notice") == null) {
			vo.setBoard_notice("n");
			
		}else {
			vo.setBoard_notice(req.getParameter("board_notice"));
			
		}
		
		vo.setBoard_img_path(attach_board_img);
		String result = service.board_save(vo);
		
		return "views/board/result";
	}
	
	//게시글 수정
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_update.do")
	public String ftpproject1_tab04(@RequestParam int no, HttpServletRequest req, Ftp_projectBoardVO vo) throws Exception {
		
		Enumeration param = req.getParameterNames();
		System.out.println(param);
		
		
		System.out.println(no);
		
	//	vo.setBoard_seq(no);
	//	int result = service.board_update(vo);
		
		return "views/board/result"; 
	}
	
	// 게시글 삭제
	@RequestMapping(value = "/ftp_project1_board/ftp_project1_Board_delete.do", method = RequestMethod.GET)
	@ResponseBody
	public void ftpproject1_tab06(HttpServletRequest req, Ftp_projectBoardVO vo, @RequestParam String[] chkBoxArr) throws Exception {
		
		System.out.println("delete Connect??");
		
		int result = 0;
		
		String[] numArr = req.getParameterValues("chkBoxArr");
		
		for(int i = 0; i < numArr.length; i++) {
			System.out.println(numArr[i]);
		}
		
	//	return result;
		
	}
	
	
}
