package com.example.repositories.ipml;

import com.example.models.Calculator;
import com.example.repositories.ICalculatorRepository;

public class CalculatorRepository implements ICalculatorRepository {

    @Override
    public float cong(Calculator calculator) {
        return (float) (calculator.getNum1() + calculator.getNum2());
    }

    @Override
    public float tru(Calculator calculator) {
        return (float) (calculator.getNum1() - calculator.getNum2());
    }

    @Override
    public float nhan(Calculator calculator) {
        return (float) (calculator.getNum1() * calculator.getNum2());
    }

    @Override
    public float chia(Calculator calculator) {
        return (float) (calculator.getNum1() / calculator.getNum2());
    }
}
