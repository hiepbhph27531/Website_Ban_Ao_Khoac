package com.example.demo.ASS_JVA.Service.Impl;

import com.example.demo.ASS_JVA.Repository.IAoKhoacRepository;
import com.example.demo.ASS_JVA.Model.AoKhoac;
import com.example.demo.ASS_JVA.Service.IAoKhoacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Service
public class AoKhoacService implements IAoKhoacService {

    @Autowired
    private IAoKhoacRepository repository;

    @Override
    public List<AoKhoac> getAll() {

        return repository.findAll();
    }

    @Override
    public void add(AoKhoac aoKhoac) {
        repository.save(aoKhoac);
    }

    @Override
    public void delete(Integer id) {
        repository.deleteById(id);
    }

    @Override
    public void update(Integer id, AoKhoac newAo) {
        repository.save(newAo);
    }

    @Override
    public AoKhoac detail(Integer ma) {
        return repository.findByMaAoKhoac(ma);
    }

    @Override
    public Page<AoKhoac> search(String tenAoKhoac, int pageNo) {
        Pageable pageable = PageRequest.of(pageNo - 1, 10);
        return repository.findByTenAoKhoacContains(tenAoKhoac, pageable);
    }

    @Override
    public Page<AoKhoac> searchGia(BigDecimal min, BigDecimal max, int pageNo) {
        Pageable pageable = PageRequest.of(pageNo - 1, 10);
        return repository.findByDonGiaBetween(min, max, pageable);
    }


}
