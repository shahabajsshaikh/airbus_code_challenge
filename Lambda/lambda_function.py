import json
import logging
import connection.client_resource as conn
from datetime import datetime
from botocore.exceptions import ClientError


# Lambda Execution.
def lambda_handler(event, context):
    logger = logging.getLogger()
    now = datetime.now()
    timing  = now.strftime("%m_%d_%Y-%H-%M-%S")

    # Create empty json for append metadata.
    json_pre = {
        "ec2_details":[
        ]
    }

    # TODO pull ec2 details and store.
    try:
        for region in event["rig"]:

            ec2_resource = conn.connection_setup(region)
            resource = ec2_resource.instances.all()

            for instance in resource:
                print("\n", instance.id, "\n", instance.instance_type, "\n", instance.state['Name'])
                values = {
                    "ec2_id" : instance.id,
                    "ec2_type" : instance.instance_type,
                    "ec2_status" : instance.state['Name']
                }
                json_pre["ec2_details"].append(values)
                logger.info("fetch successfully")

            with open(r".\Metadata\{}.json".format(timing), "w") as outfile:
                #outfile.write(json_pre)
                json.dump(json_pre, outfile)
        return "Succeed"

    except ClientError as e:
        logging.error(e)
        return "Failed"

"""
 # Use below for local execution of code or enhancement.


event = {
    "rig": ["ap-south-1", "us-east-1"]
}
context = None

lambda_handler(event, context)

"""