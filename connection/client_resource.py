import boto3

ec2_client = boto3.client('ec2', region_name='ap-south-1')
ec2_resource = boto3.resource('ec2', region_name='ap-south-1')
