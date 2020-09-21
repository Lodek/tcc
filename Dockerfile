FROM archlinux
ENV LATEX_PACKAGES="texlive-core texlive-bibtexextra texlive-langextra"	
RUN pacman -Sy && pacman -S --noconfirm --noprogressbar $LATEX_PACKAGES make
WORKDIR /target
COPY . /target
CMD make && cat *.pdf
