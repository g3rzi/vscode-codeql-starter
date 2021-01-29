import cpp

predicate hasSizeOfOperatorOfPointerAsParam(FunctionCall call, Expr argument)
{
    call.getAnArgument() = argument 
    and
    argument instanceof SizeofOperator
}

from FunctionCall call, Expr arg
where 
    hasSizeOfOperatorOfPointerAsParam(call, arg)
select call, arg, arg.getAChild()