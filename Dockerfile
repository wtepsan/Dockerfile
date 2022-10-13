FROM nvidia/cuda:11.0.3-base-ubuntu20.04

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y curl
RUN apt-get install unzip
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install dataclasses
RUN pip3 install -U scikit-learn
RUN pip3 install torch
RUN pip3 install itertoolz
RUN pip3 install DateTime
RUN pip3 install pytz
RUN pip3 install tqdm
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install h5py
RUN pip3 install PyYAML
RUN pip3 install pyyaml
RUN pip3 install tensorboardX
RUN pip3 install torchpack
RUN pip3 install torchpack==0.1.0
RUN pip3 install matplotlib

COPY ./torchlight ./torchlight
RUN pip3 install -e torchlight

RUN pip3 install lightgbm
RUN pip3 install python-math
RUN pip3 install opencv-python 
RUN pip3 install opencv-python-headless
