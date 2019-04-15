package controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pojo.Work;
import service.WorkService;

import java.util.List;

@Controller
public class JobController {
    @Autowired
    private WorkService workService;
   private Logger logger=Logger.getLogger(JobController.class);
    @RequestMapping(value = "/job",method = RequestMethod.GET)
    public ModelAndView jobList(){
        ModelAndView mv =new ModelAndView();
        logger.info("前端开发");
        List<Work> list=workService.selectByDirection("前端开发");
        logger.info("前端开发======"+list.size());
        logger.info("后端开发");
        List<Work> list1=workService.selectByDirection("后端开发");
        logger.info("后端开发======"+list1.size());
        logger.info("运维方向");
        List<Work> list2=workService.selectByDirection("运维方向");
        logger.info("运维方向======"+list2.size());

        mv.addObject("list",list);
        mv.addObject("list1",list1);
        mv.addObject("list2",list2);
        mv.setViewName("job");
        return mv;
    }
}
