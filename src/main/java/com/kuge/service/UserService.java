package com.kuge.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.kuge.dao.UserMapper;
import com.kuge.pojo.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserMapper userMapper;

    QueryWrapper<User> queryWrapper=null;

    @Transactional
    public User getUserByName(String usrName){
        queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("usrName",usrName);
        User user=userMapper.selectOne(queryWrapper);
        return user;
    }
}
