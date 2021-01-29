import cpp



from Function callee, Function caller, FunctionCall callToCalle
where 
    callee.getName().matches("%ioctl%")
    and
    callee.hasDefinition()
    and
    callToCalle = callee.getACallToThisFunction()
    and
    caller = callToCalle.getEnclosingFunction()
select caller, callee, callToCalle