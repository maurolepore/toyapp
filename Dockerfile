FROM rocker/tidyverse:4.4.1

COPY / /
ARG GITHUB_TOKEN
ENV GITHUB_TOKEN=${GITHUB_TOKEN}
RUN Rscript setup.R

ENTRYPOINT ["Rscript","main.R"]
