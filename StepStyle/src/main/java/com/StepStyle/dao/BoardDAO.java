package com.StepStyle.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.StepStyle.vo.BoardVO;


@Repository
public class BoardDAO {
	
	@Autowired
    private SqlSession sqlSession;

    private static final String namespace = "com.StepStyle.mapper.BoardMapper";

    public List<BoardVO> getBoardList() {
        return sqlSession.selectList(namespace + ".getBoardList");
    }

    public BoardVO getBoardById(int bidx) {
        return sqlSession.selectOne(namespace + ".getBoardById", bidx);
    }

    public void insertBoard(BoardVO board) {
        sqlSession.insert(namespace + ".insertBoard", board);
    }

    public void updateBoard(BoardVO board) {
        sqlSession.update(namespace + ".updateBoard", board);
    }

    public void deleteBoard(int bidx) {
        sqlSession.delete(namespace + ".deleteBoard", bidx);
    }
}
