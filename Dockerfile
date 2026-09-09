# Etapa 1: Build da aplicação com Gradle e JDK 17
FROM eclipse-temurin:17-jdk-jammy AS build
WORKDIR /app

# Copia os arquivos de configuração do Gradle
COPY gradlew gradlew
COPY gradle gradle
COPY build.gradle.kts settings.gradle.kts ./

# Garante permissão de execução no wrapper do Gradle
RUN chmod +x gradlew

# Copia o código fonte
COPY src src

# Executa o build gerando o arquivo .jar
RUN ./gradlew bootJar --no-daemon -x test

# Etapa 2: Imagem leve para execução
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copia o JAR gerado da etapa anterior
COPY --from=build /app/build/libs/*.jar app.jar

# Expõe a porta 8080 padrão do Spring Boot
EXPOSE 8080

# Inicia a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
