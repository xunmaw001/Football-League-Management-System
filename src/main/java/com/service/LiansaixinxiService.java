package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LiansaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LiansaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LiansaixinxiView;


/**
 * 联赛信息
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface LiansaixinxiService extends IService<LiansaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LiansaixinxiVO> selectListVO(Wrapper<LiansaixinxiEntity> wrapper);
   	
   	LiansaixinxiVO selectVO(@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);
   	
   	List<LiansaixinxiView> selectListView(Wrapper<LiansaixinxiEntity> wrapper);
   	
   	LiansaixinxiView selectView(@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LiansaixinxiEntity> wrapper);
   	

}

