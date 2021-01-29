import cpp

from FunctionAccess fa
where fa.getTarget().hasName("amqp_tcp_socket_recv")
select fa