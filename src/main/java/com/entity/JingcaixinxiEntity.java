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
 * 竞猜信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("jingcaixinxi")
public class JingcaixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JingcaixinxiEntity() {
		
	}
	
	public JingcaixinxiEntity(T t) {
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
	 * 开始日期
	 */
					
	private String kaishiriqi;
	
	/**
	 * 比赛地点
	 */
					
	private String bisaididian;
	
	/**
	 * 获得奖品
	 */
					
	private String huodejiangpin;
	
	/**
	 * 胜负队伍
	 */
					
	private String shengfuduiwu;
	
	/**
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 用户手机
	 */
					
	private String yonghushouji;
	
	/**
	 * 竞猜时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jingcaishijian;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	
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
	 * 设置：开始日期
	 */
	public void setKaishiriqi(String kaishiriqi) {
		this.kaishiriqi = kaishiriqi;
	}
	/**
	 * 获取：开始日期
	 */
	public String getKaishiriqi() {
		return kaishiriqi;
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
	 * 设置：胜负队伍
	 */
	public void setShengfuduiwu(String shengfuduiwu) {
		this.shengfuduiwu = shengfuduiwu;
	}
	/**
	 * 获取：胜负队伍
	 */
	public String getShengfuduiwu() {
		return shengfuduiwu;
	}
	/**
	 * 设置：用户账号
	 */
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
	/**
	 * 设置：用户姓名
	 */
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
	/**
	 * 设置：用户手机
	 */
	public void setYonghushouji(String yonghushouji) {
		this.yonghushouji = yonghushouji;
	}
	/**
	 * 获取：用户手机
	 */
	public String getYonghushouji() {
		return yonghushouji;
	}
	/**
	 * 设置：竞猜时间
	 */
	public void setJingcaishijian(Date jingcaishijian) {
		this.jingcaishijian = jingcaishijian;
	}
	/**
	 * 获取：竞猜时间
	 */
	public Date getJingcaishijian() {
		return jingcaishijian;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
