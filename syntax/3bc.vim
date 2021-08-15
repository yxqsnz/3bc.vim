sy case ignore 
sy keyword _3bcKeyword NILL MODE STRI FREE MATH GOTO NB02 STRC ALOC FGTO NB08 STRO MOFF PULL ZGTO NB10 STRX PGTO MUSE SPIN NB16 MMAX NGTO PUSH MMIN SKIP FULL
sy match _3bcComment "\v\#.*" nextgroup=_3bcComment skipwhite
sy match _3bcFuncName "\v:([A-z-0-9]*){2,}" nextgroup=_3bcFuncName
sy match _3bcChar "\v'([^']*)" nextgroup=_3bcChar skipwhite
sy match _3bcNumber "\v([0-9])" nextgroup=_3bcNumber skipempty
sy match _3bcNumber "\v0(d|x)[0-9-A-Z]([A-Z])?" nextgroup=_3bcNumber skipempty
hi def link _3bcKeyword  Keyword
hi def link _3bcComment  Comment
hi def link _3bcFuncName Function
hi def link _3bcNumber   Number
hi def link _3bcChar     String
