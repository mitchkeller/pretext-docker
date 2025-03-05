FROM oscarlevin/pretext:small

RUN wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

RUN bash Miniforge3-$(uname)-$(uname -m).sh -b

RUN mamba create -n sage sage python=3.12

RUN echo "conda activate sage" >> ~/.bashrc