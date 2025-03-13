FROM rocker/tidyverse:4.4.1 AS build_stage

ARG GITHUB_TOKEN
ENV GITHUB_TOKEN=${GITHUB_TOKEN}

COPY /setup.R /setup.R
RUN Rscript setup.R

FROM rocker/tidyverse:4.4.1 AS final_stage

COPY / /
COPY --from=build_stage /usr/local/lib/R/site-library /usr/local/lib/R/site-library
COPY --from=build_stage /usr/local/lib/R/library /usr/local/lib/R/library

ENTRYPOINT ["Rscript","main.R"]
