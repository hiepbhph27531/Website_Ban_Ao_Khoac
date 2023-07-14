package com.example.demo.ASS_JVA.Model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
@Entity
@Table(name = "sanpham")
@Getter
@Setter
public class AoKhoac {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "maaokhoac")
  private Integer maAoKhoac;

  @Column(name = "tenaokhoac")
  private String  tenAoKhoac;

  @Column(name = "soluong")
  private Integer soLuong;

  @Column(name = "dongia")
  private BigDecimal donGia ;

  @Column(name = "chatlieu")
  private String  chatLieu;

  @Column(name = "xuatsu")
  private String  xuatSu;

  public AoKhoac() {
  }

  public AoKhoac(Integer maAoKhoac, String tenAoKhoac, Integer soLuong, BigDecimal donGia, String chatLieu, String xuatSu) {
    this.maAoKhoac = maAoKhoac;
    this.tenAoKhoac = tenAoKhoac;
    this.soLuong = soLuong;
    this.donGia = donGia;
    this.chatLieu = chatLieu;
    this.xuatSu = xuatSu;
  }
}
