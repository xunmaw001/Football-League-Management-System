package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QiuyuanxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QiuyuanxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QiuyuanxinxiView;


/**
 * 球员信息
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface QiuyuanxinxiService extends IService<QiuyuanxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QiuyuanxinxiVO> selectListVO(Wrapper<QiuyuanxinxiEntity> wrapper);
   	
   	QiuyuanxinxiVO selectVO(@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);
   	
   	List<QiuyuanxinxiView> selectListView(Wrapper<QiuyuanxinxiEntity> wrapper);
   	
   	QiuyuanxinxiView selectView(@Param("ew") Wrapper<QiuyuanxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QiuyuanxinxiEntity> wrapper);
   	

}

