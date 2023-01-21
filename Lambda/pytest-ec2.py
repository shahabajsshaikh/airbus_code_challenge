import lambda_function

def test_1():
    event_1= {
        "rig": ["ap-south-1"]
    }
    assert "Succeed" == lambda_function.lambda_handler(event_1, None)
def test_2():
    event_2= {
        "rig": ["ap-south"]
    }
    assert "NotConnected" == lambda_function.lambda_handler(event_2, None)