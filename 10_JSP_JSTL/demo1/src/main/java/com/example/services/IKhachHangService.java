package com.example.services;

import com.example.models.Khachhang;

import java.util.List;

public interface IKhachHangService {
    List<Khachhang> dsKH();
    void  addKhachHang (Khachhang khachhang);
}
