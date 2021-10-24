package by.ekids.springjsphelloworld;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class MainController {
    // внедряем значение из application.properties
    @Value("${welcome.message:test}")
    private String message = "Hello World";

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("message", this.message);
        return "index";
    }

    @RequestMapping("/random")
    public String random(Map<String, Object> model) {
        return "random";
    }

    @RequestMapping("/employee")
    public String getEmployees(Map<String, Object> model) {
        return "employee";
    }
}
