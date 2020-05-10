package com.ssa.service.impl;

import com.ssa.mapper.FeedbackMapper;
import com.ssa.model.MMGridPageVoBean;
import com.ssa.pojo.Dynamic;
import com.ssa.pojo.Feedback;
import com.ssa.service.FeedbackService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class FeedbackServiceImpl implements FeedbackService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    FeedbackMapper feedbackMapper;
    @Override
    public Object getAllByLimit(Feedback pojo) {
        int size = 0;

        Integer begin = (pojo.getPage() - 1) * pojo.getLimit();
        pojo.setPage(begin);

        List<Feedback> rows = new ArrayList<>();
        try {
            rows = feedbackMapper.getAllByLimit(pojo);
            size = feedbackMapper.countAllByLimit(pojo);
        } catch (Exception e) {
            logger.error("根据条件查询异常", e);
        }
        MMGridPageVoBean<Feedback> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public void deleteById(Long id) {
        feedbackMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(Feedback pojo) {
        feedbackMapper.insert(pojo);
    }
}
