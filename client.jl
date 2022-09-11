using Sockets
cd = connect(ip"73.202.41.227",11029)
errormonitor(@async while isopen(cd)
           write(stdout, readline(cd, keep=true))
       end)
