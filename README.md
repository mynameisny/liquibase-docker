## 生成镜像
```shell
docker build -t ningyu/liquibase .
```

## 运行容器
```shell
docker run -it --rm  -v "$(pwd)"/data:/opt/jboss/data -e LIQUIBASE_DRIVER=com.mysql.jdbc.Driver -e LIQUIBASE_CHANGELOG=liquibase.xml -e LIQUIBASE_URL="jdbc:mysql://10.168.222.194:3306/demo?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false" -e LIQUIBASE_USERNAME=root -e LIQUIBASE_PASSWORD=123456 ningyu/liquibase update
```