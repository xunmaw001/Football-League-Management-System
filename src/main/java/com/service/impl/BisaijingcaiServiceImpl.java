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


import com.dao.BisaijingcaiDao;
import com.entity.BisaijingcaiEntity;
import com.service.BisaijingcaiService;
import com.entity.vo.BisaijingcaiVO;
import com.entity.view.BisaijingcaiView;

@Service("bisaijingcaiService")
public class BisaijingcaiServiceImpl extends ServiceImpl<BisaijingcaiDao, BisaijingcaiEntity> implements BisaijingcaiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BisaijingcaiEntity> page = this.selectPage(
                new Query<BisaijingcaiEntity>(params).getPage(),
                new EntityWrapper<BisaijingcaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BisaijingcaiEntity> wrapper) {
		  Page<BisaijingcaiView> page =new Query<BisaijingcaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BisaijingcaiVO> selectListVO(Wrapper<BisaijingcaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BisaijingcaiVO selectVO(Wrapper<BisaijingcaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BisaijingcaiView> selectListView(Wrapper<BisaijingcaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BisaijingcaiView selectView(Wrapper<BisaijingcaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
