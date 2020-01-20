package com.rabc.fangkuai.entity;

import com.yyfly.common.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @创建人 lin
 * @创建时间 2020/1/20
 * @描述
 */
@Data
@Entity
@Table(name = "imms_resource")
public class Resource extends BaseEntity {
    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = -4091125312802177946L;

    /**
     * 无
     */
    public static final String TYPE_NONE = "0";

    /**
     * 菜单
     */
     public static final String TYPE_MENU = "1";

    /**
     * 功能
     */
    public static final String TYPE_FUNCTION = "2";

    /**
     * 资源名称
     */
    private String resourceName;

    /**
     * path
     */
    private String path;

    /**
     * 资源类型
     * <ul>
     *      <li> 0 - 无</li>
     *      <li> 1 - 菜单</li>
     *      <li> 2 - 功能</li>
     * </ul>
     */
    private String type;

    /**
     * 权限标识
     */
    private String permission;

    /**
     * 上级
     */
    private String pid;

    /**
     * 备注
     */
    private String remark;
}
