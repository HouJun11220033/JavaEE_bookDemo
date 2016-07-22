package com.spring.hellospring;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

public class HelloWorld {

    private String message1;
    private String message2;

    public void getMessage1() {
        System.out.println("World Message1 : " + message1);
    }

    public void setMessage1(String message1) {
        this.message1 = message1;
    }

    public void getMessage2() {
        System.out.println("World Message2 : " + message2);
    }

    public void setMessage2(String message2) {
        this.message2 = message2;
    }
//
//    @PostConstruct
//    public void init() {
//        System.out.println("Init . . . . .");
//    }
//    @PreDestroy
//    public void destory() {
//        System.out.println("Destory . . . . .");
//    }

}
