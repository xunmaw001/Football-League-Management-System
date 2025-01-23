package com.entity.view;

import com.entity.GouwushangchengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 购物商城
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("gouwushangcheng")
public class GouwushangchengView  extends GouwushangchengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public GouwushangchengView(){
	}
 
 	public GouwushangchengView(GouwushangchengEntity gouwushangchengEntity){
 	try {
			BeanUtils.copyProperties(this, gouwushangchengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
