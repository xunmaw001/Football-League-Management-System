package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussliansaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussliansaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussliansaixinxiView;


/**
 * 联赛信息评论表
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussliansaixinxiService extends IService<DiscussliansaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussliansaixinxiVO> selectListVO(Wrapper<DiscussliansaixinxiEntity> wrapper);
   	
   	DiscussliansaixinxiVO selectVO(@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);
   	
   	List<DiscussliansaixinxiView> selectListView(Wrapper<DiscussliansaixinxiEntity> wrapper);
   	
   	DiscussliansaixinxiView selectView(@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussliansaixinxiEntity> wrapper);
   	

}

