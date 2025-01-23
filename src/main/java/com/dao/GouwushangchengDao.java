package com.dao;

import com.entity.GouwushangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GouwushangchengVO;
import com.entity.view.GouwushangchengView;


/**
 * 购物商城
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface GouwushangchengDao extends BaseMapper<GouwushangchengEntity> {
	
	List<GouwushangchengVO> selectListVO(@Param("ew") Wrapper<GouwushangchengEntity> wrapper);
	
	GouwushangchengVO selectVO(@Param("ew") Wrapper<GouwushangchengEntity> wrapper);
	
	List<GouwushangchengView> selectListView(@Param("ew") Wrapper<GouwushangchengEntity> wrapper);

	List<GouwushangchengView> selectListView(Pagination page,@Param("ew") Wrapper<GouwushangchengEntity> wrapper);
	
	GouwushangchengView selectView(@Param("ew") Wrapper<GouwushangchengEntity> wrapper);
	

}
