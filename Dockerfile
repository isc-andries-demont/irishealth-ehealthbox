ARG IMAGE=store/intersystems/irishealth-community:2020.4.0.547.0

FROM ${IMAGE}

#define the durable iris config folder
ENV ISC_DATA_DIRECTORY=/dur

#copy the jar files to a folder in the container
USER irisowner
COPY java/ home/irisowner/java