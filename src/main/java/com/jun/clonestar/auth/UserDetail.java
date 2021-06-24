package com.jun.clonestar.auth;

import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

@Getter
@Setter
@NoArgsConstructor
public class UserDetail implements UserDetails {

    private UserEntity userEntity;

    public UserDetail(UserEntity userEntity) { this.userEntity=userEntity; }



    @Override
    public String getPassword() {
        System.out.println(userEntity.getPassword());
        return userEntity.getPassword();
    }

    @Override
    public String getUsername() {
        return userEntity.getAccount();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }
}
