package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussqiuduiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussqiuduiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussqiuduiView;


/**
 * 球队评论表
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussqiuduiService extends IService<DiscussqiuduiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussqiuduiVO> selectListVO(Wrapper<DiscussqiuduiEntity> wrapper);
   	
   	DiscussqiuduiVO selectVO(@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);
   	
   	List<DiscussqiuduiView> selectListView(Wrapper<DiscussqiuduiEntity> wrapper);
   	
   	DiscussqiuduiView selectView(@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussqiuduiEntity> wrapper);
   	

}

