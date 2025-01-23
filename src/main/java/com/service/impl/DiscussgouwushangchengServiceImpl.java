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


import com.dao.DiscussgouwushangchengDao;
import com.entity.DiscussgouwushangchengEntity;
import com.service.DiscussgouwushangchengService;
import com.entity.vo.DiscussgouwushangchengVO;
import com.entity.view.DiscussgouwushangchengView;

@Service("discussgouwushangchengService")
public class DiscussgouwushangchengServiceImpl extends ServiceImpl<DiscussgouwushangchengDao, DiscussgouwushangchengEntity> implements DiscussgouwushangchengService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussgouwushangchengEntity> page = this.selectPage(
                new Query<DiscussgouwushangchengEntity>(params).getPage(),
                new EntityWrapper<DiscussgouwushangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussgouwushangchengEntity> wrapper) {
		  Page<DiscussgouwushangchengView> page =new Query<DiscussgouwushangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussgouwushangchengVO> selectListVO(Wrapper<DiscussgouwushangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussgouwushangchengVO selectVO(Wrapper<DiscussgouwushangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussgouwushangchengView> selectListView(Wrapper<DiscussgouwushangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussgouwushangchengView selectView(Wrapper<DiscussgouwushangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
