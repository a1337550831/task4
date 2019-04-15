package controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pojo.Student;
import service.StudentService;

import java.util.List;

@Controller
public class IndexController {
    private Logger logger= Logger.getLogger(IndexController.class);
    @Autowired
    private StudentService studentService;
    @RequestMapping(value ="/",method = RequestMethod.GET)
    public ModelAndView stuList(){
        ModelAndView mv =new ModelAndView();
        logger.info("查询工资排名前4的学员");
       List<Student> list= studentService.show();
       mv.addObject("list",list);
        mv.setViewName("index");
        return mv;
    }

    }




