package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussgouwushangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussgouwushangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussgouwushangchengView;


/**
 * 购物商城评论表
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:59
 */
public interface DiscussgouwushangchengService extends IService<DiscussgouwushangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussgouwushangchengVO> selectListVO(Wrapper<DiscussgouwushangchengEntity> wrapper);
   	
   	DiscussgouwushangchengVO selectVO(@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);
   	
   	List<DiscussgouwushangchengView> selectListView(Wrapper<DiscussgouwushangchengEntity> wrapper);
   	
   	DiscussgouwushangchengView selectView(@Param("ew") Wrapper<DiscussgouwushangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussgouwushangchengEntity> wrapper);
   	

}

