FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y \
    && apt-get install texlive-latex-base texlive-xetex texlive-latex-extra texlive-fonts-recommended xzdec -y
WORKDIR /data
ENTRYPOINT [ "/bin/sh", "-c", "xelatex -output-directory=out resume.tex"]

# Code credit - https://medium.com/@danthelion/serverless-latex-resume-generation-with-github-actions-92e4ae9028a1