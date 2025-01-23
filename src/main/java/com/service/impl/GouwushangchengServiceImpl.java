package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.GouwushangchengDao;
import com.entity.GouwushangchengEntity;
import com.service.GouwushangchengService;
import com.entity.vo.GouwushangchengVO;
import com.entity.view.GouwushangchengView;

@Service("gouwushangchengService")
public class GouwushangchengServiceImpl extends ServiceImpl<GouwushangchengDao, GouwushangchengEntity> implements GouwushangchengService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GouwushangchengEntity> page = this.selectPage(
                new Query<GouwushangchengEntity>(params).getPage(),
                new EntityWrapper<GouwushangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GouwushangchengEntity> wrapper) {
		  Page<GouwushangchengView> page =new Query<GouwushangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GouwushangchengVO> selectListVO(Wrapper<GouwushangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GouwushangchengVO selectVO(Wrapper<GouwushangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GouwushangchengView> selectListView(Wrapper<GouwushangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GouwushangchengView selectView(Wrapper<GouwushangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
