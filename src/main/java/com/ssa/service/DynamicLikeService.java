package com.ssa.service;

import com.ssa.pojo.Dynamic;
import com.ssa.pojo.DynamicLike;

public interface DynamicLikeService {
    Object getAllByLimit(DynamicLike pojo);

    void deleteById(Long id);

    void add(DynamicLike pojo);
}
