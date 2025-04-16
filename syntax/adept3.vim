
if exists("b:current_syntax")
    finish
endif

syntax keyword adept3Keyword func struct enum typealias union define return
syntax keyword adept3Keyword if while elif else true false zeroed pragma pub
syntax keyword adept3Keyword trait given is for impl
highlight link adept3Keyword Keyword

syntax keyword adept3CommonType bool char uchar schar short ushort int uint long ulong
syntax keyword adept3CommonType longlong ulonglong float double ptr void
syntax keyword adept3CommonType u8 u16 u32 u64 i8 i16 i32 i64 f32 f64
highlight link adept3CommonType Type

syntax keyword adept3CommonName true false null undef this it idx
highlight link adept3CommonName Number

syntax match adept3Polymorph "\v\$(\~)?[a-zA-Z_0-9]+"
highlight link adept3Polymorph Type

syntax match adept3Polycount "\v\$#[a-zA-Z_0-9]+"
highlight link adept3Polycount Number

syntax match adept3Operator "\V+"
syntax match adept3Operator "\V-"
syntax match adept3Operator "\V*"
syntax match adept3Operator "\V\(\[A-Za-z]\)\@<!/\(\[A-Za-z]\)\@!"
syntax match adept3Operator "\V+="
syntax match adept3Operator "\V-="
syntax match adept3Operator "\V*="
syntax match adept3Operator "\V/="
syntax match adept3Operator "\V%="
syntax match adept3Operator "\V%"
syntax match adept3Operator "\V!"
syntax match adept3Operator "\V!!"
syntax match adept3Operator "\V!="
syntax match adept3Operator "\V=="
syntax match adept3Operator "\V<="
syntax match adept3Operator "\V>="
syntax match adept3Operator "\V<"
syntax match adept3Operator "\V>"
syntax match adept3Operator "\V++"
syntax match adept3Operator "\V--"
syntax match adept3Operator "\V&"
syntax match adept3Operator "\V&&"
syntax match adept3Operator "\V|"
syntax match adept3Operator "\V||"
syntax match adept3Operator "\V^"
syntax match adept3Operator "\V~"
syntax match adept3Operator "\V>"
syntax match adept3Operator "\V<"
syntax match adept3Operator "\V>>>"
syntax match adept3Operator "\V<<<"
syntax match adept3Operator "\V."
syntax match adept3Operator "\V=>"
syntax match adept3Operator "\V->"
syntax match adept3Operator "\V:="
syntax match adept3Operator "\V:<"
syntax match adept3Operator "\V="
highlight link adept3Operator Operator

syntax match adept3LineComment "\v//.*$"
highlight link adept3LineComment Comment

syntax match adept3Preprocessor "\v#[a-zA-Z0-9_]*"
highlight link adept3Preprocessor Preproc

syntax match adept3Number "\v<((0x[0-9A-Fa-f]+)|(([0-9]+(\.[0-9]+)?)(e-?[0-9]*)?))(u|s|ub|sb|us|ss|ui|si|ul|sl|uz|f|d)?>"
highlight link adept3Number Number

syntax region adept3String start=/\vc?"/ skip=/\v\\./ end=/\v"/
syntax region adept3String start=/\vc?'/ skip=/\v\\./ end=/\v'(ub)?/
highlight link adept3String String

syntax region adept3BlockComment start=/\V\/*/ end=/\V*\//
highlight link adept3BlockComment Comment

let b:current_syntax = "adept3"

