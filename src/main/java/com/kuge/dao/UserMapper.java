package com.kuge.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kuge.pojo.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
