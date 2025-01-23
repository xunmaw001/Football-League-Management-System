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
 * 比赛竞猜
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("bisaijingcai")
public class BisaijingcaiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public BisaijingcaiEntity() {
		
	}
	
	public BisaijingcaiEntity(T t) {
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
	 * 比赛名称
	 */
					
	private String bisaimingcheng;
	
	/**
	 * 比赛图片
	 */
					
	private String bisaitupian;
	
	/**
	 * 开始日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date kaishiriqi;
	
	/**
	 * 球队要求
	 */
					
	private String qiuduiyaoqiu;
	
	/**
	 * 比赛地点
	 */
					
	private String bisaididian;
	
	/**
	 * 比赛内容
	 */
					
	private String bisaineirong;
	
	/**
	 * 获得奖品
	 */
					
	private String huodejiangpin;
	
	/**
	 * 主队
	 */
					
	private String zhudui;
	
	/**
	 * 客队
	 */
					
	private String kedui;
	
	/**
	 * 倒计结束时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date reversetime;
	
	
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
	 * 设置：比赛名称
	 */
	public void setBisaimingcheng(String bisaimingcheng) {
		this.bisaimingcheng = bisaimingcheng;
	}
	/**
	 * 获取：比赛名称
	 */
	public String getBisaimingcheng() {
		return bisaimingcheng;
	}
	/**
	 * 设置：比赛图片
	 */
	public void setBisaitupian(String bisaitupian) {
		this.bisaitupian = bisaitupian;
	}
	/**
	 * 获取：比赛图片
	 */
	public String getBisaitupian() {
		return bisaitupian;
	}
	/**
	 * 设置：开始日期
	 */
	public void setKaishiriqi(Date kaishiriqi) {
		this.kaishiriqi = kaishiriqi;
	}
	/**
	 * 获取：开始日期
	 */
	public Date getKaishiriqi() {
		return kaishiriqi;
	}
	/**
	 * 设置：球队要求
	 */
	public void setQiuduiyaoqiu(String qiuduiyaoqiu) {
		this.qiuduiyaoqiu = qiuduiyaoqiu;
	}
	/**
	 * 获取：球队要求
	 */
	public String getQiuduiyaoqiu() {
		return qiuduiyaoqiu;
	}
	/**
	 * 设置：比赛地点
	 */
	public void setBisaididian(String bisaididian) {
		this.bisaididian = bisaididian;
	}
	/**
	 * 获取：比赛地点
	 */
	public String getBisaididian() {
		return bisaididian;
	}
	/**
	 * 设置：比赛内容
	 */
	public void setBisaineirong(String bisaineirong) {
		this.bisaineirong = bisaineirong;
	}
	/**
	 * 获取：比赛内容
	 */
	public String getBisaineirong() {
		return bisaineirong;
	}
	/**
	 * 设置：获得奖品
	 */
	public void setHuodejiangpin(String huodejiangpin) {
		this.huodejiangpin = huodejiangpin;
	}
	/**
	 * 获取：获得奖品
	 */
	public String getHuodejiangpin() {
		return huodejiangpin;
	}
	/**
	 * 设置：主队
	 */
	public void setZhudui(String zhudui) {
		this.zhudui = zhudui;
	}
	/**
	 * 获取：主队
	 */
	public String getZhudui() {
		return zhudui;
	}
	/**
	 * 设置：客队
	 */
	public void setKedui(String kedui) {
		this.kedui = kedui;
	}
	/**
	 * 获取：客队
	 */
	public String getKedui() {
		return kedui;
	}
	/**
	 * 设置：倒计结束时间
	 */
	public void setReversetime(Date reversetime) {
		this.reversetime = reversetime;
	}
	/**
	 * 获取：倒计结束时间
	 */
	public Date getReversetime() {
		return reversetime;
	}

}
