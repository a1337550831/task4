package dao;

import org.springframework.stereotype.Repository;
import pojo.Work;

import java.util.List;

@Repository
public interface WorkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Work record);

    int insertSelective(Work record);

    Work selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Work record);

    int updateByPrimaryKey(Work record);

    List<Work> selectByDirection(String direction);
}