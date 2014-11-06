if exists("b:current_syntax")
    finish
endif

syn keyword algoLanguageKeywords declarer pour si fsi sinon sinon_si debut fin fonction faire ffaire renvoie procedure algorithme boucle fboucle

syn keyword algoCond vaut ne_vaut_pas > < >= <= contained

syn match algoComment '//.*$'

syn keyword algoTypes entier entier_naturel tableau_de reel string caratere booleen string

syn keyword algoRef in out in_out contained

syn keyword algoBool vrai faux

syn region algoString start="\"" end="\""
syn match algoChar '\'.\'' contained display
syn match algoNum '\d\+' contained display
syn region algoParam start="(" end=")" contains=algoNum, algoString, algoChar, algoTypes, algoRef, algoCond
syn region algoAffect start="->" end=";" contains=algoNum, algoString, algoChar, algoRef, algoCond

let b:current_syntax = "algo"

hi def link algoLanguageKeywords Keyword
hi def link algoComment Comment
hi def link algoTypes Type
hi def link algoNum Number
hi def link algoString String
hi def link algoChar Constant
hi def link algoRef Keyword
hi def link algoBool Boolean
hi def link algoCond Keyword
