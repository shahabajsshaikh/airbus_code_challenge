# Airbus Code Challenge.

----------------

##### This is Code Challenge with stack, 1) AWS 2) python 3) Pytest 4) Terraform 5) CICD.


Name: ```Shahabaj S. Shaikh```

Assign by: ```Airbus```

---------------------

Below is the folder structure which presenting the rassigned task completion with folder structure.

#### IAC-Terraform (Infrastructure As Code):

The folder IAC-Terraform is contains the Ec2 creation terraform IaC

#### Lambda (Python SDK with Pytest):

The folder lambda contains the python code, to fetch the metadata from aws account regarding ec2 and pytest with it you can do your unit testing.

Which serve you ec2 information with respective region such as ec2_id, status, ec2_type in json format with the help of it you can configure monitoring tool with like grafana for visualization.  

_Note: Before start execute you should ```aws configure``` at you terminal or cmd and if it is in lambda execution then resource based role should assign_ 

```commandline
├───README.md
├───IAC-Terraform
└───Lambda
    ├───.idea
    │   ├───inspectionProfiles
    │   ├───pylintpylint.tmp
    │   └───sonarlint
    │       └───issuestore
    │           ├───0
    │           │   └───6
    │           ├───1
    │           │   └───e
    │           ├───3
    │           │   └───d
    │           └───8
    │               └───e
    ├───.pytest_cache
    │   └───v
    │       └───cache
    ├───connection
    │   └───__pycache__
    ├───Metadata
    └───__pycache__


```
CICD:
    buildspec.yml id for AWS CICD Codebuild sub-service to get steps executions to deploy terraform lambda in aws account.