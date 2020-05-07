package com.ssa.controller.user;

import com.ssa.pojo.ClockIn;
import com.ssa.pojo.User;
import com.ssa.service.ClockInService;
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

@Controller("ClockInController")
@RequestMapping("/clockin")
public class ClockInController {
    @Autowired
    private ClockInService clockInService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/clockinList")
    public String fenleiList() {
        return "user/clockinList";
    }

    @RequestMapping("/clockinUserList")
    public String typeUserList() {
        return "user/clockinUserList";
    }

    /**
     * 返回查询数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(ClockIn pojo) {
        return clockInService.getAllByLimit(pojo);
    }

    @RequestMapping("/getAllByLimitUser")
    @ResponseBody
    public Object getAllByLimitUser(ClockIn pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());
        return clockInService.getAllByLimit(pojo);
    }

    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            clockInService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("删除异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    @RequestMapping(value = "/add")
    public String addUserPage() {
        return "user/clockinAdd";
    }

    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(ClockIn pojo) {
        try {
            pojo.setCreateTime(new Date());
            clockInService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加异常", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
