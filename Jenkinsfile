stages:
- name: Build
  steps:
  - runScriptConfig:
      image: maven:3-jdk-11
      # maven:3-jdk-7
      shellScript: |-
        mvn package 
- name: Publish
  steps:
  - publishImageConfig:
      dockerfilePath: ./Dockerfile 
      buildContext:  . --network host 
      tag: app-app:${CICD_EXECUTION_SEQUENCE}
- name: Deploy
  steps:
  - applyYamlConfig:
      path: ./deployment.yaml
