package service;

import org.springframework.stereotype.Service;
import pojo.Enterprise;

import java.util.List;

@Service
public interface EnterpriseService {
    int deleteByPrimaryKey(Integer id);

    int insert(Enterprise record);

    int insertSelective(Enterprise record);

    Enterprise selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Enterprise record);

    int updateByPrimaryKey(Enterprise record);

    List<Enterprise> show();
}
