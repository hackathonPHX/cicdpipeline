#FROM eclipse-temurin:21 AS build
#WORKDIR /app
#COPY pom.xml /app
##RUN mvn dependency:resolve
#COPY . /app
##RUN mvn clean
##RUN mvn package -DSkipTests -X

#FROM amazoncorretto:17-alpine
#COPY --from=build /app/target/*.jar app.jar
#EXPOSE 8080
#CMD ["java", "-jar", "app.jar"]

FROM eclipse-temurin:21
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]