" syntax/zuko.vim
if exists("b:current_syntax")
  finish
endif

syntax clear
let b:current_syntax = "zuko"

syntax keyword zukoKeywords
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

syntax keyword zukoBool
	\ true
	\ false

syntax keyword zukoConsts nil self

syntax keyword zukoErrors
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

highlight default link zukoKeywords Keyword
highlight default link zukoBool Boolean
highlight default link zukoConsts Constant
highlight default link zukoErrors Type

syntax match zukoNumber "\v<\d+(.\d+(e\d+)?)?>"
syntax match zukoComment "#.*$"
syntax region zukoMultilineComment start="#-" end="-#"
syntax region zukoString start="\"" end="\"" skip="\\\\|\\\""
syntax match zukoIdentifier "\v<[a-zA-Z_]+[A-Za-z0-9_]+>"

highlight default link zukoNumber Number
highlight default link zukoComment Comment
highlight default link zukoMultilineComment Comment
highlight default link zukoString String
highlight default link zukoIdentifier Identifier

let b:current_syntax = "zuko"
