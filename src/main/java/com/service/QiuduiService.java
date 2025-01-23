package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QiuduiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QiuduiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QiuduiView;


/**
 * 球队
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface QiuduiService extends IService<QiuduiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QiuduiVO> selectListVO(Wrapper<QiuduiEntity> wrapper);
   	
   	QiuduiVO selectVO(@Param("ew") Wrapper<QiuduiEntity> wrapper);
   	
   	List<QiuduiView> selectListView(Wrapper<QiuduiEntity> wrapper);
   	
   	QiuduiView selectView(@Param("ew") Wrapper<QiuduiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QiuduiEntity> wrapper);
   	

}

