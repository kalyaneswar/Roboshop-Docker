FROM maven as build

WORKDIR /app

COPY . .
RUN mvn dependency:resolve

RUN mvn clean package

FROM openjdk:8-jre-alpine3.9

EXPOSE 8080

WORKDIR /app

COPY --from=build /app/target/shipping-1.0-SNAPSHOT.jar shipping.jar


ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql

CMD ["java", "-jar", "shipping.jar"]

