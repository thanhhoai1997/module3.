package com.example.repositories.impl;

import com.example.models.Khachhang;
import com.example.repositories.IKhachHangRepository;

import java.util.ArrayList;
import java.util.List;

public class KhachHangRepository implements IKhachHangRepository {
private List<Khachhang> khachhangs = new ArrayList<>();

    @Override
    public List<Khachhang> dsKhachHang() {
        return khachhangs;
    }

    @Override
    public void themKhachHang(Khachhang khachhang) {
        khachhangs.add(khachhang);

    }
}
