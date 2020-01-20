package com.rabc.fangkuai.entity;

import com.yyfly.common.entity.BaseEntity;
import lombok.Data;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * @创建人 lin
 * @创建时间 2020/1/20
 * @描述 用户实体类
 */

@Data//此注解是lomback提供的，通过这个注解实体类就可以不用写那些get和set语句，这样代码会简洁
@Entity//jpa注解，标注这是一个实体类
@Table(name = "imms_user")//实体类和表的映射
public class User extends BaseEntity  {
    private static final long serialVersionUID = -1801382105015314005L;

    /*
    用户名
     */
    private String username;

    /*
    密码
     */
    @Column(updatable = false)//使用update属性后，如果更新数据不会被存储到数据库
    private String password;


    /**
     * 最后一次密码修改时间
     */
    @Column(updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastOasswordReset;

    /**
     * 员工编号
     */
    private String employeeId;

    /**
     * 角色
     */
    @ManyToMany(fetch = FetchType.EAGER)//多对多的映射
    //@JoinTable指定的是多对多映射的表就是我的用户角色表
    @JoinTable(
            name = "imms_t_user_role",
            //关联的行，
            joinColumns = {@JoinColumn(name="user_id")},
            inverseJoinColumns = {@JoinColumn(name = "role_id")}
    )
    @Fetch(FetchMode.SELECT)
    @OrderBy("id ASC")
    private Set<Role> roles;

    /**
     * 获取到角色的所有id
     * @return
     */
    public Set<String> getRoleIds(){
        Set<String> roleIds = new HashSet<>();
        if(roles != null && roles.size() > 0){
            for(Role role : roles){
                roleIds.add(role.getId());
            }
        }
        return roleIds;
    }

    /**
     * 获取到用户的所含角色的角色名称
     * @return
     */
    public Set<String> getRoleNames(){
        Set<String> roleNames = new HashSet<>();
        if(roles != null && roles.size() > 0 ){
            for (Role role  : roles){
                roleNames.add(role.getRoleName());
            }
        }
        return roleNames;
    }

    /**
     * 获取到用户的组别（基础版的权限系统暂时没有组别的划分）
     * @return
     */
    public Set<String> getRoleGroupCodes(){
        Set<String> roleGroupCodes = new HashSet<>();
        if(roles != null && roles.size() > 0){
            for(Role role  : roles){
                roleGroupCodes.add(role.getGroupCode());
            }
        }
        return roleGroupCodes;
    }

    /**
     * 返回用户所含的全部权限
     * @return
     */
    public Set<String> getPermission(){
        Set<String> permissions = null;
        if(roles != null && roles.size() > 0){
            for(Role role : roles){
                permissions.addAll(role.getPermissions());
            }
        }
        return permissions;
    }
}
