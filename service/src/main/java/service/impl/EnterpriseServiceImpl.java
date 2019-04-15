package service.impl;

import dao.EnterpriseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Enterprise;
import service.EnterpriseService;

import java.util.List;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {
    @Autowired
    private EnterpriseMapper enterpriseMapper;
    public int deleteByPrimaryKey(Integer id) {
        return enterpriseMapper.deleteByPrimaryKey(id);
    }

    public int insert(Enterprise record) {
        return enterpriseMapper.insert(record);
    }

    public int insertSelective(Enterprise record) {
        return enterpriseMapper.insertSelective(record);
    }

    public Enterprise selectByPrimaryKey(Integer id) {
        return enterpriseMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Enterprise record) {
        return enterpriseMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Enterprise record) {
        return enterpriseMapper.updateByPrimaryKey(record);
    }

    public List<Enterprise> show() {
        return enterpriseMapper.show();
    }


}
