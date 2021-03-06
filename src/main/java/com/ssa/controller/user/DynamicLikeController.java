package com.ssa.controller.user;

import com.ssa.pojo.Dynamic;
import com.ssa.pojo.DynamicLike;
import com.ssa.pojo.User;
import com.ssa.service.DynamicLikeService;
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

@Controller("DynamicLikeController")
@RequestMapping("/dynamicLike")
public class DynamicLikeController {
    @Autowired
    private DynamicLikeService dynamicLikeService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/dynamicLikeList")
    public String fenleiList() {
        return "user/dynamicLikeList";
    }

    @RequestMapping("/dynamicLikeUserList")
    public String typeUserList() {
        return "user/dynamicLikeUserList";
    }

    /**
     * 返回查询数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(DynamicLike pojo) {
        return dynamicLikeService.getAllByLimit(pojo);
    }

    @RequestMapping("/getAllByLimitUser")
    @ResponseBody
    public Object getAllByLimitUser(DynamicLike pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());
        return dynamicLikeService.getAllByLimit(pojo);
    }

    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            dynamicLikeService.deleteById(id);
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
    public String doAdd(DynamicLike pojo) {
        try {
            dynamicLikeService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
