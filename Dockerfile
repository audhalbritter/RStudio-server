FROM rocker/rstudio:latest

RUN apt-get update && apt-get install -y libglpk40
# Install desired R packages using rocker helper script.
RUN install2.r --error \
    tidyverse \
    gt \
    usethis \
    quarto \
    targets \
    here

