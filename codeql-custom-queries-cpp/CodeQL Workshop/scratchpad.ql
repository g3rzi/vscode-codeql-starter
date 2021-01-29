import cpp
import semmle.code.cpp.dataflow.DataFlow

from Function kmalloc, FunctionCall fc, Expr sink
where 
    kmalloc.hasName("kmalloc")
    and
    fc.getTarget() = kmalloc
    and
    exists
    (
        IfStmt ifstmt | 
        ifstmt.getControllingExpr().getAChild*() = sink
        and
        DataFlow::localExprFlow(fc, sink)
    )
select fc, sink