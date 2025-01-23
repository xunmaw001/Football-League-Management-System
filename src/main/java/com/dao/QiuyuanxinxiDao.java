package com.dao;

import com.entity.QiuyuanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QiuyuanxinxiVO;
import com.entity.view.QiuyuanxinxiView;


/**
 * 球员信息
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface QiuyuanxinxiDao extends BaseMapper<QiuyuanxinxiEntity> {
	
	List<QiuyuanxinxiVO> selectListVO(@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);
	
	QiuyuanxinxiVO selectVO(@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);
	
	List<QiuyuanxinxiView> selectListView(@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);

	List<QiuyuanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);
	
	QiuyuanxinxiView selectView(@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);
	

}
