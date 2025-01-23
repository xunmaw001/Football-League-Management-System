package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BisaijingcaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BisaijingcaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BisaijingcaiView;


/**
 * 比赛竞猜
 *
 * @author 
 * @email 
 * @date 2023-03-20 13:13:58
 */
public interface BisaijingcaiService extends IService<BisaijingcaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BisaijingcaiVO> selectListVO(Wrapper<BisaijingcaiEntity> wrapper);
   	
   	BisaijingcaiVO selectVO(@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);
   	
   	List<BisaijingcaiView> selectListView(Wrapper<BisaijingcaiEntity> wrapper);
   	
   	BisaijingcaiView selectView(@Param("ew") Wrapper<BisaijingcaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BisaijingcaiEntity> wrapper);
   	

}

