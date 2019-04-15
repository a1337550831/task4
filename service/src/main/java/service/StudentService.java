package service;

import org.springframework.stereotype.Service;
import pojo.Student;

import java.util.List;
@Service
public interface StudentService {

    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    List<Student> show();
}
