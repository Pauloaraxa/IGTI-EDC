import boto3
import botocore
import pandas as pd


BUCKET_NAME = 'datalake-paulo-edc' # replace with your bucket name
KEY = 'data/LogMaquinas1.csv' # replace with your object key

s3 = boto3.resource('s3')

try:
    s3.Bucket(BUCKET_NAME).download_file(KEY,'LogMaquinas1.csv')
except botocore.exceptions.ClientError as e:
    if e.response['Error']['Code'] == "404":
        print("The object does not exist.")
    else:
        raise

df = pd.read_csv("LogMaquinas1.csv", sep=",")
print(df)

s3.upload_file("TDF.csv",BUCKET_NAME,"TDF.csv")