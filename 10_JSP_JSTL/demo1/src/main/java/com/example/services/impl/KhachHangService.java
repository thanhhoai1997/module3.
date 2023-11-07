package com.example.services.impl;

import com.example.models.Khachhang;
import com.example.repositories.IKhachHangRepository;
import com.example.repositories.impl.KhachHangRepository;
import com.example.services.IKhachHangService;

import java.util.List;

public class KhachHangService implements IKhachHangService {
    IKhachHangRepository iKhachHangRepository = new KhachHangRepository();

    @Override
    public List<Khachhang> dsKH() {
        return iKhachHangRepository.dsKhachHang();
    }

    @Override
    public void addKhachHang(Khachhang khachhang) {
        iKhachHangRepository.themKhachHang(khachhang);

    }
}
