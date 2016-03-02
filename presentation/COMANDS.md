<!-- *************** SLIDES BEGIN ********************* -->
## View kernel version
- uname -a

## Todas las variables configurables de TCP
sysctl -a | grep tcp

Ver:
```
cat /proc/sys/net/core/somaxconn
sysctl net.core.somaxconn
```

Cambiar:
```
echo 65535 > /proc/sys/net/core/somaxconn
sysctl -w net.core.somaxconn = 1024
[----Persistente----]
agregar net.core.somaxconn = 1024 a /etc/sysctl.conf
```

## Valores de los estados de los sockets
netstat -nat | awk '{print $6}' | sort | uniq -c | sort -n

## Valor de file-max para el usuario
ulimit -n

## Ver los valores de limites de archivos
ulimit -a



