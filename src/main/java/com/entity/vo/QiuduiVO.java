package com.entity.vo;

import com.entity.QiuduiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 球队
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public class QiuduiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 创始人
	 */
	
	private String chuangshiren;
		
	/**
	 * 创立时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
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
