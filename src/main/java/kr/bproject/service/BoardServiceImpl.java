package kr.bproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.bproject.common.SearchVO;
import kr.bproject.dao.BoardDAO;
import kr.bproject.vo.BoardVO;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> boardList(SearchVO searchVO) throws Exception {
		return boardDAO.boardList(searchVO);
	}

	@Override
	public BoardVO boardRead(int brdno) throws Exception {
		return boardDAO.boardRead(brdno);
	}

	@Override
	public int boardSave(BoardVO params) throws Exception {
		
		int brdno = params.getBrdno();
		String sBrdno = String.valueOf(brdno);
		
		int save = 0;
		
		if(sBrdno == null || sBrdno == "" || sBrdno.equals("0")) {
			save = boardDAO.boardInsert(params);
			return save;
		} 
		else {
			save += boardDAO.boardUpdate(params);
			return save;
		}
	}

	@Override
	public int boardReadCnt(int brdno) throws Exception {
		return boardDAO.boardReadCnt(brdno);
	}

	@Override
	public int boardDelete(int brdno) throws Exception {
		return boardDAO.boardDelete(brdno);
	}

	@Override
	public int boardCount(SearchVO searchVO) throws Exception {
		return boardDAO.boardCount(searchVO);
	}
	
	

}
