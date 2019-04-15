package controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.Enterprise;
import service.EnterpriseService;

import java.util.List;

@Controller

public class CompanyController {
    @Autowired
    private EnterpriseService enterpriseService;
    private Logger logger =Logger.getLogger(CompanyController.class);
    @RequestMapping(value = "/company",method = RequestMethod.GET)
    public ModelAndView companyList(@RequestParam( value = "id",defaultValue = "1") Integer id){
        ModelAndView mv =new ModelAndView();
        logger.info("通过id查询");
        Enterprise enterprise=enterpriseService.selectByPrimaryKey(id);
        logger.info("查询公司名");
        List<Enterprise> enterprises =enterpriseService.show();
        mv.addObject("enterprise",enterprise);
        mv.addObject("enterprises",enterprises);
        mv.setViewName("company");
        return mv;
    }
}
