add jar ${system:build.dir}/hive-contrib-${system:hive.version}.jar;

CREATE TEMPORARY FUNCTION explode2 AS 'org.apache.hadoop.hive.contrib.udtf.example.GenericUDTFExplode2';

SELECT explode2(array(1,2,3)) AS col1 FROM src LIMIT 3;

DROP TEMPORARY FUNCTION explode2;
