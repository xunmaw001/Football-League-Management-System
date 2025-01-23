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


import com.dao.JingcaixinxiDao;
import com.entity.JingcaixinxiEntity;
import com.service.JingcaixinxiService;
import com.entity.vo.JingcaixinxiVO;
import com.entity.view.JingcaixinxiView;

@Service("jingcaixinxiService")
public class JingcaixinxiServiceImpl extends ServiceImpl<JingcaixinxiDao, JingcaixinxiEntity> implements JingcaixinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingcaixinxiEntity> page = this.selectPage(
                new Query<JingcaixinxiEntity>(params).getPage(),
                new EntityWrapper<JingcaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingcaixinxiEntity> wrapper) {
		  Page<JingcaixinxiView> page =new Query<JingcaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingcaixinxiVO> selectListVO(Wrapper<JingcaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingcaixinxiVO selectVO(Wrapper<JingcaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingcaixinxiView> selectListView(Wrapper<JingcaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingcaixinxiView selectView(Wrapper<JingcaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
