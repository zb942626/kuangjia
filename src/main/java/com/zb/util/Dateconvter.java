package com.zb.util;


import org.springframework.core.convert.converter.Converter;

import java.lang.annotation.Annotation;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Dateconvter  implements Converter<String, Date> {

    SimpleDateFormat[]sdfs=new SimpleDateFormat[]{
            new SimpleDateFormat("yyyy-MM-dd"),
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
            new SimpleDateFormat("yyyy/MM/dd"),
            new SimpleDateFormat("MM-dd-yyyy"),
            new SimpleDateFormat("MM/dd/yyyy")
    };
    public Date convert(String s) {
        Date date = new Date();
        for (SimpleDateFormat format:sdfs){
            try {
                format.parse(s);
                break;
            } catch (ParseException e) {
                e.printStackTrace();
                continue;
            }
        }
        return date;
    }
}
