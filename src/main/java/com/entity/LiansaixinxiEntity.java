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
 * 联赛信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("liansaixinxi")
public class LiansaixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public LiansaixinxiEntity() {
		
	}
	
	public LiansaixinxiEntity(T t) {
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
	 * 联赛名称
	 */
					
	private String liansaimingcheng;
	
	/**
	 * 封面图片
	 */
					
	private String fengmiantupian;
	
	/**
	 * 举办地点
	 */
					
	private String jubandidian;
	
	/**
	 * 开始时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date kaishishijian;
	
	/**
	 * 结束时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jieshushijian;
	
	/**
	 * 球队数量
	 */
					
	private Integer qiuduishuliang;
	
	/**
	 * 举办方
	 */
					
	private String jubanfang;
	
	/**
	 * 上场球员
	 */
					
	private String shangchangqiuyuan;
	
	
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
	 * 设置：联赛名称
	 */
	public void setLiansaimingcheng(String liansaimingcheng) {
		this.liansaimingcheng = liansaimingcheng;
	}
	/**
	 * 获取：联赛名称
	 */
	public String getLiansaimingcheng() {
		return liansaimingcheng;
	}
	/**
	 * 设置：封面图片
	 */
	public void setFengmiantupian(String fengmiantupian) {
		this.fengmiantupian = fengmiantupian;
	}
	/**
	 * 获取：封面图片
	 */
	public String getFengmiantupian() {
		return fengmiantupian;
	}
	/**
	 * 设置：举办地点
	 */
	public void setJubandidian(String jubandidian) {
		this.jubandidian = jubandidian;
	}
	/**
	 * 获取：举办地点
	 */
	public String getJubandidian() {
		return jubandidian;
	}
	/**
	 * 设置：开始时间
	 */
	public void setKaishishijian(Date kaishishijian) {
		this.kaishishijian = kaishishijian;
	}
	/**
	 * 获取：开始时间
	 */
	public Date getKaishishijian() {
		return kaishishijian;
	}
	/**
	 * 设置：结束时间
	 */
	public void setJieshushijian(Date jieshushijian) {
		this.jieshushijian = jieshushijian;
	}
	/**
	 * 获取：结束时间
	 */
	public Date getJieshushijian() {
		return jieshushijian;
	}
	/**
	 * 设置：球队数量
	 */
	public void setQiuduishuliang(Integer qiuduishuliang) {
		this.qiuduishuliang = qiuduishuliang;
	}
	/**
	 * 获取：球队数量
	 */
	public Integer getQiuduishuliang() {
		return qiuduishuliang;
	}
	/**
	 * 设置：举办方
	 */
	public void setJubanfang(String jubanfang) {
		this.jubanfang = jubanfang;
	}
	/**
	 * 获取：举办方
	 */
	public String getJubanfang() {
		return jubanfang;
	}
	/**
	 * 设置：上场球员
	 */
	public void setShangchangqiuyuan(String shangchangqiuyuan) {
		this.shangchangqiuyuan = shangchangqiuyuan;
	}
	/**
	 * 获取：上场球员
	 */
	public String getShangchangqiuyuan() {
		return shangchangqiuyuan;
	}

}
