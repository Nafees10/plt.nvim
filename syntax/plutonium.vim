" syntax/plutonium.vim
if exists("b:current_syntax")
  finish
endif

syntax clear
let b:current_syntax = "plutonium"

syntax keyword plutoniumKeywords
	\ if
	\ while
	\ for
	\ return
	\ dowhile
	\ foreach
	\ else
	\ throw
	\ break
	\ continue
	\ yield
	\ import
	\ as
	\ var
	\ function
	\ class
	\ extends
	\ namespace
	\ try
	\ catch
	\ and
	\ or
	\ is
	\ private
	\ public

syntax keyword plutoniumBool
	\ true
	\ false

syntax keyword plutoniumConsts nil self

syntax keyword plutoniumErrors
	\ Error
	\ TypeError
	\ ValueError
	\ ArgumentError
	\ IndexError
	\ NameError
	\ MathError
	\ FileIOError
	\ FileOpenError
	\ FileSeekError
	\ ImportError
	\ ThrowError
	\ AccessError
	\ MaxRecursionError
	\ OverflowError
	\ KeyError

highlight default link plutoniumKeywords Keyword
highlight default link plutoniumBool Boolean
highlight default link plutoniumConsts Constant
highlight default link plutoniumErrors Error

syntax match plutoniumNumber "\v<\d+(.\d+(e\d+)?)?>"
syntax match plutoniumComment "#.*$"
syntax region plutoniumMultilineComment start="#-" end="-#"
syntax region plutoniumString start="\"" end="\"" skip="\\\""
syntax match plutoniumIdentifier "\v<[a-zA-Z_]+[A-Za-z0-9_]+>"

highlight default link plutoniumNumber Number
highlight default link plutoniumComment Comment
highlight default link plutoniumMultilineComment Comment
highlight default link plutoniumString String
highlight default link plutoniumIdentifier Identifier

let b:current_syntax = "plutonium"
