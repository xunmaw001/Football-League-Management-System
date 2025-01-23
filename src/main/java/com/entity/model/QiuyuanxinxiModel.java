package com.entity.model;

import com.entity.QiuyuanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 球员信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public class QiuyuanxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 球员照片
	 */
	
	private String qiuyuanzhaopian;
		
	/**
	 * 国籍
	 */
	
	private String guoji;
		
	/**
	 * 所属球队
	 */
	
	private String suoshuqiudui;
		
	/**
	 * 场上位置
	 */
	
	private String changshangweizhi;
		
	/**
	 * 进球数
	 */
	
	private Integer jinqiushu;
		
	/**
	 * 助攻数
	 */
	
	private Integer zhugongshu;
		
	/**
	 * 获奖数
	 */
	
	private Integer huojiangshu;
		
	/**
	 * 年龄
	 */
	
	private String nianling;
		
	/**
	 * 身高
	 */
	
	private String shengao;
		
	/**
	 * 体重
	 */
	
	private String tizhong;
		
	/**
	 * 职业生涯
	 */
	
	private String zhiyeshengya;
				
	
	/**
	 * 设置：球员照片
	 */
	 
	public void setQiuyuanzhaopian(String qiuyuanzhaopian) {
		this.qiuyuanzhaopian = qiuyuanzhaopian;
	}
	
	/**
	 * 获取：球员照片
	 */
	public String getQiuyuanzhaopian() {
		return qiuyuanzhaopian;
	}
				
	
	/**
	 * 设置：国籍
	 */
	 
	public void setGuoji(String guoji) {
		this.guoji = guoji;
	}
	
	/**
	 * 获取：国籍
	 */
	public String getGuoji() {
		return guoji;
	}
				
	
	/**
	 * 设置：所属球队
	 */
	 
	public void setSuoshuqiudui(String suoshuqiudui) {
		this.suoshuqiudui = suoshuqiudui;
	}
	
	/**
	 * 获取：所属球队
	 */
	public String getSuoshuqiudui() {
		return suoshuqiudui;
	}
				
	
	/**
	 * 设置：场上位置
	 */
	 
	public void setChangshangweizhi(String changshangweizhi) {
		this.changshangweizhi = changshangweizhi;
	}
	
	/**
	 * 获取：场上位置
	 */
	public String getChangshangweizhi() {
		return changshangweizhi;
	}
				
	
	/**
	 * 设置：进球数
	 */
	 
	public void setJinqiushu(Integer jinqiushu) {
		this.jinqiushu = jinqiushu;
	}
	
	/**
	 * 获取：进球数
	 */
	public Integer getJinqiushu() {
		return jinqiushu;
	}
				
	
	/**
	 * 设置：助攻数
	 */
	 
	public void setZhugongshu(Integer zhugongshu) {
		this.zhugongshu = zhugongshu;
	}
	
	/**
	 * 获取：助攻数
	 */
	public Integer getZhugongshu() {
		return zhugongshu;
	}
				
	
	/**
	 * 设置：获奖数
	 */
	 
	public void setHuojiangshu(Integer huojiangshu) {
		this.huojiangshu = huojiangshu;
	}
	
	/**
	 * 获取：获奖数
	 */
	public Integer getHuojiangshu() {
		return huojiangshu;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(String nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public String getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：身高
	 */
	 
	public void setShengao(String shengao) {
		this.shengao = shengao;
	}
	
	/**
	 * 获取：身高
	 */
	public String getShengao() {
		return shengao;
	}
				
	
	/**
	 * 设置：体重
	 */
	 
	public void setTizhong(String tizhong) {
		this.tizhong = tizhong;
	}
	
	/**
	 * 获取：体重
	 */
	public String getTizhong() {
		return tizhong;
	}
				
	
	/**
	 * 设置：职业生涯
	 */
	 
	public void setZhiyeshengya(String zhiyeshengya) {
		this.zhiyeshengya = zhiyeshengya;
	}
	
	/**
	 * 获取：职业生涯
	 */
	public String getZhiyeshengya() {
		return zhiyeshengya;
	}
			
}
