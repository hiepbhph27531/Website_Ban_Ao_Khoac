package com.example.demo.ASS_JVA.Repository;

import com.example.demo.ASS_JVA.Model.AoKhoac;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface IAoKhoacRepository extends JpaRepository<AoKhoac,Integer> {

    AoKhoac findByMaAoKhoac(Integer ma);

    Page<AoKhoac> findByTenAoKhoacContains(String keyword, Pageable pageable);

    Page<AoKhoac> findByDonGiaBetween(BigDecimal min ,BigDecimal max, Pageable pageable);


}
