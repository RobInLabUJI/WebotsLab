import rpyc

class RobotService(rpyc.Service):
    def __init__(self, robot):
        super().__init__()
        self.exposed_robot = robot
        
    def on_connect(self, conn):
        # code that runs when a connection is created
        # (to init the service, if needed)
        pass

    def on_disconnect(self, conn):
        # code that runs after the connection has already closed
        # (to finalize the service, if needed)
        pass
        
    def restartSimulation(self):
        self.exposed_robot.simulationReset()
    
from controller import Supervisor
from rpyc.utils.server import ThreadedServer

TIME_STEP = 8

robot = Robot()
service = RobotService(robot)
t = ThreadedServer(service, port=18861, 
                   protocol_config={'allow_public_attrs': True,})
t.start()
while robot.step(TIME_STEP) != -1:
   pass