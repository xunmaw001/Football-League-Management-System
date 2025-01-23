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


import com.dao.DiscussqiuyuanxinxiDao;
import com.entity.DiscussqiuyuanxinxiEntity;
import com.service.DiscussqiuyuanxinxiService;
import com.entity.vo.DiscussqiuyuanxinxiVO;
import com.entity.view.DiscussqiuyuanxinxiView;

@Service("discussqiuyuanxinxiService")
public class DiscussqiuyuanxinxiServiceImpl extends ServiceImpl<DiscussqiuyuanxinxiDao, DiscussqiuyuanxinxiEntity> implements DiscussqiuyuanxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussqiuyuanxinxiEntity> page = this.selectPage(
                new Query<DiscussqiuyuanxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussqiuyuanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussqiuyuanxinxiEntity> wrapper) {
		  Page<DiscussqiuyuanxinxiView> page =new Query<DiscussqiuyuanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussqiuyuanxinxiVO> selectListVO(Wrapper<DiscussqiuyuanxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussqiuyuanxinxiVO selectVO(Wrapper<DiscussqiuyuanxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussqiuyuanxinxiView> selectListView(Wrapper<DiscussqiuyuanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussqiuyuanxinxiView selectView(Wrapper<DiscussqiuyuanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
