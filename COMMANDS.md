docker build . -t clicr

docker run -it --entrypoint bash -v ~/git/clicr:/app clicr

export TRAIN_PATH=dataset/train1.0.json
export DEV_PATH=dataset/dev1.0.json
export TEST_PATH=dataset/test1.0.json

python3 dataset-code/describe_data.py -train_file $TRAIN_PATH -dev_file $DEV_PATH -test_file $TEST_PATH
