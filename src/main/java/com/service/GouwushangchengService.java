package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GouwushangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GouwushangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GouwushangchengView;


/**
 * 购物商城
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface GouwushangchengService extends IService<GouwushangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GouwushangchengVO> selectListVO(Wrapper<GouwushangchengEntity> wrapper);
   	
   	GouwushangchengVO selectVO(@Param("ew") Wrapper<GouwushangchengEntity> wrapper);
   	
   	List<GouwushangchengView> selectListView(Wrapper<GouwushangchengEntity> wrapper);
   	
   	GouwushangchengView selectView(@Param("ew") Wrapper<GouwushangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GouwushangchengEntity> wrapper);
   	

}

