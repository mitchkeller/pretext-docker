FROM oscarlevin/pretext:small

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

RUN bash Miniforge3.sh -b -p "/conda"

SHELL ["/bin/bash", "-i", "-c"]

ENV PATH="/conda/bin:${PATH}"

RUN conda --version

RUN mamba create --yes -n sage sage python=3.12

RUN echo 'conda activate sage' >> ~/.bashrc

