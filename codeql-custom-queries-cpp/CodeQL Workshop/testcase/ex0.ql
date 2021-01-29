import cpp 

from FunctionCall fc
where fc.getTarget().hasName("recv")
select fc, fc.getEnclosingFunction()