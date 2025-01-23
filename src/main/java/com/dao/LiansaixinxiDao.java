package com.dao;

import com.entity.LiansaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LiansaixinxiVO;
import com.entity.view.LiansaixinxiView;


/**
 * 联赛信息
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface LiansaixinxiDao extends BaseMapper<LiansaixinxiEntity> {
	
	List<LiansaixinxiVO> selectListVO(@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);
	
	LiansaixinxiVO selectVO(@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);
	
	List<LiansaixinxiView> selectListView(@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);

	List<LiansaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);
	
	LiansaixinxiView selectView(@Param("ew") Wrapper<LiansaixinxiEntity> wrapper);
	

}
