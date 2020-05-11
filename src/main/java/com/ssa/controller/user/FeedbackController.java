package com.ssa.controller.user;

import com.ssa.pojo.Dynamic;
import com.ssa.pojo.Feedback;
import com.ssa.pojo.User;
import com.ssa.service.FeedbackService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller("FeedbackController")
@RequestMapping("/feedback")
public class FeedbackController {
    @Autowired
    private FeedbackService feedbackService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/feedbackList")
    public String fenleiList() {
        return "user/feedbackList";
    }

    @RequestMapping("/feedbackUserList")
    public String typeUserList() {
        return "user/feedbackUserList";
    }

    /**
     * 返回查询数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Feedback pojo) {
        if (pojo.getPage()==null || pojo.getLimit()==null){
            pojo.setPage(1);
            pojo.setLimit(100);
        }
        return feedbackService.getAllByLimit(pojo);
    }

    @RequestMapping("/getAllByLimitUser")
    @ResponseBody
    public Object getAllByLimitUser(Feedback pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());
        return feedbackService.getAllByLimit(pojo);
    }

    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            feedbackService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("删除异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/add")
    public String addUserPage(Long id, Model model) {
        if (id!=null){
            Feedback feedback = feedbackService.seleteById(id);
            model.addAttribute("f", feedback);
        }
        return "user/feedbackAdd";
    }

    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Feedback pojo) {
        try {
            pojo.setCreateTime(new Date());
            feedbackService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/update")
    @ResponseBody
    @Transactional
    public String update(Feedback pojo) {
        try {
            feedbackService.update(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
