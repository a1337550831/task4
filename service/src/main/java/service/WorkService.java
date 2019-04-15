package service;

import org.springframework.stereotype.Service;
import pojo.Work;

import java.util.List;
@Service
public interface WorkService {
    int deleteByPrimaryKey(Integer id);

    int insert(Work record);

    int insertSelective(Work record);

    Work selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Work record);

    int updateByPrimaryKey(Work record);

    List<Work> selectByDirection(String direction);
}
