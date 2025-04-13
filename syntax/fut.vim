
" Literals
syn match   Number    "\v<([+-]?(0x[0-9a-fA-F]+|[0-9]+)([ui](8|16|32|64))?)>" 
syn match   Float     "\v(([0-9]+\.[0-9]+|[0-9]+f(32|64))(f(32|64))?)"
syn match   Float     "\v([eE][\+\-]?[0-9]+)"
syn region  String    start=/"/ skip=/\\"/ end=/"/ keepend excludenl

" Identifiers
syn match   FutId  "[a-zA-Z_][a-zA-Z0-9_']*" skipwhite contained contains=NONE
syn match   FutType "[a-zA-Z_][a-zA-Z0-9_']*" skipwhite contained contains=NONE

" Keywords
syn keyword Conditional if then else
syn keyword Repeat      loop for while do
syn keyword Keyword     unsafe match case
syn keyword Statement   with entry in local type val
syn keyword Statement   def entry nextgroup=FutId skipwhite skipempty
syn keyword Statement   let
syn keyword Statement   type[~] nextgroup=FutType skipwhite skipempty
syn keyword PreProc     module open import nextgroup=FutId skipwhite skipempty
syn keyword Boolean     true false
syn keyword Delimiter   _

" Common types
syn keyword Type i8 i16 i32 i64 u8 u16 u32 u64 int real bool char f16 f32 f64

" Delimiters
syn match Delimiter   '[:()[\],\\.{}]'

" Operators
syn match Operator  '[\-+*/<>%!&|^=]'
syn match Operator  '\V..<'
syn match Operator  '\V...'
syn match Operator  '\V..'

" Context matches
syn match FutType   '\v(: *(\[[^\[^\]]*\])*)@<=[a-zA-Z_][a-zA-Z0-9_']*'
" syn match FutType   '\v\'[a-zA-Z][a-zA-Z0-9_]*[^']'

" Links
hi def link FutId      Function
hi def link FutType    Type

" Comments
syn match   Comment   "--.*$"

