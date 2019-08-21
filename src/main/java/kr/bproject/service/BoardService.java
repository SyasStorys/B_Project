package kr.bproject.service;

import java.util.List;

import kr.bproject.common.SearchVO;
import kr.bproject.vo.BoardVO;

public interface BoardService {
	
	List<BoardVO> boardList(SearchVO searchVO) throws Exception;

	BoardVO boardRead(int brdno) throws Exception;

	int boardSave(BoardVO params) throws Exception;

	int boardReadCnt(int brdno) throws Exception;

	int boardDelete(int brdno) throws Exception;

	int boardCount(SearchVO searchVO) throws Exception;

	


}
