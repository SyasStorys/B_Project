package kr.bproject.controller;


import java.io.File;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import kr.bproject.common.SearchVO;
import kr.bproject.service.BoardService;
import kr.bproject.vo.BoardVO;

@Controller
@RequestMapping("/*")
public class BoardController {

	// ���ε�� ������ ����� ��ġ
	private final String PATH = "C:\\workspace\\B_Project\\src\\main\\webapp\\resources\\uploadfile\\";

	@Autowired
	private MappingJackson2JsonView jsonView;

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

	/**
	 * ���� ���ε�
	 * JsonView Ȱ��
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="fileUpload.ino")
	public ModelAndView fileUpload(MultipartHttpServletRequest req) throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setView(jsonView);

		Iterator<String> itr = req.getFileNames();
		try {
			if(itr.hasNext()) {
				List<MultipartFile> mpf = req.getFiles(itr.next());
				// �ӽ� ������ �����Ѵ�.
				for(int i = 0; i < mpf.size(); i++) {
					File file = new File(PATH + mpf.get(i).getOriginalFilename());
					mpf.get(i).transferTo(file);
				}

				// ���ε�� ������ ���� ��� �����Դϴ�.
				JSONObject json = new JSONObject();
				json.put("code",  "true");
				mv.addObject("result", json);
				return mv;
			} else {
				JSONObject json = new JSONObject();
				json.put("code",  "false");
				mv.addObject("result", json);
				return mv;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			return mv;
		}

	}




}
