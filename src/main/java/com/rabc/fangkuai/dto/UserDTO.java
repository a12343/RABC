package com.rabc.fangkuai.dto;

import com.yyfly.common.dto.BaseDTO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.Date;
import java.util.Set;

/**
 * @创建人 lin
 * @创建时间 2019/12/24
 * @描述
 */
@Data
@ToString
@EqualsAndHashCode(callSuper = true)
public class UserDTO extends BaseDTO {
    private static final long serialVersionUID = -1184942940302467078L;


    /**
     * 用户名
     */

    private String username;

    /**
     * 密码
     */

    private String password;

    /**
     * 最后一次密码设置时间
     */

    private Date lastPasswordReset;

    /**
     * 确认密码
     */

    private String repeat;

    /**
     * token
     */

    private String token;

    /**
     * 员工编号
     */

    private String employeeId;

    /**
     * 员工名称
     */

    private String employeeName;

    /**
     * 角色编号
     */

    private Set<String> roleIds;

    /**
     * 角色名称
     */

    private Set<String> roleNames;

    /**
     * 角色组
     */

    private Set<String> roleGroupCodes;

    /**
     * 权限
     */

    private Set<AuthorityDTO> authorityDTOS;

    /**
     * 是否启用
     */

    private boolean enabled;

}
