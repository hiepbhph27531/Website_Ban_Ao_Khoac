package com.example.demo.ASS_JVA.Service;

import com.example.demo.ASS_JVA.Model.User;
import com.example.demo.ASS_JVA.dto.UserDto;

import java.util.List;

public interface UserService {
    void saveUser(UserDto userDto);

    User findByEmail(String email);

    List<UserDto> findAllUsers();
}
