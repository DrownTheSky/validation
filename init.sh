#!/bin/bash

if [[ $VIRTUAL_ENV == "" ]]; then
    echo "Please activate your virtual environment."
    echo "(source <virtual env folder>/bin/activate)"
else
    echo "VIRTUAL_ENV = $VIRTUAL_ENV" 
    root=$(git rev-parse --show-toplevel)
    echo ${root} >$(python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())")/validation.pth
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -qr ${root}/requirements.txt
fi
