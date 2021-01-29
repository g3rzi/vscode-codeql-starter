import cpp

predicate hasSizeOfOperatorOfPointerAsParam(FunctionCall call, Expr argument)
{
    call.getAnArgument().getAChild*() = argument 
    and
    argument instanceof SizeofOperator
}

from FunctionCall call, Expr arg
where 
    hasSizeOfOperatorOfPointerAsParam(call, arg)
    and
    call.getTarget().hasName("kmalloc")
    and
    arg.getAChild*().getType() instanceof PointerType
select call