#!/bin/bash -xe

# for cuda 11.7
pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2

pip install ninja
pip install -r requirements.txt

if [ ! -d extern/MVDream ]; then
    git clone https://github.com/bytedance/MVDream extern/MVDream
fi
pip install -e extern/MVDream
pip install -e extern/ImageDream
