package com.ssa.service;

import com.ssa.pojo.Dynamic;
import com.ssa.pojo.DynamicComment;

public interface DynamicService {
    Object getAllByLimit(Dynamic pojo);

    void deleteById(Long id);

    void add(Dynamic pojo);
}
