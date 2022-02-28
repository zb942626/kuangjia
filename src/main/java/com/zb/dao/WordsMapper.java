package com.zb.dao;

import com.zb.bean.Words;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WordsMapper {
    List<Words> getWords();
    List<Words> getDayWords(Integer num);
    int setDayWords(@Param("list")  String[]ids);
    List<Words> getWordsSort(String num);
}
