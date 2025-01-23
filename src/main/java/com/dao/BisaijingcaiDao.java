package com.dao;

import com.entity.BisaijingcaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BisaijingcaiVO;
import com.entity.view.BisaijingcaiView;


/**
 * 比赛竞猜
 * 
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface BisaijingcaiDao extends BaseMapper<BisaijingcaiEntity> {
	
	List<BisaijingcaiVO> selectListVO(@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);
	
	BisaijingcaiVO selectVO(@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);
	
	List<BisaijingcaiView> selectListView(@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);

	List<BisaijingcaiView> selectListView(Pagination page,@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);
	
	BisaijingcaiView selectView(@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);
	

}
