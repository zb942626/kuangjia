package com.zb.controller;


import com.zb.bean.IdsRequest;
import com.zb.bean.Words;
import com.zb.dao.WordsMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class WordsController {
    @Autowired
    HttpServletRequest request;

    @Autowired
    private WordsMapper wordsMapper;
    @RequestMapping("/words")
    public String getWords() {
        List list=wordsMapper.getWords();
        request.setAttribute("list",list);
        return "words/allwords";

    }

    @RequestMapping("/wordsSort")
    public String getWordsSort(@Param("num") String num) {
        List list=wordsMapper.getWordsSort(num);
        request.setAttribute("list",list);
        return "words/allwords";

    }
    @RequestMapping("/daywords")
    public String getDayWords(Integer num) {
        List list=wordsMapper.getDayWords(num);
        request.setAttribute("list",list);
        return "words/daywords";

    }
    @RequestMapping("/setdayword")
    public int setDayWords( IdsRequest request) {
        int num=0;
        if (request.getIdss().length()>0) {
            String[] ids=request.getIdss().split(",");
            num = wordsMapper.setDayWords(ids);
        }
            return num;
    }

}
