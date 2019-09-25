package com.kuge.controller;

import com.kuge.pojo.User;
import com.kuge.service.UserService;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.util.Factory;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.text.IniRealm;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Resource
    private UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/doLogin")
    public String doLogin(@Param("usrName")String usrName,
                          @Param("usrPassword")String usrPassword,
                          HttpServletRequest request){
//        Factory<SecurityManager> factory=new IniSecurityManagerFactory("classpath:shiro.ini");
//        SecurityManager securityManager=factory.getInstance();
//        SecurityUtils.setSecurityManager(securityManager);
//        Subject subject=SecurityUtils.getSubject();
//        UsernamePasswordToken token=new UsernamePasswordToken(usrName,usrPassword);
//        subject.isAuthenticated();
//        try {
//            subject.login(token);
//            return "main";
//        }catch (Exception e){
//            e.printStackTrace();
//            request.setAttribute("error","登录异常！");
//            return "login";
//        }
        User user=userService.getUserByName(usrName);
        if (user==null){
            request.setAttribute("error","用户名不存在！");
            return "login";
        }else if (!user.getUsrPassword().equals(usrPassword)){
            request.setAttribute("error","密码与用户名不匹配");
            return "login";
        }
        return "main";
    }

}
