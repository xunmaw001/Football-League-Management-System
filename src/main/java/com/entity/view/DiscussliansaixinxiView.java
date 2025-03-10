package com.entity.view;

import com.entity.DiscussliansaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 联赛信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
@TableName("discussliansaixinxi")
public class DiscussliansaixinxiView  extends DiscussliansaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussliansaixinxiView(){
	}
 
 	public DiscussliansaixinxiView(DiscussliansaixinxiEntity discussliansaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussliansaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
