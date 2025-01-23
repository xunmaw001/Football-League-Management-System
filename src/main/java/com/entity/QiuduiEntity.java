package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 球队
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("qiudui")
public class QiuduiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public QiuduiEntity() {
		
	}
	
	public QiuduiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 球队名称
	 */
					
	private String qiuduimingcheng;
	
	/**
	 * 创始人
	 */
					
	private String chuangshiren;
	
	/**
	 * 创立时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date chuanglishijian;
	
	/**
	 * 球队口号
	 */
					
	private String qiuduikouhao;
	
	/**
	 * 球队历史
	 */
					
	private String qiuduilishi;
	
	/**
	 * 球队介绍
	 */
					
	private String qiuduijieshao;
	
	/**
	 * 球队图片
	 */
					
	private String qiuduitupian;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：球队名称
	 */
	public void setQiuduimingcheng(String qiuduimingcheng) {
		this.qiuduimingcheng = qiuduimingcheng;
	}
	/**
	 * 获取：球队名称
	 */
	public String getQiuduimingcheng() {
		return qiuduimingcheng;
	}
	/**
	 * 设置：创始人
	 */
	public void setChuangshiren(String chuangshiren) {
		this.chuangshiren = chuangshiren;
	}
	/**
	 * 获取：创始人
	 */
	public String getChuangshiren() {
		return chuangshiren;
	}
	/**
	 * 设置：创立时间
	 */
	public void setChuanglishijian(Date chuanglishijian) {
		this.chuanglishijian = chuanglishijian;
	}
	/**
	 * 获取：创立时间
	 */
	public Date getChuanglishijian() {
		return chuanglishijian;
	}
	/**
	 * 设置：球队口号
	 */
	public void setQiuduikouhao(String qiuduikouhao) {
		this.qiuduikouhao = qiuduikouhao;
	}
	/**
	 * 获取：球队口号
	 */
	public String getQiuduikouhao() {
		return qiuduikouhao;
	}
	/**
	 * 设置：球队历史
	 */
	public void setQiuduilishi(String qiuduilishi) {
		this.qiuduilishi = qiuduilishi;
	}
	/**
	 * 获取：球队历史
	 */
	public String getQiuduilishi() {
		return qiuduilishi;
	}
	/**
	 * 设置：球队介绍
	 */
	public void setQiuduijieshao(String qiuduijieshao) {
		this.qiuduijieshao = qiuduijieshao;
	}
	/**
	 * 获取：球队介绍
	 */
	public String getQiuduijieshao() {
		return qiuduijieshao;
	}
	/**
	 * 设置：球队图片
	 */
	public void setQiuduitupian(String qiuduitupian) {
		this.qiuduitupian = qiuduitupian;
	}
	/**
	 * 获取：球队图片
	 */
	public String getQiuduitupian() {
		return qiuduitupian;
	}

}
