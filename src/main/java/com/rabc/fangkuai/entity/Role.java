package com.rabc.fangkuai.entity;

import com.yyfly.common.entity.BaseEntity;
import lombok.Data;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * @创建人 lin
 * @创建时间 2020/1/20
 * @描述
 */
@Data
@Entity
@Table(name = "imms_role")
public class Role extends BaseEntity {

    /**
     * 数据字典(groupCode)
     */
    public static final String DICT_GROUP = "groupCode";
    /**
     * 管理组
     */
    public static final String GROUP_MANAGERCODE = "0";
    /**
     * 用户组
     */
    public static final String GROUP_MAINTAIN_CODE = "1";
    /**
     * 审批组
     */
    public static final String GROUP_PRODUCE_CODE = "2";

    /**
     * 角色名称
     */
    private String roleName;

    /**
     * 角色组编码
     */
    private String groupCode;

    /**
     * 备注
     */
    private String remark;

    /**
     * 资源
     */
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "imms_t_role_resource",
            joinColumns  = {@JoinColumn(name = "role_id")},
            inverseJoinColumns = {@JoinColumn(name = "resource_id")}
    )
    @Fetch(FetchMode.SUBSELECT)
    @OrderBy("id ASC")
    private Set<Resource> resources;

    /**
     * resourceName set
     * @return
     */
    public Set<String> getReosurceNames(){
        Set<String> resourceNames = new HashSet<>();
        if(resources !=null && resources.size() > 0){
           for(Resource resource : resources){
               resourceNames.add(resource.getResourceName());
           }
        }
        return resourceNames;
    }


    /**
     * get permission set
     * @return
     */
    public Set<String> getPermissions(){
        Set<String> permissions = null;
        if(resources !=null && resources.size() > 0){
            permissions = new HashSet<>(resources.size());
            for(Resource resource : resources){
                permissions.add(resource.getPermission());
            }
        }
        return permissions;
    }
}
