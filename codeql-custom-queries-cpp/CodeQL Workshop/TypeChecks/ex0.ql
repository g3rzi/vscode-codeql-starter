import cpp

predicate hasSizeOfOperatorAsParam(FunctionCall call)
{
    call.getAnArgument() instanceof SizeofOperator
}

from FunctionCall call
where hasSizeOfOperatorAsParam(call)
select call