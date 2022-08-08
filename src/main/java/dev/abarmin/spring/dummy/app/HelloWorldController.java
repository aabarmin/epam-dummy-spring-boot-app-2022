package dev.abarmin.spring.dummy.app;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Aleksandr Barmin
 */
@RestController
public class HelloWorldController {
  @GetMapping("/")
  public String helloWorld() {
    return "Hello, World!";
  }
}
