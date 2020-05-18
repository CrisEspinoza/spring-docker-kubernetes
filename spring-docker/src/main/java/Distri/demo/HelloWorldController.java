package Distri.demo;


import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequestMapping("/hello")
public class HelloWorldController {

    @GetMapping(value = "")
    @ResponseBody
    public String Hello() {
        return "\n\nHello world \n\n";
    }
}
