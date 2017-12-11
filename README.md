# Matlab&Simulink interface to ArduPilot SITL
![Simulation schema](https://github.com/kralma/matlab-ardupilot-sitl/blob/master/img/simulationSchema.svg)
## How to run
1. Run your ArduPilot SITL instance in Gazebo mode. You'll have to run script like "sim_vehicle.py --model gazebo"
2. Optionally connect your GCS
3. Run init.m from Matlab
4. Run Simulink model with connected ArduPilot SITL interface blocks

It uses Python scripts so you have to initialize Python in Matlab.
