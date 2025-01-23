package com.dao;

import com.entity.DiscussqiuyuanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussqiuyuanxinxiVO;
import com.entity.view.DiscussqiuyuanxinxiView;


/**
 * 球员信息评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussqiuyuanxinxiDao extends BaseMapper<DiscussqiuyuanxinxiEntity> {
	
	List<DiscussqiuyuanxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
	
	DiscussqiuyuanxinxiVO selectVO(@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
	
	List<DiscussqiuyuanxinxiView> selectListView(@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);

	List<DiscussqiuyuanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
	
	DiscussqiuyuanxinxiView selectView(@Param("ew") Wrapper<DiscussqiuyuanxinxiEntity> wrapper);
	

}
