package com.amitwaves.HelloWorldSpring;

import static org.assertj.core.api.Assertions.assertThat;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HelloWorldSpringApplicationTests {

    @Test
    public void contextLoads() {
        assertThat(true).isTrue();
    }

}
