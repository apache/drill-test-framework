#!/bin/bash
DRILL_TEST_DATA_DIR=$1

test_dir=${DRILL_TEST_DATA_DIR}/Datasources/table_function

untar_data () {
    local location=$1
    local tar_name=$2
    local file_name=$3

    tar xzvf $location/$tar_name -C $location ./$file_name
}

prepare_dataset () {
    local location=$1
    local file_name=$2
    local file=$test_dir/$file_name
    local tar_name=$3

    # Reusing of existing file if exists
    if [ ! -f $file ]
    then
        untar_data $location $tar_name $file_name
    fi
}

base_file_name="DRILL-5166_NPE_with_table_function"
tar_name="DRILL-5166_data.tar.gz"
prepare_dataset $test_dir ${base_file_name}_group_select_1.csv $tar_name
prepare_dataset $test_dir ${base_file_name}_group_select_2.csv $tar_name
prepare_dataset $test_dir ${base_file_name}_large_file.csv $tar_name
