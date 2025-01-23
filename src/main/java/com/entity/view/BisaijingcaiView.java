package com.entity.view;

import com.entity.BisaijingcaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 比赛竞猜
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("bisaijingcai")
public class BisaijingcaiView  extends BisaijingcaiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BisaijingcaiView(){
	}
 
 	public BisaijingcaiView(BisaijingcaiEntity bisaijingcaiEntity){
 	try {
			BeanUtils.copyProperties(this, bisaijingcaiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
