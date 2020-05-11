package com.ssa.service;

import com.ssa.pojo.Dynamic;
import com.ssa.pojo.Feedback;

public interface FeedbackService {
    Object getAllByLimit(Feedback pojo);

    void deleteById(Long id);

    void add(Feedback pojo);

    Feedback seleteById(Long id);

    void update(Feedback pojo);
}
