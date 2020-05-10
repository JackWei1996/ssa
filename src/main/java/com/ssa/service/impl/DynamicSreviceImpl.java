package com.ssa.service.impl;

import com.ssa.mapper.DynamicMapper;
import com.ssa.model.MMGridPageVoBean;
import com.ssa.pojo.Dynamic;
import com.ssa.pojo.DynamicExample;
import com.ssa.service.DynamicService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class DynamicSreviceImpl implements DynamicService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    DynamicMapper dynamicMapper;
    @Override
    public Object getAllByLimit(Dynamic pojo) {
        int size = 0;

        Integer begin = (pojo.getPage() - 1) * pojo.getLimit();
        pojo.setPage(begin);

        List<Dynamic> rows = new ArrayList<>();
        try {
            rows = dynamicMapper.getAllByLimit(pojo);
            size = dynamicMapper.countAllByLimit(pojo);
        } catch (Exception e) {
            logger.error("根据条件查询异常", e);
        }
        MMGridPageVoBean<Dynamic> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public void deleteById(Long id) {
        dynamicMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(Dynamic pojo) {
        dynamicMapper.insert(pojo);
    }

    @Override
    public List<Dynamic> getMy(String name) {
        DynamicExample example = new DynamicExample();
        example.createCriteria().andNameEqualTo(name);
        return dynamicMapper.selectByExample(example);
    }
}
