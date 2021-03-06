package com.ssa.controller.user;

import com.ssa.pojo.DynamicComment;
import com.ssa.pojo.DynamicComment;
import com.ssa.pojo.User;
import com.ssa.service.DynamicCommentService;
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

@Controller("DynamicCommentController")
@RequestMapping("/dynamicComment")
public class DynamicCommentController {
    @Autowired
    private DynamicCommentService dynamicCommentService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/dynamicCommentList")
    public String fenleiList() {
        return "user/dynamicCommentList";
    }

    @RequestMapping("/dynamicCommentUserList")
    public String typeUserList() {
        return "user/dynamicCommentUserList";
    }

    /**
     * 返回查询数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(DynamicComment pojo) {
        if (pojo.getPage()==null || pojo.getLimit()==null){
            pojo.setPage(1);
            pojo.setLimit(100);
        }
        return dynamicCommentService.getAllByLimit(pojo);
    }

    @RequestMapping("/getAllByLimitUser")
    @ResponseBody
    public Object getAllByLimitUser(DynamicComment pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());return dynamicCommentService.getAllByLimit(pojo);
    }

    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            dynamicCommentService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("删除异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/add")
    public String addUserPage() {
        return "user/dynamicCommentAdd";
    }

    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(DynamicComment pojo) {
        try {
            pojo.setCreateTime(new Date());
            dynamicCommentService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
