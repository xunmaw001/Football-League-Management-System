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


import com.dao.DiscussqiuduiDao;
import com.entity.DiscussqiuduiEntity;
import com.service.DiscussqiuduiService;
import com.entity.vo.DiscussqiuduiVO;
import com.entity.view.DiscussqiuduiView;

@Service("discussqiuduiService")
public class DiscussqiuduiServiceImpl extends ServiceImpl<DiscussqiuduiDao, DiscussqiuduiEntity> implements DiscussqiuduiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussqiuduiEntity> page = this.selectPage(
                new Query<DiscussqiuduiEntity>(params).getPage(),
                new EntityWrapper<DiscussqiuduiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussqiuduiEntity> wrapper) {
		  Page<DiscussqiuduiView> page =new Query<DiscussqiuduiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussqiuduiVO> selectListVO(Wrapper<DiscussqiuduiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussqiuduiVO selectVO(Wrapper<DiscussqiuduiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussqiuduiView> selectListView(Wrapper<DiscussqiuduiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussqiuduiView selectView(Wrapper<DiscussqiuduiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
