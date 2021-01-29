import cpp

class RedundantFunction extends Function
{
    RedundantFunction()
    {
        this.hasDefinition()
        and
        not exists
        (
            FunctionCall fc | 
            fc.getTarget() = this
        )
        and
        not exists
        (
            FunctionAccess fa | 
            fa.getTarget() = this
        )
    }
}


  
from RedundantFunction foo
select foo