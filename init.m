ip = '127.0.0.1';
simOutPort = 9003;
simInPort = 9002;
sitl.output.motors = [5 6 7 8];
sitl.output.servos = [1 2 3 4];
sitl.location.latLon = [-35.362938, 149.165085];
sitl.location.height = -585;

sim_out_address = py.tuple({ip, py.int(simOutPort)});
sim_out = py.socket.socket(py.socket.AF_INET, py.socket.SOCK_DGRAM);
sim_out.connect(sim_out_address);
sim_out.setblocking(0);

sim_in_address = py.tuple({ip, py.int(simInPort)});
sim_in = py.socket.socket(py.socket.AF_INET, py.socket.SOCK_DGRAM);
sim_in.bind(sim_in_address);
sim_in.setblocking(1);
sim_in.settimeout(2);