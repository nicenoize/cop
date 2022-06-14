FROM registry.datexis.com/bwinter/datexis-pytorch:python3.7-cuda11.0

ENV PYTHONIOENCODING=utf-8

RUN pip install captum==0.2.0
RUN pip install lime==0.2.0.0
RUN pip install matplotlib==3.2.1
RUN pip install nltk==3.5
RUN pip install numpy==1.18.1
RUN apt-get update
RUN apt-get install libffi-dev
RUN pip install gcc7
RUN pip install python-papi
RUN pip install scikit-image==0.16.2
RUN pip install scikit-learn==0.22.2.post1
RUN pip install scipy==1.4.1
RUN pip install sentencepiece==0.1.86
RUN pip install tokenizers==0.5.2
RUN pip install torchvision==0.6.0
RUN pip install tqdm==4.45.0
RUN pip install transformers==2.8.0

COPY . /src

WORKDIR /src