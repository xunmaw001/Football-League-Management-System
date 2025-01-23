package com.dao;

import com.entity.DiscussliansaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussliansaixinxiVO;
import com.entity.view.DiscussliansaixinxiView;


/**
 * 联赛信息评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussliansaixinxiDao extends BaseMapper<DiscussliansaixinxiEntity> {
	
	List<DiscussliansaixinxiVO> selectListVO(@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);
	
	DiscussliansaixinxiVO selectVO(@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);
	
	List<DiscussliansaixinxiView> selectListView(@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);

	List<DiscussliansaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);
	
	DiscussliansaixinxiView selectView(@Param("ew") Wrapper<DiscussliansaixinxiEntity> wrapper);
	

}
