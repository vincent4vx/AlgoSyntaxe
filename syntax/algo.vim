if exists("b:current_syntax")
    finish
endif

syn keyword algoLanguageKeywords declarer pour si fsi sinon sinon_si debut fin fonction faire ffaire renvoie procedure algorithme boucle fboucle

syn match algoComment '//.*$'

syn keyword algoTypes entier entier_naturel tableau_de reel string caratere booleen

syn match algoNum '\d\+' contained display
syn region algoParam start="(" skip="," end=")" contains=algoNum
syn region algoAffect start="->" end=";" contains=algoNum

let b:current_syntax = "algo"

hi def link algoLanguageKeywords Keyword
hi def link algoComment Comment
hi def link algoTypes Type
hi def link algoNum Number
