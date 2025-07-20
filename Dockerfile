# -------------------------------------------
# STEP 1 - Base image
# -------------------------------------------
FROM eclipse-temurin:17-jdk-jammy as builder

# -------------------------------------------
# STEP 2 - Set working directory
# -------------------------------------------
WORKDIR /app

# -------------------------------------------
# STEP 3 - Copy pom.xml & download dependencies
# -------------------------------------------
COPY pom.xml .

RUN mvn dependency:go-offline -B

# -------------------------------------------
# STEP 4 - Copy source code & build jar
# -------------------------------------------
COPY src ./src

RUN mvn clean package -DskipTests

# -------------------------------------------
# STEP 5 - Build final image with jar
# -------------------------------------------
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

COPY --from=builder /app/target/*.jar auth-service.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/auth-service.jar"]
