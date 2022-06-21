FROM rocker/verse:4.0.5
# This Docker image is built on a Cyserve VICE image (Visual Interactive Compute Environment)

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="CyVerse RStudio verse" \
      org.label-schema.description="Built from Rocker-Project RStudio Verse, additional depends for CyVerse K8s workbench" \
      org.label-schema.url="https://cyverse.org" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="e.g. https://github.com/cyverse-vice/rstudio-verse" \
      org.label-schema.vendor="CyVerse" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0.0"

LABEL Maintainer="Andrew Antaya aantaya@arionza.edu"

RUN R -e "install.packages('pacman', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('usethis', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('credentials', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggthemes', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('jpeg', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('viridis', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('scales', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('knitr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('lubridate', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('magrittr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('stringi', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rio', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('openxlsx', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('Rcpp', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggpubr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rstatix', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('XML', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tictoc', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('openssl', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('RPushbullet', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggfittext', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggsci', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('effsize', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('pwr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('hms', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('styler', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('lintr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('formatR', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('RColorBrewer', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dlookr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rmarkdown', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('bannerCommenter', dependencies=TRUE, repos='http://cran.rstudio.com/')"
