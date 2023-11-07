package com.example.repositories;

import com.example.models.Khachhang;

import java.util.List;

public interface IKhachHangRepository {
    List<Khachhang> dsKhachHang();
    void themKhachHang(Khachhang khachhang);
}
