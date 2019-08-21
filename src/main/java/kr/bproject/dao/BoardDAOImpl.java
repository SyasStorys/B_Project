package kr.bproject.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.bproject.common.SearchVO;
import kr.bproject.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardVO> boardList(SearchVO searchVO) throws Exception{
		return sqlSession.selectList("boardList", searchVO);
	}

	@Override
	public BoardVO boardRead(int brdno) throws Exception {
		return sqlSession.selectOne("boardRead", brdno);
	}

	@Override
	public int boardUpdate(BoardVO params) throws Exception {
		return sqlSession.update("boardUpdate", params);
	}

	@Override
	public int boardInsert(BoardVO params) throws Exception {
		return sqlSession.insert("boardInsert", params);
	}

	@Override
	public int boardReadCnt(int brdno) throws Exception {
		return sqlSession.update("boardReadCnt", brdno);
	}

	@Override
	public int boardDelete(int brdno) throws Exception {
		return sqlSession.update("boardDelete", brdno);
	}

	@Override
	public int boardCount(SearchVO searchVO) throws Exception {
		return sqlSession.selectOne("boardCount", searchVO);
	}

}
