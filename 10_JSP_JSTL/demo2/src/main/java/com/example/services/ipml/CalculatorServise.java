package com.example.services.ipml;

import com.example.models.Calculator;
import com.example.repositories.ICalculatorRepository;
import com.example.repositories.ipml.CalculatorRepository;
import com.example.services.ICalculatorService;

public class CalculatorServise implements ICalculatorService {
    ICalculatorRepository iCalculatorRepository = new CalculatorRepository();


    @Override
    public float cong(Calculator calculator) {
        return iCalculatorRepository.cong(calculator);
    }

    @Override
    public float tru(Calculator calculator) {
        return iCalculatorRepository.tru(calculator);
    }

    @Override
    public float nhan(Calculator calculator) {
        return iCalculatorRepository.nhan(calculator);
    }

    @Override
    public float chia(Calculator calculator) {
        return iCalculatorRepository.chia(calculator);
    }
}
