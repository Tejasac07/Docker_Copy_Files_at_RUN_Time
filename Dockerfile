#base image

FROM openjdk:17-jdk

WORKDIR /app

EXPOSE 5000

ENV QA_Environment=QA
ENV Preprod_Environment=preprod

COPY ./copy_script.sh /app

COPY ./config /app

RUN chmod 777 /app/copy_script.sh

COPY ./target/java-rest-api-calculator.jar /app/java-rest-api-calculator.jar

ENTRYPOINT ["bash","-c","/app/copy_script.sh"]
