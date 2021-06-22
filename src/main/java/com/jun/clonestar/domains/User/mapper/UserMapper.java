package com.jun.clonestar.domains.User.mapper;


import com.jun.clonestar.domains.User.DTO.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    @Insert("insert into user(user_account, realName, nickName, pwd) values(#{user.account},#{user.realName},#{user.nickName},#{user.password})")
    int join(@Param("user") User user);

    @Select("select (user_account, pwd) from user where (user_account=#{user.account} and pwd=#{user.password)")
    String login(@Param("user") User user );
}
