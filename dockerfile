FROM rocker/verse:4.0.3

RUN R -e "install.packages('styler')"
RUN R -e "install.packages('checkmate')"
RUN R -e "install.packages('strex')"
RUN R -e "install.packages('zeallot')"

RUN apt-get update
RUN apt-get -y install libtiff-dev
RUN apt-get -y install libwebp-dev
RUN apt-get -y install libzstd-dev
COPY ijtiff_2.2.7.tar.gz .
RUN R -e "install.packages('ijtiff_2.2.7.tar.gz', repos=NULL, type = 'source')"

COPY autothresholdr-1.3.11.tar.gz .
RUN R -e "install.packages('autothresholdr-1.3.11.tar.gz', repos=NULL, type = 'source')"

RUN R -e "install.packages('detrendr')"
RUN R -e "install.packages('BiocManager'); BiocManager::install('EBImage')"
