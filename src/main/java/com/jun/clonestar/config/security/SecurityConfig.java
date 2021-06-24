package com.jun.clonestar.config.security;


import com.jun.clonestar.auth.UserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration // 빈등록 (IoC 관리)
@EnableWebSecurity //시큐리티 필터가 등록
public class SecurityConfig extends WebSecurityConfigurerAdapter   {

    @Autowired
    private UserDetailService userDetailService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailService)
                .passwordEncoder(passwordEncoder());
        System.out.println("auth : "+auth
                .userDetailsService(userDetailService)
                .passwordEncoder(passwordEncoder()));
    }
    @Override
    public void configure(WebSecurity webSecurity) throws Exception{
        webSecurity.ignoring().antMatchers("/images/**","/js/**","/css/**","lib/**");
    }


    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception{
    httpSecurity.csrf().disable();
    httpSecurity.authorizeRequests()
            .antMatchers("/api/**","/user/**")
            .permitAll()
            .anyRequest()
            .authenticated()
            .and()
                .formLogin()
                .loginPage("/user/login")
                .loginProcessingUrl("/api/login")
                .usernameParameter("account")
                .defaultSuccessUrl("/feed");


    }

}



