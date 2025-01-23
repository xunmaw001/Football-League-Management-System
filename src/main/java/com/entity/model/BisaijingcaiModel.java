package com.entity.model;

import com.entity.BisaijingcaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 比赛竞猜
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public class BisaijingcaiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 比赛图片
	 */
	
	private String bisaitupian;
		
	/**
	 * 开始日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
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
