package com.ssa.service;

import com.ssa.pojo.ClockIn;

public interface ClockInService {
    Object getAllByLimit(ClockIn pojo);

    void deleteById(Long id);

    void add(ClockIn pojo);
}
