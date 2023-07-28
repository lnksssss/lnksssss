package com.StepStyle.service;

import java.util.List;

import com.StepStyle.vo.BoardVO;

public interface BoardService {

    List<BoardVO> getBoardList();
    BoardVO getBoardById(int bidx);
    void insertBoard(BoardVO board);
    void updateBoard(BoardVO board);
    void deleteBoard(int bidx);
}

