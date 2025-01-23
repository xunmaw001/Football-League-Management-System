package com.entity.model;

import com.entity.LiansaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 联赛信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public class LiansaixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
