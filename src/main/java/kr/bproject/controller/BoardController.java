package kr.bproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.bproject.common.SearchVO;
import kr.bproject.service.BoardService;
import kr.bproject.vo.BoardVO;

@Controller
@RequestMapping("/*")
public class BoardController {

	@Autowired
	private BoardService boardService;

	/**
	 * �Խ��� ����Ʈ
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "boardList.ino")
	public ModelAndView boardList(SearchVO searchVO) throws Exception {
		ModelAndView mv = new ModelAndView("blog");
		
		searchVO.pageCalculate(boardService.boardCount(searchVO)); // startRow, endRow
		List<BoardVO> listview = boardService.boardList(searchVO);

		mv.addObject("listview", listview);
		mv.addObject("searchVO",searchVO);

		return mv;
	}

	/**
	 * �Խ��� �б�
	 * 
	 * @return
	 * @throws Exception
	 */

	@RequestMapping(value = "boardRead.ino")
	public ModelAndView boardRead(@RequestParam int brdno) throws Exception {

		ModelAndView mv = new ModelAndView("boardForm");

		BoardVO boardInfo = boardService.boardRead(brdno);
		boardService.boardReadCnt(brdno);

		mv.addObject("boardInfo", boardInfo);

		return mv;
	}

	/**
	 * �Խ��� ����&����
	 * 
	 * @return
	 * @throws Exception
	 */

	@RequestMapping(value = "boardSave.ino")
	public ModelAndView boardSave(@ModelAttribute BoardVO params) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:boardList.ino");
		System.out.println("params ::::::::" + params);

		boardService.boardSave(params);

		return mv;
	}

	/**
	 * �Խ��� ����
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "boardForm.ino")
	public ModelAndView boardWrite() throws Exception {

		ModelAndView mv = new ModelAndView("boardForm");

		return mv;
	}
	
	/**
	 * �Խ��� ����
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "boardDelete.ino")
	public ModelAndView boardDelete(@RequestParam int brdno) throws Exception {

		ModelAndView mv = new ModelAndView("boardForm");
		
		boardService.boardDelete(brdno);

		return mv;
	}
	
	

}
