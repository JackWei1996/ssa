package com.ssa;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
// 开启注解事务管理
@EnableTransactionManagement
@MapperScan("com.ssa.mapper")
public class SsaApplication {

    public static void main(String[] args) {
        SpringApplication.run(SsaApplication.class, args);
    }

}
