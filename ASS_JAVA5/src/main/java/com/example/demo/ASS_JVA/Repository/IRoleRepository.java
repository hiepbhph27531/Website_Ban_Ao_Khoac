package com.example.demo.ASS_JVA.Repository;

import com.example.demo.ASS_JVA.Model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IRoleRepository extends JpaRepository<Role,Long> {
    Role findByName(String name);
}
