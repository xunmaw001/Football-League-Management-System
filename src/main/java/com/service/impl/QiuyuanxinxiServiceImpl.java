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


import com.dao.QiuyuanxinxiDao;
import com.entity.QiuyuanxinxiEntity;
import com.service.QiuyuanxinxiService;
import com.entity.vo.QiuyuanxinxiVO;
import com.entity.view.QiuyuanxinxiView;

@Service("qiuyuanxinxiService")
public class QiuyuanxinxiServiceImpl extends ServiceImpl<QiuyuanxinxiDao, QiuyuanxinxiEntity> implements QiuyuanxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QiuyuanxinxiEntity> page = this.selectPage(
                new Query<QiuyuanxinxiEntity>(params).getPage(),
                new EntityWrapper<QiuyuanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QiuyuanxinxiEntity> wrapper) {
		  Page<QiuyuanxinxiView> page =new Query<QiuyuanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QiuyuanxinxiVO> selectListVO(Wrapper<QiuyuanxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QiuyuanxinxiVO selectVO(Wrapper<QiuyuanxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QiuyuanxinxiView> selectListView(Wrapper<QiuyuanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QiuyuanxinxiView selectView(Wrapper<QiuyuanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
