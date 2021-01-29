import cpp

from Struct struct, FieldAccess fieldAccess
where struct.getName() = "amqp_socket_class_t"
    and
    struct.getAField() = fieldAccess.getTarget()
    and
    fieldAccess.getTarget().hasName("recv")
select struct, fieldAccess