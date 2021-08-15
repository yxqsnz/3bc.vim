sy case ignore 
sy keyword _3bcKeyword STRC MODE NILL STRI PUSH PULL MATH PGTO ALOC ZGTO GOTO FGTO SKIP 
sy match _3bcComment "\v\#.*" nextgroup=_3bcComment skipwhite
sy match _3bcFuncName "\v:([A-z-0-9]*){2,}" nextgroup=_3bcFuncName
sy match _3bcChar "\v'([^']*)" nextgroup=_3bcChar skipwhite
sy match _3bcNumber "\v([0-9])" nextgroup=_3bcNumber skipempty
sy match _3bcNumber "\v0d([0-9])" nextgroup=_3bcNumber skipempty
hi def link _3bcKeyword  Keyword
hi def link _3bcComment  Comment
hi def link _3bcFuncName Function
hi def link _3bcNumber   Number
hi def link _3bcChar     String
