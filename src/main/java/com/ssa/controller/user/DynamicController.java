package com.ssa.controller.user;

import com.ssa.pojo.ClockIn;
import com.ssa.pojo.Dynamic;
import com.ssa.pojo.User;
import com.ssa.service.DynamicService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller("DynamicController")
@RequestMapping("/dynamic")
public class DynamicController {
    @Autowired
    private DynamicService dynamicService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/dynamicList")
    public String fenleiList() {
        return "user/dynamicList";
    }

    @RequestMapping("/dynamicUserList")
    public String typeUserList() {
        return "user/dynamicUserList";
    }

    /**
     * 返回查询数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Dynamic pojo) {
        if (pojo == null||pojo.getPage()==null||pojo.getLimit()==null){
            pojo = new Dynamic();
            pojo.setPage(1);
            pojo.setLimit(100);
        }
        return dynamicService.getAllByLimit(pojo);
    }

    @RequestMapping("/getAllByLimitUser")
    @ResponseBody
    public Object getAllByLimitUser(Dynamic pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());
        return dynamicService.getAllByLimit(pojo);
    }

    @RequestMapping("/getMy")
    @ResponseBody
    public List<Dynamic> getAllByLimitUser(String name) {
        return dynamicService.getMy(name);
    }

    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            dynamicService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("删除异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/add")
    public String addUserPage() {
        return "user/dynamicAdd";
    }

    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Dynamic pojo) {
        try {
            pojo.setCreateTime(new Date());
            dynamicService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
