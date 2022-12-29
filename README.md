<div align="center">

# EMLO 2.0 Assignment 5

<a href="https://pytorch.org/get-started/locally/"><img alt="PyTorch" src="https://img.shields.io/badge/PyTorch-ee4c2c?logo=pytorch&logoColor=white"></a>
<a href="https://pytorchlightning.ai/"><img alt="Lightning" src="https://img.shields.io/badge/-Lightning-792ee5?logo=pytorchlightning&logoColor=white"></a>
<a href="https://hydra.cc/"><img alt="Config: Hydra" src="https://img.shields.io/badge/Config-Hydra-89b8cd"></a>
<a href="https://github.com/ashleve/lightning-hydra-template"><img alt="Template" src="https://img.shields.io/badge/-Lightning--Hydra--Template-017F2F?style=flat&logo=github&labelColor=gray"></a><br>
[![Paper](http://img.shields.io/badge/paper-arxiv.1001.2234-B31B1B.svg)](https://www.nature.com/articles/nature14539)
[![Conference](http://img.shields.io/badge/AnyConference-year-4b44ce.svg)](https://papers.nips.cc/paper/2020)

</div>

## Description

In this assignment, we deploy our container on AWS Fargate.

## Docker Support on AWS

Docker support has been added to the [Makefile](Makefile).

To build the docker container, use:

```bash
make build
```

The above command creates container with the tag 'session05:latest'. I have retagged it to push to AWS ECR.

This build also exists on [AWS Elastic Container Registry](https://gallery.ecr.aws/b8b4j3p4/emlov2-repo-yaseen)

To run the container, use:

```bash
docker run -it -p 80:80 -t public.ecr.aws/b8b4j3p4/emlov2-repo-yaseen:session05
``` 

Note : You need to have AWS S3 permissions on your IAM user. Also, gradio runs on port 80. Make sure that port is accessible on EC2. If you are deploying the container as a service on Fargate, have your Task Definition use S3 Permissions in your Task Role, and your port 80 exposed.
