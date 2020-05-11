package com.ssa.service.impl;

import com.ssa.mapper.DynamicCommentMapper;
import com.ssa.mapper.DynamicMapper;
import com.ssa.model.MMGridPageVoBean;
import com.ssa.pojo.ClockIn;
import com.ssa.pojo.Dynamic;
import com.ssa.pojo.DynamicComment;
import com.ssa.pojo.DynamicExample;
import com.ssa.service.DynamicCommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class DynamicCommentServiceImpl implements DynamicCommentService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    DynamicCommentMapper dynamicCommentMapper;
    @Resource
    DynamicMapper dynamicMapper;
    @Override
    public Object getAllByLimit(DynamicComment pojo) {
        int size = 0;

        Integer begin = (pojo.getPage() - 1) * pojo.getLimit();
        pojo.setPage(begin);

        List<DynamicComment> rows = new ArrayList<>();
        try {
            rows = dynamicCommentMapper.getAllByLimit(pojo);
            size = dynamicCommentMapper.countAllByLimit(pojo);
            if (pojo.getDynamicId() !=null){
                Dynamic dynamic = dynamicMapper.selectByPrimaryKey(Long.parseLong(pojo.getDynamicId() + ""));
                dynamic.setViewCount(dynamic.getViewCount()+1);
                dynamicMapper.updateByPrimaryKey(dynamic);
            }
        } catch (Exception e) {
            logger.error("根据条件查询异常", e);
        }
        MMGridPageVoBean<DynamicComment> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public void deleteById(Long id) {
        dynamicCommentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(DynamicComment pojo) {
        dynamicCommentMapper.insert(pojo);
    }
}
