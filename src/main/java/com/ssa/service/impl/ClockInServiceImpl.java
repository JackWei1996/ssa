package com.ssa.service.impl;

import com.ssa.mapper.ClockInMapper;
import com.ssa.model.MMGridPageVoBean;
import com.ssa.pojo.ClockIn;
import com.ssa.pojo.ClockInExample;
import com.ssa.service.ClockInService;
import com.ssa.utils.GPSUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ClockInServiceImpl implements ClockInService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    ClockInMapper clockInMapper;
    @Override
    public Object getAllByLimit(ClockIn pojo) {
        int size = 0;

        Integer begin = (pojo.getPage() - 1) * pojo.getLimit();
        pojo.setPage(begin);

        List<ClockIn> rows = new ArrayList<>();
        try {
            rows = clockInMapper.getAllByLimit(pojo);
            size = clockInMapper.countAllByLimit(pojo);
        } catch (Exception e) {
            logger.error("根据条件查询异常", e);
        }
        MMGridPageVoBean<ClockIn> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public void deleteById(Long id) {
        clockInMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(ClockIn pojo) {
        clockInMapper.insert(pojo);
    }

    @Override
    public void update(ClockIn pojo) {
        ClockInExample example = new ClockInExample();
        example.createCriteria().andUserIdEqualTo(pojo.getUserId())
                .andEndTimeIsNull();
        List<ClockIn> clockIns = clockInMapper.selectByExample(example);
        if (clockIns.size()>0){
            ClockIn old = clockIns.get(0);
            double jl = GPSUtils.GetDistance(Double.parseDouble(old.getStartLat()), Double.parseDouble(old.getStartLat()), Double.parseDouble(pojo.getEndLat()), Double.parseDouble(pojo.getEndLng()));
            pojo.setDistance(jl+"");
            pojo.setId(clockIns.get(0).getId());
            clockInMapper.updateByPrimaryKeySelective(pojo);
        }

    }

}
