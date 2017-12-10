sim_out_address = py.tuple({'127.0.0.1', py.int(9003)});
sim_out = py.socket.socket(py.socket.AF_INET, py.socket.SOCK_DGRAM);
sim_out.connect(sim_out_address);
sim_out.setblocking(0);

sim_in_address = py.tuple({'127.0.0.1', py.int(9002)});
sim_in = py.socket.socket(py.socket.AF_INET, py.socket.SOCK_DGRAM);
sim_in.bind(sim_in_address);
sim_in.setblocking(1);
sim_in.settimeout(2);