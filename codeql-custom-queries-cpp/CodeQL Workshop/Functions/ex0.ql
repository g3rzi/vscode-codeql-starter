import cpp

from Function foo
where 
    foo.getName().matches("%ioctl%")
    and
    foo.hasDefinition()
select foo