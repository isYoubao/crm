package com.kuge;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@MapperScan("com.kuge.dao")
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class KugeApplication {

    public static void main(String[] args) {
        SpringApplication.run(KugeApplication.class, args);
    }

}
