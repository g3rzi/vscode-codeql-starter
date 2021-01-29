import cpp 

from FunctionCall fc 
where fc.getTarget().hasName("amqp_socket_recv")
select fc