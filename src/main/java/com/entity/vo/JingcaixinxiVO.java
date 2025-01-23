package com.entity.vo;

import com.entity.JingcaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 竞猜信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public class JingcaixinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
