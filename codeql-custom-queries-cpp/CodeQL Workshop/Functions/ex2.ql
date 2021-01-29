import cpp

from FunctionAccess access, Function foo
where 
    foo.getName().matches("%ioctl%")
    and
    access.getTarget() = foo

select foo, access