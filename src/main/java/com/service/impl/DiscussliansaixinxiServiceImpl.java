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


import com.dao.DiscussliansaixinxiDao;
import com.entity.DiscussliansaixinxiEntity;
import com.service.DiscussliansaixinxiService;
import com.entity.vo.DiscussliansaixinxiVO;
import com.entity.view.DiscussliansaixinxiView;

@Service("discussliansaixinxiService")
public class DiscussliansaixinxiServiceImpl extends ServiceImpl<DiscussliansaixinxiDao, DiscussliansaixinxiEntity> implements DiscussliansaixinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussliansaixinxiEntity> page = this.selectPage(
                new Query<DiscussliansaixinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussliansaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussliansaixinxiEntity> wrapper) {
		  Page<DiscussliansaixinxiView> page =new Query<DiscussliansaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussliansaixinxiVO> selectListVO(Wrapper<DiscussliansaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussliansaixinxiVO selectVO(Wrapper<DiscussliansaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussliansaixinxiView> selectListView(Wrapper<DiscussliansaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussliansaixinxiView selectView(Wrapper<DiscussliansaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
