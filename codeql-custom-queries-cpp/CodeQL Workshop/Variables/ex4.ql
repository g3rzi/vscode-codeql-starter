import cpp

// from VariableAccess var
// where var.getTarget().hasName("current_task")
// select var

from GlobalOrNamespaceVariable var
where var.hasName("current_task")
select var.getAnAccess()