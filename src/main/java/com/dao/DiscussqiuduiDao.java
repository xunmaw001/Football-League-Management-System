package com.dao;

import com.entity.DiscussqiuduiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussqiuduiVO;
import com.entity.view.DiscussqiuduiView;


/**
 * 球队评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussqiuduiDao extends BaseMapper<DiscussqiuduiEntity> {
	
	List<DiscussqiuduiVO> selectListVO(@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);
	
	DiscussqiuduiVO selectVO(@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);
	
	List<DiscussqiuduiView> selectListView(@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);

	List<DiscussqiuduiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);
	
	DiscussqiuduiView selectView(@Param("ew") Wrapper<DiscussqiuduiEntity> wrapper);
	

}
