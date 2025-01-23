package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingcaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingcaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingcaixinxiView;


/**
 * 竞猜信息
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface JingcaixinxiService extends IService<JingcaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingcaixinxiVO> selectListVO(Wrapper<JingcaixinxiEntity> wrapper);
   	
   	JingcaixinxiVO selectVO(@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);
   	
   	List<JingcaixinxiView> selectListView(Wrapper<JingcaixinxiEntity> wrapper);
   	
   	JingcaixinxiView selectView(@Param("ew") Wrapper<JingcaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingcaixinxiEntity> wrapper);
   	

}

