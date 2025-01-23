package com.dao;

import com.entity.JingcaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingcaixinxiVO;
import com.entity.view.JingcaixinxiView;


/**
 * 竞猜信息
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface JingcaixinxiDao extends BaseMapper<JingcaixinxiEntity> {
	
	List<JingcaixinxiVO> selectListVO(@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);
	
	JingcaixinxiVO selectVO(@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);
	
	List<JingcaixinxiView> selectListView(@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);

	List<JingcaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);
	
	JingcaixinxiView selectView(@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);
	

}
