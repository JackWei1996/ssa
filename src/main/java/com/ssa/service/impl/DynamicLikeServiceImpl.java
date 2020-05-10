package com.ssa.service.impl;

import com.ssa.mapper.DynamicLikeMapper;
import com.ssa.model.MMGridPageVoBean;
import com.ssa.pojo.DynamicLike;
import com.ssa.service.DynamicLikeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class DynamicLikeServiceImpl  implements DynamicLikeService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    DynamicLikeMapper dynamicLikeMapper;
    @Override
    public Object getAllByLimit(DynamicLike pojo) {
        int size = 0;

        Integer begin = (pojo.getPage() - 1) * pojo.getLimit();
        pojo.setPage(begin);

        List<DynamicLike> rows = new ArrayList<>();
        try {
            rows = dynamicLikeMapper.getAllByLimit(pojo);
            size = dynamicLikeMapper.countAllByLimit(pojo);
        } catch (Exception e) {
            logger.error("根据条件查询异常", e);
        }
        MMGridPageVoBean<DynamicLike> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public void deleteById(Long id) {
        dynamicLikeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(DynamicLike pojo) {
        dynamicLikeMapper.insert(pojo);
    }
}
