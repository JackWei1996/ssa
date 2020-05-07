package com.ssa.service;

import com.ssa.pojo.DynamicComment;

public interface DynamicCommentService {
    Object getAllByLimit(DynamicComment pojo);

    void deleteById(Long id);

    void add(DynamicComment pojo);
}
