import cpp


from FunctionCall call
where 
    call.getTarget().hasName("kmalloc")
    
select call, call.getArgument(0).getValue()