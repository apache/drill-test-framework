#!/bin/bash
DRILL_TEST_DATA_DIR=$1

tar -xzmvf ${DRILL_TEST_DATA_DIR}/Datasources/ctas/decimal/fragments/decimal_big.tar.gz -C ${DRILL_TEST_DATA_DIR}/Datasources/ctas/decimal/fragments
tar -xzmvf ${DRILL_TEST_DATA_DIR}/Datasources/ctas/decimal/fragments/decimal_big_zero_prec.tar.gz -C ${DRILL_TEST_DATA_DIR}/Datasources/ctas/decimal/fragments
tar -xzmvf ${DRILL_TEST_DATA_DIR}/Datasources/ctas/decimal/fragments/decimal_big_zero_scale.tar.gz -C ${DRILL_TEST_DATA_DIR}/Datasources/ctas/decimal/fragments
