import cpp

from VariableAccess va
where va.getTarget().hasName("current_task")
select va.getEnclosingFunction()