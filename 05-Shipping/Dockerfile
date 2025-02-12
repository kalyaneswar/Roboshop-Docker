FROM maven as build

WORKDIR /app

COPY pom.xml /app
RUN mvn dependency:resolve
COPY src /app/src/

RUN mvn clean package

# List files in the target directory to check if the JAR was created
RUN ls -al /app/target

FROM openjdk:8-jre-alpine3.9

EXPOSE 8080

WORKDIR /app

COPY --from=build /app/target/shipping-1.0-SNAPSHOT.jar shipping.jar


ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql

CMD ["java", "-jar", "shipping.jar"]

