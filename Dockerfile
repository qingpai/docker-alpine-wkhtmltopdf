#FROM alpine:latest
FROM madnight/alpine-wkhtmltopdf-builder
MAINTAINER caotian@gmail.com

# install necessary packages and compile MuPDF, clean up afterwards
RUN apk add --no-cache \
        git \
        make \
        pkgconfig \
        build-base \
	&& git clone --recursive git://git.ghostscript.com/mupdf.git \
        && cd mupdf \
        && git submodule update --init \
        && make HAVE_X11=no HAVE_GLUT=no prefix=/usr/local install \
        && cd / \
        && rm -r mupdf \
        && apk del \
        git \
        make \
        pkgconfig \
        build-base
