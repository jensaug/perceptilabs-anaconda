FROM continuumio/anaconda3

SHELL ["/bin/bash", "--login", "-c"]

RUN conda create -n myenv python=3.8
RUN conda init bash
RUN echo "conda activate myenv" > ~/.bashrc
RUN pip install perceptilabs

CMD perceptilabs

