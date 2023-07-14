package com.example.demo.ASS_JVA.Repository;

import com.example.demo.ASS_JVA.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IUserRepository extends JpaRepository<User,Long> {
    User findByEmail(String email);

    public User findByResetPasswordToken(String token);
}
