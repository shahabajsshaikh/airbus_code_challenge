import connection.client_resource as conn
from datetime import datetime
from datetime import date
import pprint

# Lambda Execution.
def lambda_handler(event, context):

    resource = conn.ec2_resource.instances.all()
    for instance in resource:
        print("\n", instance.id, "\n", instance.instance_type, "\n", instance.state['Name'])



event = {
    "rig": "934972944588",
    "Environment": "stag"
}
context = None

lambda_handler(event, context)