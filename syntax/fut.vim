
" Literals
syn match   Comment "--.*$"
syn match   Number "\v<([+-]?(0x[0-9a-fA-F]+|[0-9]+)([ui](8|16|32|64))?)>" 
syn match   Float "\v(([0-9]+\.[0-9]+|[0-9]+f(32|64))(f(32|64))?)"
syn match   Float "\v([eE][\+\-]?[0-9]+)"
syn region  String start=/"/ skip=/\\"/ end=/"/ keepend excludenl
syn keyword Boolean true false

" Identifiers
syn match   FutId  "[a-zA-Z_][a-zA-Z0-9_']*" skipwhite contained contains=NONE
syn match   FutType "[a-zA-Z_][a-zA-Z0-9_']*" skipwhite contained contains=NONE

" Keywords
syn keyword Conditional if then else
syn keyword Repeat      loop for while do
syn keyword Keyword     unsafe match case
syn keyword Statement   with entry in local type val
syn keyword Statement   def let entry nextgroup=FutId skipwhite skipempty
syn keyword Statement   type nextgroup=FutType skipwhite skipempty
syn keyword PreProc     module open import nextgroup=FutId skipwhite skipempty

" Common functions
" syn keyword Function main concat indices stream_map stream_map_per
" syn keyword Function reduce reduce_comm scan filter partition
" syn keyword Function stream_red stream_red_per stream_seq iota
" syn keyword Function replicate scatter drop
" syn keyword Function rotate split flatten unflatten
" syn keyword Function curry uncurry
" syn keyword Function id const
" syn match Function "map[0-9]*" 
" syn match Function "zip[0-9]*" 
" syn match Function "unzip[0-9]*" 

" Common types
syn keyword Type i8 i16 i32 i64 u8 u16 u32 u64 int real bool char f16 f32 f64

" Delimiters
syn match Delimiter   '[:()[\],\\.]'

" Operators
syn match Operator  '[\-+*/<>%!&|^={..}]'

" Context matches
syn match Delimiter    ':'    nextgroup=FutType skipwhite skipempty

" Links
hi def link FutId      Function
hi def link FutType    Type


