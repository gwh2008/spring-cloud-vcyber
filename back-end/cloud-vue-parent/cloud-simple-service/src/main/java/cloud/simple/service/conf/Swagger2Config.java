package cloud.simple.service.conf;

import java.time.LocalDate;

import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;

import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@EnableSwagger2
@EnableWebMvc
@Configuration
public class Swagger2Config {
	/**
	 * 通过 createRestApi函数来构建一个DocketBean
	 * 函数名,可以随意命名,喜欢什么命名就什么命名
	 */
	@Bean
    public Docket createRestApi() {
    	return new Docket(DocumentationType.SWAGGER_2)
				.apiInfo(apiInfo())
				.select()
				//.apis(RequestHandlerSelectors.basePackage("cloud.simple.service"))
				.apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
				.paths(PathSelectors.any())
				.build()
				.pathMapping("/")
				.directModelSubstitute(LocalDate.class, String.class)
				.genericModelSubstitutes(ResponseEntity.class)
				.useDefaultResponseMessages(false)
				.enableUrlTemplating(true);
    }
    //构建 api文档的详细信息函数
	@SuppressWarnings("deprecation")
	private ApiInfo apiInfo() {
		return new ApiInfoBuilder()
				//页面标题
				.title("SpringCloud + vue RESTful API")
				//创建人
				.contact("gaowh")
				//版本号
				.version("1.0")
				//描述
				.description("API 描述")
				.build();
	}
}
