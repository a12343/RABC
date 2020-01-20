package com.rabc.fangkuai.dto;

import com.yyfly.common.dto.BaseDTO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.Set;

/**
 * 角色 Dto
 *
 * @author :
 * @version : 1.0
 */
@Data
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
public class RoleDTO extends BaseDTO {
    private static final long serialVersionUID = 2650271278017486331L;

    /**
     * 角色名称
     */

    private String roleName;

    /**
     * 角色组编码
     */

    private String groupCode;

    /**
     * 角色组值
     */

    private String groupValue;

    /**
     * 备注
     */

    private String remark;

    /**
     * 资源编号
     */

    private Set<String> resourceIds;

    /**
     * 资源名称
     */

    private Set<String> resourceNames;

    /**
     * 是否启用
     */

    private boolean enabled;}