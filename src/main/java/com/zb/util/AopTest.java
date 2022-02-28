package com.zb.util;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;



//@Component
//@Aspect
public class AopTest {
    @Pointcut("execution(* com.zb.controller.*.*(..))")
    public void pontcut(){}

    @Before("pontcut()")
    public void before(){
        System.out.println("执行方法之前");
    }
    //环绕型
    @Around("pontcut()")
    public void around(ProceedingJoinPoint point){
        try {
            long start= System.currentTimeMillis();

            System.out.println("start"+System.currentTimeMillis());
            point.proceed();
            long end=System.currentTimeMillis();
            System.out.println("end"+System.currentTimeMillis());
            System.out.println("耗时"+(end-start));
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }


    }
}
