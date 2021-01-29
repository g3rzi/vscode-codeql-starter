import cpp

class BannedStringCopyFunctions extends Function {
    BannedStringCopyFunctions() {
        exists(string name |
        hasGlobalOrStdName(name) and
        (
            name = "strcpy" or name = "strcpyA" or name = "strcpyW" or name = "wcscpy" or
            name = "_tcscpy" or name = "_mbscpy" or name = "StrCpy" or name = "StrCpyA" or
            name = "StrCpyW" or name = "lstrcpy" or name = "lstrcpyA" or name = "lstrcpyW" or name = "_tccpy" or name = "_mbccpy" or name = "_ftcscpy" or name = "strncpy" or name = "wcsncpy" or name = "_tcsncpy" or name = "_mbsncpy" or name = "_mbsnbcpy" or name = "StrCpyN" or name = "StrCpyNA" or name = "StrCpyNW" or name = "StrNCpy" or name = "strcpynA" or name = "StrNCpyA" or name = "StrNCpyW" or name = "lstrcpyn" or name = "lstrcpynA" or name = "lstrcpynW")
        ) 
    }
  
}

from BannedStringCopyFunctions foo
select foo