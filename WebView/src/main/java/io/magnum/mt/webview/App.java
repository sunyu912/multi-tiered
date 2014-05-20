package io.magnum.mt.webview;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Configuration
@Controller
@EnableAutoConfiguration
@ComponentScan
public class App {    
    
    @Value(value = "${DATA_ENDPOINT}")
    private String dataEndpoint;
    
    @RequestMapping("/")
    ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("dataEndpoint", dataEndpoint);        
        return modelAndView;
    }    

    public static void main(String[] args) throws Exception {
        SpringApplication.run(App.class, args);
    }
}
