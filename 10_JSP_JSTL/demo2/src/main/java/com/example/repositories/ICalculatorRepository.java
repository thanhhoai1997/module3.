package com.example.repositories;

import com.example.models.Calculator;

public interface ICalculatorRepository {

    float cong(Calculator calculator);
    float tru(Calculator calculator);
    float nhan(Calculator calculator);
    float chia(Calculator calculator);
}
