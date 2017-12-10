function simSend(time_s, velocity_ang, velocity_lin, acceleration_lin, orientation, position)
    %time_s... time of the simulation in seconds
    %velocity_ang... angular velocity of IMU in rad/s(body coordinates)
    %velocity_lin... linear velocity in m/s (earth north-east-down coordinates)
    %acceleration_lin... linear acceleration of IMU in m/s^2 (body coordinates)
    %orientation... norm quaternion (earth->body)
    %position... in meters (north-east-down)
    
    sim_out = evalin('base','sim_out');    
    buf = py.struct.pack('<17d', time_s, velocity_ang(1), velocity_ang(2), velocity_ang(3), acceleration_lin(1), acceleration_lin(2), acceleration_lin(3), orientation(1), orientation(2), orientation(3), orientation(4), velocity_lin(1), velocity_lin(2), velocity_lin(3), position(1), position(2), position(3));
    sim_out.send(buf);
end