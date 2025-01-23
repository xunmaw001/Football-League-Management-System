package com.entity.view;

import com.entity.LiansaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 联赛信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("liansaixinxi")
public class LiansaixinxiView  extends LiansaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LiansaixinxiView(){
	}
 
 	public LiansaixinxiView(LiansaixinxiEntity liansaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, liansaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
