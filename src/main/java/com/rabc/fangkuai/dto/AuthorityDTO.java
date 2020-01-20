package com.rabc.fangkuai.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Set;

/**
 * @创建人 lin
 * @创建时间 2019/12/24
 * @描述
 */
@Data
public class AuthorityDTO implements Serializable {
    private static final long serialVersionUID = -7087938220089655654L;

    /**
     * 菜单
     */
    private String menu;

    /**
     * 权限
     */
    private Set<String> permission;


}
