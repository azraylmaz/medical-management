FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build -x test

CMD ["java", "-jar", "build/libs/medical-management-0.0.1-SNAPSHOT.jar"]