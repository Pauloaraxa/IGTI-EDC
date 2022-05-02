import boto3

s3 = boto3.resource('s3')
bucket = s3.Bucket('datalake-paulo-edc')

with open('PNAD_COVID_112020.csv', 'rb') as data:
    bucket.upload_fileobj(data, 'PNAD_COVID_112020.csv')


  