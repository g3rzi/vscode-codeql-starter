import cpp
import semmle.code.cpp.dataflow.DataFlow

from Function kmalloc, FunctionCall fc, Expr sink
where 
    kmalloc.hasName("kmalloc")
    and
    fc.getTarget() = kmalloc
    and
    not exists
    (
        IfStmt ifstmt | DataFlow::localExprFlow(fc, ifstmt.getControllingExpr().getAChild*())
    )
select fc