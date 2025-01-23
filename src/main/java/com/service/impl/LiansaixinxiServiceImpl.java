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


import com.dao.LiansaixinxiDao;
import com.entity.LiansaixinxiEntity;
import com.service.LiansaixinxiService;
import com.entity.vo.LiansaixinxiVO;
import com.entity.view.LiansaixinxiView;

@Service("liansaixinxiService")
public class LiansaixinxiServiceImpl extends ServiceImpl<LiansaixinxiDao, LiansaixinxiEntity> implements LiansaixinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LiansaixinxiEntity> page = this.selectPage(
                new Query<LiansaixinxiEntity>(params).getPage(),
                new EntityWrapper<LiansaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LiansaixinxiEntity> wrapper) {
		  Page<LiansaixinxiView> page =new Query<LiansaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LiansaixinxiVO> selectListVO(Wrapper<LiansaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LiansaixinxiVO selectVO(Wrapper<LiansaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LiansaixinxiView> selectListView(Wrapper<LiansaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LiansaixinxiView selectView(Wrapper<LiansaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
