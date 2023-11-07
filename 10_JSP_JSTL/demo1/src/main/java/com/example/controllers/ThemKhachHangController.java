package com.example.controllers;

import com.example.models.Khachhang;
import com.example.services.IKhachHangService;
import com.example.services.impl.KhachHangService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ThemKhachHangController" , urlPatterns =  "/themkhachhang")
public class ThemKhachHangController extends HttpServlet {
    private IKhachHangService khachHangService = new KhachHangService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String address = req.getParameter("diachi");
        String date = req.getParameter("ngaysinh");
        String button = req.getParameter("them");
        Khachhang khachhang = new Khachhang(name,address,date);
        khachHangService.addKhachHang(khachhang);
        if (button.equals("them")){
            req.getRequestDispatcher("khachhang/them.jsp").forward(req,resp);
        }else if(button.equals("hienthi")){
            List<Khachhang> khachhangs = khachHangService.dsKH();
            req.setAttribute("danhsach", khachhangs);
            req.getRequestDispatcher("khachhang/hienthi.jsp").forward(req,resp);

        }





    }
}
