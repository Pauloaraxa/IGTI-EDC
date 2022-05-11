from pyspark.sql.functions import mean, max, min, col, count
from pyspark.sql import SparkSession

spark = (
  SparkSession.builder.appName("ExerciseSpark")
  .getOrCreate()
)

# Ler no Raw
enem = (
    spark
    .read
    .format("csv")
    .option("header",True)
    .option("inferSchema",True)
    .option("delimiter",";")
    .load("s3://igti-paulo-476570873333/raw-data/")
       )


# Escrever no parquet
(
    enem
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("year")
    .save("s3://igti-paulo-476570873333/staging-silver/")
)

