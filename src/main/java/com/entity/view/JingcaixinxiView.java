package com.entity.view;

import com.entity.JingcaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 竞猜信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
@TableName("jingcaixinxi")
public class JingcaixinxiView  extends JingcaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JingcaixinxiView(){
	}
 
 	public JingcaixinxiView(JingcaixinxiEntity jingcaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, jingcaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
