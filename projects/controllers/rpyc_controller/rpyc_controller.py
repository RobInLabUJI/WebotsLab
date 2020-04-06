"""rpyc_controller controller."""

import rpyc

class RobotService(rpyc.Service):
    def __init__(self, robot):
        super().__init__()
        self.exposed_robot = robot
        
    def on_connect(self, conn):
        pass

    def on_disconnect(self, conn):
        pass
        
    def restartSimulation(self):
        self.exposed_robot.simulationReset()
    
from controller import Robot
from rpyc.utils.server import ThreadedServer

robot = Robot()

timestep = int(robot.getBasicTimeStep())

service = RobotService(robot)
t = ThreadedServer(service, port=18861, 
                   protocol_config={'allow_public_attrs': True,})
t.start()

while robot.step(timestep) != -1:
    pass

t.stop()