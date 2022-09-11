using Sockets

errormonitor(@async begin
    server = listen(ip"192.168.0.53",11029)
    while true
        sock = accept(server)
        @async while isopen(sock)
            write(sock, readline(sock, keep=true))
        end
    end
end)
