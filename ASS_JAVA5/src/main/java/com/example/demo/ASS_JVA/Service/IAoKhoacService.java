package com.example.demo.ASS_JVA.Service;

import com.example.demo.ASS_JVA.Model.AoKhoac;
import org.springframework.data.domain.Page;

import java.math.BigDecimal;
import java.util.List;

public interface IAoKhoacService {

    List<AoKhoac> getAll();

    void add(AoKhoac aoKhoac);

    void delete(Integer ma);

    void update(Integer ma, AoKhoac aoKhoac);

    AoKhoac detail (Integer ma);

    Page<AoKhoac> search(String tenAoKhoac ,int  pageNo);

    Page<AoKhoac> searchGia(BigDecimal min, BigDecimal max,int  pageNo);
}
