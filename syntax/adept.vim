
if exists("b:current_syntax")
    finish
endif

syntax keyword adeptKeyword POD alias and as at break case cast continue def default defer delete
syntax keyword adeptKeyword each else enum external fallthrough for foreign func funcptr global
syntax keyword adeptKeyword if import in inout new or out packed private public repeat return
syntax keyword adeptKeyword sizeof static stdcall struct switch typeinfo unless until while
syntax keyword adeptKeyword va_start va_end va_copy va_arg verbatim void union exhaustive
syntax keyword adeptKeyword const define namespace using implicit pragma elif
highlight link adeptKeyword Keyword

syntax keyword adeptCommonType bool byte ubyte short ushort int uint long ulong usize successful
syntax keyword adeptCommonType float double ptr String List Array VariadicArray InitializerList
syntax keyword adeptCommonType Vector2f Vector3f Matrix4f AABB TypeInfo FILE va_list
highlight link adeptCommonType Type

syntax keyword adeptCommonName true false null undef this it idx
highlight link adeptCommonName Identifier

syntax match adeptPolymorph "\v\$(\~)?[a-zA-Z_0-9]+"
highlight link adeptPolymorph Type

syntax match adeptPolycount "\v\$#[a-zA-Z_0-9]+"
highlight link adeptPolycount Number

syntax match adeptOperator "\V+"
syntax match adeptOperator "\V-"
syntax match adeptOperator "\V*"
syntax match adeptOperator "\V/"
syntax match adeptOperator "\V+="
syntax match adeptOperator "\V-="
syntax match adeptOperator "\V*="
syntax match adeptOperator "\V/="
syntax match adeptOperator "\V%="
syntax match adeptOperator "\V%"
syntax match adeptOperator "\V!"
syntax match adeptOperator "\V!!"
syntax match adeptOperator "\V!="
syntax match adeptOperator "\V=="
syntax match adeptOperator "\V<="
syntax match adeptOperator "\V>="
syntax match adeptOperator "\V<"
syntax match adeptOperator "\V>"
syntax match adeptOperator "\V++"
syntax match adeptOperator "\V--"
syntax match adeptOperator "\V&"
syntax match adeptOperator "\V&&"
syntax match adeptOperator "\V|"
syntax match adeptOperator "\V||"
syntax match adeptOperator "\V^"
syntax match adeptOperator "\V~"
syntax match adeptOperator "\V>"
syntax match adeptOperator "\V<"
syntax match adeptOperator "\V>>>"
syntax match adeptOperator "\V<<<"
syntax match adeptOperator "\V."

syntax match adeptOperator "\v([^a-zA-Z_0-9]\zs(::|:)\ze)"
highlight link adeptOperator Operator

syntax match adeptLineComment "\v//.*$"
highlight link adeptLineComment Comment

syntax match adeptNumber "\v<((0x[0-9A-Fa-f]+)|(([0-9]+(\.[0-9]+)?)(e-?[0-9]*)?))(u|s|ub|sb|us|ss|ui|si|ul|sl|uz|f|d)?>"
highlight link adeptNumber Number

syntax region adeptString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region adeptString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link adeptString String

syntax region adeptBlockComment start=/\V\/*/ end=/\V*\//
highlight link adeptBlockComment Comment

let b:current_syntax = "adept"

