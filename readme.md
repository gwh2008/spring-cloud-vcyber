

## 项目简介
* 此项目是一套基于springcloud + mybatis + vue全家桶（Vue2.x + Vue-router2.x + Vuex）的前后端分离框架.
* 使用Maven对项目进行模块化管理，提高项目的易开发性、扩展性。
* 系统包括分布式配置、eureka注册中心、服务中心、zipkin分布式跟踪等。
* 每个模块服务多系统部署，注册到同一个eureka集群服务注册中心，实现集群部署。

## 主要功能
* 登录、退出登录
* 修改密码、记住密码
* 菜单管理
* 系统参数
* 权限节点
* 岗位管理
* 部门管理
* 用户组管理
* 用户管理

## 依赖
### java后端依赖环境
* Maven 3
* Java 8
* MySQL 5.7
* Docker 1.13.1 (不是必须的)

### vue2前端依赖环境
* node >= 6.9.0
* npm  >= 3.0.0
* vue 				<https://vuefe.cn/v2/guide/>
* element-ui@1.1.3  <http://element.eleme.io/1.1/#/zh-CN/component/installation>
* axios  			<https://github.com/mzabriskie/axios>
* fontawesome 		<http://fontawesome.io/icons/>
* js-cookie  		<https://github.com/js-cookie/js-cookie>
* lockr  			<https://github.com/tsironis/lockr>
* lodash  			<http://lodashjs.com/docs/>
* moment  			<http://momentjs.cn/>

## 工程说明
* cloud-config-server：配置中心。
* cloud-eureka-server：注册中心。
* cloud-simple-service：自定义的微服务。
* cloud-zipkin-ui：分布式链路调用监控系统，聚合各业务系统调用延迟数据，达到链路调用监控跟踪。
* cloud-vue : vue（Vue2.x + Vue-router2.x + Vuex)的前端项目

## 后端部署说明
 * 导入zipkin2.sql和cloud-vue.sql到mysql数据库。
 * 修改cloud-config-repo与cloud-zipkin-ui中的数据库配置文件
 * 打包命令 mvn package -DskipDockerBuild
 * 依次启动cloud-eureka-server-1.0.0.jar、cloud-config-server-1.0.0.jar、cloud-zipkin-ui-1.0.0.jar、cloud-simple-service-1.0.0.jar。
 * 端口：配置中心端口(1111)、注册中心(8888)、rest服务(80)、zipkin服务(9012)、UI前端(8080),如果端口冲突请自行修改。

### 数据交互
数据交互通过axios以及RESTful架构来实现

用户校验通过登录返回的auth_key放在header

值得注意的一点是：跨域的情况下，会有预请求OPTION的情况




### 前端部署
```
部署前准备
1.安装node.js
  前端部分是基于node.js上运行的，所以必须先安装node.js，版本要求为6.9.0以上(推荐安装官方推荐版本)，下载地址：https://nodejs.org/zh-cn/

完成以上两个步骤之后，我们进入到frontEnd这个目录，然后按顺序执行以下两行代码就可以愉快地玩耍了。
npm install
npm run dev

注意：前端服务启动，默认会占用8080端口，所以在启动前端服务之前，请确认8080端口没有被占用。
如果想替换前端默认端口，可修改config/index.js里面的dev对象的port参数，但不建议这么做。
另外接口请求本地服务的端口是80端口，如果配置后端服务的时候启动的不是80端口，可在build/webpack.base.conf.js里修改DEV_HOST（开发环境请求地址）。
```

http://localhost:8888/
 ![Eureka页面](https://github.com/gaowenhui/SpringBoot-Shiro-Vue-master-20180625/blob/master/pic/5F77D1C9-CC8D-4d5e-AF38-DBC7693C4970.png)
 

http://127.0.0.1:9012
 ![zipkin页面](https://github.com/gaowenhui/spring-cloud-vcyber/blob/master/pic/zipkin20180626094636.png)


 http://localhost:8080/     admin/admin
 ![登录页面](https://github.com/gaowenhui/spring-cloud-vcyber/blob/master/pic/login20180626094122.png)
 
  ![登录后页面](https://github.com/gaowenhui/spring-cloud-vcyber/blob/master/pic/20180626094036.png)
 
  ![数据库页面](https://github.com/gaowenhui/spring-cloud-vcyber/blob/master/pic/db20180626094253.png)
