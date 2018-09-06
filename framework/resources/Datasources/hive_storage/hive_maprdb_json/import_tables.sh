#!/usr/bin/env bash
source conf/drillTestConfig.properties

hadoop_folder=${DRILL_TESTDATA}/hive_storage/maprdb/json
test_data=test_data.json
maprdb_table=json_MapR_DB_table

# Creating the MapR-DB table:
hadoop fs -test -f $hadoop_folder/$maprdb_table
if [ $? -eq 0 ]
then
    hadoop fs -rm -r $hadoop_folder/$maprdb_table
fi
mapr importJSON -idField "id" -src $hadoop_folder/$test_data -dst $hadoop_folder/$maprdb_table

# Creating the Hive table:

hive_ddl=${DRILL_TEST_DATA_DIR}/Datasources/hive_storage/hive_maprdb_json/hive_table.ddl
hive_ddl_parametrized=${hive_ddl%.*}_param.ddl
cp $hive_ddl $hive_ddl_parametrized

# Replacing parameters with values:
sed -i "s|table_name|$maprdb_table|g" $hive_ddl_parametrized
sed -i "s|hadoop_folder|$hadoop_folder|g" $hive_ddl_parametrized

# Executing the ddl:
${DRILL_TEST_DATA_DIR}/Datasources/hive/execHive.sh $hive_ddl_parametrized

# Clean:
rm $hive_ddl_parametrized