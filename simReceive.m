function x = simReceive()
    %x... 16 values of servo demands (0..1)

    sim_in = evalin('base','sim_in');
    sim_in.setblocking(1);
    x = null(1);
    while isempty(x)
        try
            x_ = sim_in.recv(py.int(64));
            x__ = py.list(py.struct.unpack('<16f', x_));
            cx = cell(x__);
            x = cellfun(@double,cx)';
        catch
        end
    end
    drain = 0;
    i = evalin('base','i');
    sim_in.setblocking(0);
    while not(drain)
        try
            sim_in.recv(py.int(64));
            assignin('base','i',i+1);
        catch
            drain = 1;
        end
    end
end