package com.dao;

import com.entity.DiscussgouwushangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussgouwushangchengVO;
import com.entity.view.DiscussgouwushangchengView;


/**
 * 购物商城评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussgouwushangchengDao extends BaseMapper<DiscussgouwushangchengEntity> {
	
	List<DiscussgouwushangchengVO> selectListVO(@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);
	
	DiscussgouwushangchengVO selectVO(@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);
	
	List<DiscussgouwushangchengView> selectListView(@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);

	List<DiscussgouwushangchengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);
	
	DiscussgouwushangchengView selectView(@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);
	

}
