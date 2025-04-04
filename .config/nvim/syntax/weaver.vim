" Vim syntax file
" Language: Weaver
" Maintainer: Your Name
" Latest Revision: Date

if exists("b:current_syntax")
    finish
endif

syntax clear

" Keywords
syntax keyword weaverKeyword if else while for match return in

" Numbers
syntax match weaverNumber "\<\d\+\>"
syntax match weaverFloat "\<\d\+\.\d\+\>"

" Strings
syntax region weaverString start=+"+ skip=+\\"+ end=+"+ contains=@Spell

" Regular identifiers
syntax match weaverIdentifier "\<[a-zA-Z_][a-zA-Z0-9_]*\>"

" Function calls
syntax match weaverFunctionCall "\<[a-zA-Z_][a-zA-Z0-9_]*\>\ze\s*("

" Operators (improved regex with proper escaping)
syntax match weaverOperator "\(+\|--\|++\|-\|\*\|/\|%\|=\|!=\|==\|<=\|>=\|<\|>\|&&\||>\|\.\|,\)"
syntax match weaverOperator ":="
syntax match weaverOperator "=>"
syntax match weaverOperator "\["
syntax match weaverOperator "\]"
syntax match weaverOperator "\\("
syntax match weaverOperator "\\)"
syntax match weaverOperator "\\;"

syntax match weaverComment "#.*$" contains=@Spell

" ---------------------------------------------------------------
" Key fix: Explicitly define operator highlighting
highlight default link weaverKeyword Keyword
highlight default link weaverNumber Number
highlight default link weaverFloat Float
highlight default link weaverString String
highlight default link weaverIdentifier Identifier
highlight default link weaverOperator Operator  " This links to Vim's Operator group
highlight default link weaverDelimiter Delimiter
highlight default link weaverFunctionCall Function
highlight default link weaverFunctionCall Comment

let b:current_syntax = "weaver"
