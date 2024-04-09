FROM ubuntu:latest
ENV TZ=Europe/London \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y \
    && apt-get install texlive-latex-base texlive-xetex texlive-latex-extra texlive-fonts-recommended xzdec -y
WORKDIR /data
ENTRYPOINT [ "/bin/sh", "-c", "xelatex -output-directory=data resume.tex"]

# ARG solution sourced from - https://askubuntu.com/questions/909277/avoiding-user-interaction-with-tzdata-when-installing-certbot-in-a-docker-contai

# Code credit - https://medium.com/@danthelion/serverless-latex-resume-generation-with-github-actions-92e4ae9028a1