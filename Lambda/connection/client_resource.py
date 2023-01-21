import boto3
from botocore.exceptions import ClientError

def connection_setup(region):
    try:
        ec2_resource = boto3.resource('ec2', region_name=region)
        return ec2_resource
    except ClientError as e:
        return "NotConnected"
