import rpyc

def Robot():
    conn = rpyc.connect("localhost", 18861)
    robot = conn.root.robot
    return robot
