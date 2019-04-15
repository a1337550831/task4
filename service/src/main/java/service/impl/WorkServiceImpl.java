package service.impl;

import dao.WorkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Work;
import service.WorkService;

import java.util.List;


@Service
public class WorkServiceImpl implements WorkService {

    @Autowired
    private WorkMapper workMapper;
    public int deleteByPrimaryKey(Integer id) {
        return workMapper.deleteByPrimaryKey(id);
    }

    public int insert(Work record) {
        return workMapper.insert(record);
    }

    public int insertSelective(Work record) {
        return workMapper.insertSelective(record);
    }

    public Work selectByPrimaryKey(Integer id) {
        return workMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Work record) {
        return workMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Work record) {
        return workMapper.updateByPrimaryKey(record);
    }

    public List<Work> selectByDirection(String direction) {
        return workMapper.selectByDirection(direction);
    }
}
