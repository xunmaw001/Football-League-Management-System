package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussqiuyuanxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussqiuyuanxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussqiuyuanxinxiView;


/**
 * 球员信息评论表
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussqiuyuanxinxiService extends IService<DiscussqiuyuanxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussqiuyuanxinxiVO> selectListVO(Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
   	
   	DiscussqiuyuanxinxiVO selectVO(@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
   	
   	List<DiscussqiuyuanxinxiView> selectListView(Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
   	
   	DiscussqiuyuanxinxiView selectView(@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
   	

}

