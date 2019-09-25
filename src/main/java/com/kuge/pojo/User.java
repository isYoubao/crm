package com.kuge.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.springframework.data.relational.core.mapping.Table;

@Data
@TableName("sys_user")
public class User {
    @TableId(value = "usr_id",type = IdType.AUTO)
    private Integer id;
    private String usrName;
    private String usrPassword;
    private Integer usrRoleId;
    private Integer usrFlag;
}
