FROM oscarlevin/pretext:small

RUN apt-get update && apt-get install -y --no-install-recommends poppler-utils asymptote

RUN apt-get install -y bc binutils bzip2 ca-certificates cliquer cmake curl \
ecl eclib-tools fflas-ffpack flex g++ gap gcc gengetopt gfan gfortran \
glpk-utils gmp-ecm lcalc libatomic-ops-dev libboost-dev \
libbraiding-dev libbrial-dev libbrial-groebner-dev libbz2-dev \
libcdd-dev libcdd-tools libcliquer-dev libcurl4-openssl-dev libec-dev \
libecm-dev libffi-dev libflint-dev libfplll-dev libfreetype-dev \
libgap-dev libgc-dev libgd-dev libgf2x-dev libgiac-dev libgivaro-dev

RUN apt-get install -y libglpk-dev libgmp-dev libgsl-dev libhomfly-dev libiml-dev \
liblfunction-dev liblinbox-dev liblrcalc-dev liblzma-dev libm4ri-dev \
libm4rie-dev libmpc-dev libmpfi-dev libmpfr-dev libncurses5-dev \
libntl-dev libopenblas-dev libpari-dev libplanarity-dev libppl-dev \
libprimecount-dev libprimesieve-dev libpython3-dev libqhull-dev \
libreadline-dev librw-dev libsingular4-dev libsqlite3-dev libssl-dev \
libsuitesparse-dev libsymmetrica2-dev libz-dev libzmq3-dev m4 make

RUN apt-get install -y maxima maxima-sage meson nauty ninja-build openssl \ palp pari-doc \
pari-elldata pari-galdata pari-galpol pari-gp2c pari-seadata patch \
patchelf perl pkg-config planarity ppl-dev python3 python3-setuptools \
python3-venv qhull-bin singular singular-doc sqlite3 sympow tachyon \
tar texinfo tox xcas xz-utils

RUN git clone -c core.symlinks=true --filter blob:none  \
--origin upstream --branch master --tags \
https://github.com/sagemath/sage.git

RUN cd sage

RUN make configure

RUN ./configure

RUN MAKE="make -j4" make

RUN ln -sf $(pwd)/sage /usr/local/bin
