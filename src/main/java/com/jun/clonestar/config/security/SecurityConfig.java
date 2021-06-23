package com.jun.clonestar.config.security;


import org.springframework.security.config.annotation.web.builders.HttpSecurity;

public class SecurityConfig {
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("","/api/**","/js/**","/css/**","/images/**","/test/**")
                .permitAll()
                .anyRequest()
                .authenticated()
                .and()
                .formLogin()
                .loginPage("/user/login")
                .loginProcessingUrl("/auth/loginProc")
                .defaultSuccessUrl("/board/feed");
    }
}

