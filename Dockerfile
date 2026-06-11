FROM rocker/rstudio:latest

ARG QUARTO_VERSION=1.9.37

RUN apt-get update && apt-get install -y libglpk40 wget \
    && wget -q "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb" -O /tmp/quarto.deb \
    && dpkg -i /tmp/quarto.deb \
    && rm /tmp/quarto.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install desired R packages using rocker helper script.
RUN install2.r --error \
    tidyverse \
    gt \
    usethis \
    quarto \
    targets \
    here \
    remotes \
    && R -e "remotes::install_github('richardjtelford/checker')"

# Default RStudio options for teaching (checker recommendations).
COPY rstudio-prefs.json /etc/rstudio/rstudio-prefs.json

