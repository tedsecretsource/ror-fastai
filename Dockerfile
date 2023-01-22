FROM ruby:3.2
RUN apt-get update && apt-get install --no-install-recommends -y python3 python3-pip \
    && pip3 install fastcore fastai ipywidgets
# RUN apt update
# RUN apt add build-base
# RUN apk add --virtual .builddeps util-linux util-linux-misc git lapack libstdc++ \
#     cmake g++ gcc gfortran musl-dev lapack-dev openblas-dev openssl-dev \
#     libxml2-dev libxslt-dev pciutils usbutils coreutils binutils findutils grep iproute2
# RUN apk add python3
# RUN apk add py3-pip python3-dev
# RUN pip3 install wheel
# RUN ln -s /usr/bin/python3 /usr/bin/python
# RUN pip3 install --no-use-pep517 opencv-python
# Build SciPy from source
# Used to build SciPy from source
# RUN pip3 install pybind11 pythran
# RUN pip3 install cython --install-option="--no-cython-compile"
# RUN git clone https://github.com/scipy/scipy.git
# WORKDIR /scipy
# RUN git fetch --all --tags
# RUN git checkout v1.10.0
# RUN git submodule sync
# RUN git submodule update --init --recursive
# RUN export BLAS=/usr/lib/libblas.so.3
# RUN export LAPACK=/usr/lib/liblapack.so.3
# RUN python3 setup.py build
# RUN python3 setup.py install --prefix=/usr/lib/python3.10/site-packages
# # Build pyarrow from source
# WORKDIR /
# RUN git clone https://github.com/apache/arrow.git
# WORKDIR /arrow
# RUN git checkout apache-arrow-11.0.0
# RUN git submodule update --init --recursive
# RUN export PARQUET_TEST_DATA="${PWD}/cpp/submodules/parquet-testing/data"
# RUN export ARROW_TEST_DATA="${PWD}/testing/data"
# WORKDIR /
# # RUN python3 -m venv pyarrow-dev
# # RUN source pyarrow-dev/bin/activate
# RUN pip3 install -r arrow/python/requirements-build.txt
# RUN mkdir dist
# RUN export ARROW_HOME="$(pwd)/dist"
# RUN export LD_LIBRARY_PATH="$(pwd)/dist/lib:$LD_LIBRARY_PATH"
# RUN mkdir arrow/cpp/build
# WORKDIR /arrow/cpp/build
# RUN cmake -DCMAKE_INSTALL_PREFIX=$ARROW_HOME \
#         -DCMAKE_INSTALL_LIBDIR=lib \
#         -DCMAKE_BUILD_TYPE=Debug \
#         -DARROW_BUILD_TESTS=ON \
#         -DARROW_COMPUTE=ON \
#         -DARROW_CSV=ON \
#         -DARROW_DATASET=ON \
#         -DARROW_FILESYSTEM=ON \
#         -DARROW_HDFS=ON \
#         -DARROW_JSON=ON \
#         -DARROW_PARQUET=ON \
#         -DARROW_WITH_BROTLI=ON \
#         -DARROW_WITH_BZ2=ON \
#         -DARROW_WITH_LZ4=ON \
#         -DARROW_WITH_SNAPPY=ON \
#         -DARROW_WITH_ZLIB=ON \
#         -DARROW_WITH_ZSTD=ON \
#         -DPARQUET_REQUIRE_ENCRYPTION=ON \
#         ..
# RUN make -j4
# RUN make install
# WORKDIR /arrow/python
# RUN export PYARROW_WITH_PARQUET=1
# RUN export PYARROW_WITH_DATASET=1
# RUN export PYARROW_PARALLEL=4
# RUN export Arrow_DIR=/dist/lib/cmake/Arrow
# RUN export ArrowDataset_DIR=/dist/lib/cmake/ArrowDataset
# RUN export Parquet_DIR=/dist/lib/cmake/Parquet
# RUN python3 setup.py build_ext --inplace
# RUN python3 setup.py build_ext --build-type=release --bundle-arrow-cpp bdist_wheel
# RUN pip3 install dist/pyarrow-11.0.0-cp310-cp310-linux_aarch64.whl
# RUN deactivate
# # Install fastai
# WORKDIR /
# RUN pip3 install fastcore
# RUN pip3 install fastai
# RUN pip3 install ipywidgets
# RUN rm -rf /scipy
# RUN rm -rf /arrow
# RUN apk del .builddeps
# Add Ruby on Rails layers here
CMD ["bash", "-l"]