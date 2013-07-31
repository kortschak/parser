%{

//TODO Put your favorite license here
		
// yacc source generated by ebnf2y[1]
// at 2013-07-31 17:58:07.725003923 +0200 CEST.
//
// CAUTION: If this file is a Go source file (*.go), it was generated
// automatically by '$ go tool yacc' from a *.y file - DO NOT EDIT in that case!
// 
//   [1]: http://github.com/cznic/ebnf2y

package main //TODO real package name

//TODO required only be the demo _dump function
import (
	"bytes"
	"fmt"
	"strings"

	"github.com/cznic/strutil"
)

%}

%union {
	item interface{} //TODO insert real field(s)
}

%token	ANDAND
%token	ANDNOT
%token	ASSIGN_OP
%token	BUILT_IN_NAME
%token	CHANCOMM
%token	COLAS
%token	COMM
%token	COMMCHAN
%token	DDD
%token	DEC
%token	EQ
%token	FLOAT_LIT
%token	GE
%token	IMAGINARY_LIT
%token	INC
%token	INT_LIT
%token	LE
%token	LSH
%token	NAME
%token	NE
%token	OPT_COMMA_RPAREN
%token	OROR
%token	PACK_NAME
%token	RSH
%token	RUNE_LIT
%token	STRING_LIT
%token	TYPE_NAME

%type	<item> 	/*TODO real type(s), if/where applicable */
	ANDAND
	ANDNOT
	ASSIGN_OP
	BUILT_IN_NAME
	CHANCOMM
	COLAS
	COMM
	COMMCHAN
	DDD
	DEC
	EQ
	FLOAT_LIT
	GE
	IMAGINARY_LIT
	INC
	INT_LIT
	LE
	LSH
	NAME
	NE
	OPT_COMMA_RPAREN
	OROR
	PACK_NAME
	RSH
	RUNE_LIT
	STRING_LIT
	TYPE_NAME

%token BREAK
%token CASE
%token CHAN
%token CONST
%token CONTINUE
%token DEFAULT
%token DEFER
%token ELSE
%token FALLTHROUGH
%token FOR
%token FUNC
%token GO
%token GOTO
%token IF
%token IMPORT
%token INTERFACE
%token MAP
%token PACKAGE
%token RANGE
%token RETURN
%token SELECT
%token STRUCT
%token SWITCH
%token TYPE
%token VAR

%type	<item> 	/*TODO real type(s), if/where applicable */
	AnonymousField
	ArgumentList
	ArgumentList1
	ArrayLength
	ArrayType
	Assignment
	BaseType
	BasicLit
	Binary_op
	Block
	BreakStmt
	BreakStmt1
	BuiltinArgs
	BuiltinArgs1
	BuiltinCall
	Call
	Channel
	ChannelType
	ChannelType1
	CommCase
	CommCase1
	CommClause
	CompositeLit
	Condition
	ConstDecl
	ConstDecl1
	ConstDecl11
	ConstSpec
	ConstSpec1
	ConstSpec11
	ContinueStmt
	ContinueStmt1
	Conversion
	Dclname
	Declaration
	DeferStmt
	Element
	ElementIndex
	ElementList1
	ElementType
	ExprCaseClause
	ExprSwitchCase
	ExprSwitchStmt
	ExprSwitchStmt2
	ExprSwitchStmt3
	Expression
	ExpressionList
	ExpressionList1
	ExpressionStmt
	FallthroughStmt
	FieldDecl
	FieldDecl1
	FieldDecl2
	FieldName
	ForClause
	ForClause1
	ForClause2
	ForClause3
	ForStmt
	ForStmt1
	ForStmt11
	Function
	FunctionBody
	FunctionDecl
	FunctionDecl1
	FunctionLit
	FunctionName
	FunctionType
	GoStmt
	GotoStmt
	IdentifierList
	IdentifierList1
	IfStmt
	IfStmt2
	IfStmt21
	ImportDecl
	ImportDecl1
	ImportDecl11
	ImportPath
	ImportSpec
	ImportSpec1
	ImportSpec11
	IncDecStmt
	IncDecStmt1
	Index
	InitStmt
	InterfaceType
	InterfaceType1
	InterfaceTypeName
	Key
	KeyType
	Label
	LabeledStmt
	Literal
	LiteralType
	LiteralValue
	LiteralValue1
	LiteralValue11
	MapType
	MethodDecl
	MethodDecl1
	MethodExpr
	MethodName
	MethodSpec
	Operand
	OperandName
	PackageClause
	ParameterDecl
	ParameterDecl1
	ParameterList
	ParameterList1
	Parameters
	PointerType
	PostStmt
	PrimaryExpr
	RangeClause
	RangeClause1
	Receiver
	ReceiverType
	RecvExpr
	RecvStmt
	RecvStmt11
	Result
	ReturnStmt
	ReturnStmt1
	SelectStmt
	SelectStmt1
	Selector
	SendStmt
	ShortVarDecl
	Signature
	Signature1
	SimpleStmt
	Slice
	Slice1
	Slice2
	SliceType
	SourceFile
	SourceFile1
	SourceFile2
	Start
	Statement
	StatementList
	StatementList1
	StatementList11
	StructType
	StructType1
	SwitchStmt
	Tag
	TopLevelDecl
	Type
	TypeAssertion
	TypeCaseClause
	TypeDecl
	TypeDecl1
	TypeDecl11
	TypeList
	TypeList1
	TypeLit
	TypeName
	TypeSpec
	TypeSwitchCase
	TypeSwitchGuard
	TypeSwitchStmt
	TypeSwitchStmt2
	UnaryExpr
	Value
	VarDecl
	VarDecl1
	VarDecl11
	VarSpec
	VarSpec1
	VarSpec11

/*TODO %left, %right, ... declarations */

%start Start

%%

AnonymousField:
	TypeName
	{
		$$ = $1 //TODO 1
	}
|	'*' TypeName
	{
		$$ = []AnonymousField{"*", $2} //TODO 2
	}

ArgumentList:
	ExpressionList ArgumentList1
	{
		$$ = []ArgumentList{$1, $2} //TODO 3
	}

ArgumentList1:
	/* EMPTY */
	{
		$$ = nil //TODO 4
	}
|	DDD
	{
		$$ = $1 //TODO 5
	}

ArrayLength:
	Expression
	{
		$$ = $1 //TODO 6
	}

ArrayType:
	'[' ArrayLength ']' ElementType
	{
		$$ = []ArrayType{"[", $2, "]", $4} //TODO 7
	}

Assignment:
	ExpressionList ASSIGN_OP ExpressionList
	{
		$$ = []Assignment{$1, $2, $3} //TODO 8
	}

BaseType:
	Type
	{
		$$ = $1 //TODO 9
	}

BasicLit:
	INT_LIT
	{
		$$ = $1 //TODO 10
	}
|	FLOAT_LIT
	{
		$$ = $1 //TODO 11
	}
|	IMAGINARY_LIT
	{
		$$ = $1 //TODO 12
	}
|	RUNE_LIT
	{
		$$ = $1 //TODO 13
	}
|	STRING_LIT
	{
		$$ = $1 //TODO 14
	}

Binary_op:
	OROR
	{
		$$ = $1 //TODO 15
	}
|	ANDAND
	{
		$$ = $1 //TODO 16
	}
|	EQ
	{
		$$ = $1 //TODO 17
	}
|	NE
	{
		$$ = $1 //TODO 18
	}
|	'<'
	{
		$$ = "<" //TODO 19
	}
|	LE
	{
		$$ = $1 //TODO 20
	}
|	'>'
	{
		$$ = ">" //TODO 21
	}
|	GE
	{
		$$ = $1 //TODO 22
	}
|	'+'
	{
		$$ = "+" //TODO 23
	}
|	'-'
	{
		$$ = "-" //TODO 24
	}
|	'|'
	{
		$$ = "|" //TODO 25
	}
|	'^'
	{
		$$ = "^" //TODO 26
	}
|	'*'
	{
		$$ = "*" //TODO 27
	}
|	'/'
	{
		$$ = "/" //TODO 28
	}
|	'%'
	{
		$$ = "%" //TODO 29
	}
|	LSH
	{
		$$ = $1 //TODO 30
	}
|	RSH
	{
		$$ = $1 //TODO 31
	}
|	'&'
	{
		$$ = "&" //TODO 32
	}
|	ANDNOT
	{
		$$ = $1 //TODO 33
	}

Block:
	'{' StatementList '}'
	{
		$$ = []Block{"{", $2, "}"} //TODO 34
	}

BreakStmt:
	BREAK BreakStmt1
	{
		$$ = []BreakStmt{"break", $2} //TODO 35
	}

BreakStmt1:
	/* EMPTY */
	{
		$$ = nil //TODO 36
	}
|	Label
	{
		$$ = $1 //TODO 37
	}

BuiltinArgs:
	Type BuiltinArgs1
	{
		$$ = []BuiltinArgs{$1, $2} //TODO 38
	}
|	ArgumentList
	{
		$$ = $1 //TODO 39
	}

BuiltinArgs1:
	/* EMPTY */
	{
		$$ = nil //TODO 40
	}
|	',' ArgumentList
	{
		$$ = []BuiltinArgs1{",", $2} //TODO 41
	}

BuiltinCall:
	BUILT_IN_NAME '(' BuiltinArgs OPT_COMMA_RPAREN
	{
		$$ = []BuiltinCall{$1, "(", $3, $4} //TODO 42
	}

Call:
	'(' ')'
	{
		$$ = []Call{"(", ")"} //TODO 43
	}
|	'(' ArgumentList OPT_COMMA_RPAREN
	{
		$$ = []Call{"(", $2, $3} //TODO 44
	}

Channel:
	Expression
	{
		$$ = $1 //TODO 45
	}

ChannelType:
	ChannelType1 ElementType
	{
		$$ = []ChannelType{$1, $2} //TODO 46
	}

ChannelType1:
	CHAN
	{
		$$ = "chan" //TODO 47
	}
|	CHANCOMM
	{
		$$ = $1 //TODO 48
	}
|	COMMCHAN
	{
		$$ = $1 //TODO 49
	}

CommCase:
	CASE CommCase1
	{
		$$ = []CommCase{"case", $2} //TODO 50
	}
|	DEFAULT
	{
		$$ = "default" //TODO 51
	}

CommCase1:
	SendStmt
	{
		$$ = $1 //TODO 52
	}
|	RecvStmt
	{
		$$ = $1 //TODO 53
	}

CommClause:
	CommCase ':' StatementList
	{
		$$ = []CommClause{$1, ":", $3} //TODO 54
	}

CompositeLit:
	LiteralType LiteralValue
	{
		$$ = []CompositeLit{$1, $2} //TODO 55
	}

Condition:
	Expression
	{
		$$ = $1 //TODO 56
	}

ConstDecl:
	CONST ConstDecl1
	{
		$$ = []ConstDecl{"const", $2} //TODO 57
	}

ConstDecl1:
	ConstSpec
	{
		$$ = $1 //TODO 58
	}
|	'(' ConstDecl11 ')'
	{
		$$ = []ConstDecl1{"(", $2, ")"} //TODO 59
	}

ConstDecl11:
	/* EMPTY */
	{
		$$ = []ConstDecl11(nil) //TODO 60
	}
|	ConstDecl11 ConstSpec ';'
	{
		$$ = append($1.([]ConstDecl11), $2, ";") //TODO 61
	}

ConstSpec:
	IdentifierList ConstSpec1
	{
		$$ = []ConstSpec{$1, $2} //TODO 62
	}

ConstSpec1:
	/* EMPTY */
	{
		$$ = nil //TODO 63
	}
|	ConstSpec11 '=' ExpressionList
	{
		$$ = []ConstSpec1{$1, "=", $3} //TODO 64
	}

ConstSpec11:
	/* EMPTY */
	{
		$$ = nil //TODO 65
	}
|	Type
	{
		$$ = $1 //TODO 66
	}

ContinueStmt:
	CONTINUE ContinueStmt1
	{
		$$ = []ContinueStmt{"continue", $2} //TODO 67
	}

ContinueStmt1:
	/* EMPTY */
	{
		$$ = nil //TODO 68
	}
|	Label
	{
		$$ = $1 //TODO 69
	}

Conversion:
	Type '(' Expression OPT_COMMA_RPAREN
	{
		$$ = []Conversion{$1, "(", $3, $4} //TODO 70
	}

Dclname:
	BUILT_IN_NAME
	{
		$$ = $1 //TODO 71
	}
|	PACK_NAME
	{
		$$ = $1 //TODO 72
	}
|	TYPE_NAME
	{
		$$ = $1 //TODO 73
	}
|	NAME
	{
		$$ = $1 //TODO 74
	}

Declaration:
	ConstDecl
	{
		$$ = $1 //TODO 75
	}
|	TypeDecl
	{
		$$ = $1 //TODO 76
	}
|	VarDecl
	{
		$$ = $1 //TODO 77
	}

DeferStmt:
	DEFER Expression
	{
		$$ = []DeferStmt{"defer", $2} //TODO 78
	}

Element:
	Value
	{
		$$ = $1 //TODO 79
	}
|	Key ':' Value
	{
		$$ = []Element{$1, ":", $3} //TODO 80
	}

ElementIndex:
	Expression
	{
		$$ = $1 //TODO 81
	}

ElementList1:
	/* EMPTY */
	{
		$$ = []ElementList1(nil) //TODO 82
	}
|	ElementList1 ',' Element
	{
		$$ = append($1.([]ElementList1), ",", $3) //TODO 83
	}

ElementType:
	Type
	{
		$$ = $1 //TODO 84
	}

ExprCaseClause:
	ExprSwitchCase ':' StatementList
	{
		$$ = []ExprCaseClause{$1, ":", $3} //TODO 85
	}

ExprSwitchCase:
	CASE ExpressionList
	{
		$$ = []ExprSwitchCase{"case", $2} //TODO 86
	}
|	DEFAULT
	{
		$$ = "default" //TODO 87
	}

ExprSwitchStmt:
	SWITCH ExprSwitchStmt2 '{' ExprSwitchStmt3 '}'
	{
		$$ = []ExprSwitchStmt{"switch", $2, "{", $4, "}"} //TODO 88
	}
|	SWITCH SimpleStmt ';' ExprSwitchStmt2 '{' ExprSwitchStmt3 '}'
	{
		$$ = []ExprSwitchStmt{"switch", $2, ";", $4, "{", $6, "}"} //TODO 89
	}

ExprSwitchStmt2:
	/* EMPTY */
	{
		$$ = nil //TODO 90
	}
|	Expression
	{
		$$ = $1 //TODO 91
	}

ExprSwitchStmt3:
	/* EMPTY */
	{
		$$ = []ExprSwitchStmt3(nil) //TODO 92
	}
|	ExprSwitchStmt3 ExprCaseClause
	{
		$$ = append($1.([]ExprSwitchStmt3), $2) //TODO 93
	}

Expression:
	UnaryExpr
	{
		$$ = $1 //TODO 94
	}
|	Expression Binary_op UnaryExpr
	{
		$$ = []Expression{$1, $2, $3} //TODO 95
	}

ExpressionList:
	Expression ExpressionList1
	{
		$$ = []ExpressionList{$1, $2} //TODO 96
	}

ExpressionList1:
	/* EMPTY */
	{
		$$ = []ExpressionList1(nil) //TODO 97
	}
|	ExpressionList1 ',' Expression
	{
		$$ = append($1.([]ExpressionList1), ",", $3) //TODO 98
	}

ExpressionStmt:
	Expression
	{
		$$ = $1 //TODO 99
	}

FallthroughStmt:
	FALLTHROUGH
	{
		$$ = "fallthrough" //TODO 100
	}

FieldDecl:
	FieldDecl1 FieldDecl2
	{
		$$ = []FieldDecl{$1, $2} //TODO 101
	}

FieldDecl1:
	IdentifierList Type
	{
		$$ = []FieldDecl1{$1, $2} //TODO 102
	}
|	AnonymousField
	{
		$$ = $1 //TODO 103
	}

FieldDecl2:
	/* EMPTY */
	{
		$$ = nil //TODO 104
	}
|	Tag
	{
		$$ = $1 //TODO 105
	}

FieldName:
	Dclname
	{
		$$ = $1 //TODO 106
	}

ForClause:
	ForClause1 ';' ForClause2 ';' ForClause3
	{
		$$ = []ForClause{$1, ";", $3, ";", $5} //TODO 107
	}

ForClause1:
	/* EMPTY */
	{
		$$ = nil //TODO 108
	}
|	InitStmt
	{
		$$ = $1 //TODO 109
	}

ForClause2:
	/* EMPTY */
	{
		$$ = nil //TODO 110
	}
|	Condition
	{
		$$ = $1 //TODO 111
	}

ForClause3:
	/* EMPTY */
	{
		$$ = nil //TODO 112
	}
|	PostStmt
	{
		$$ = $1 //TODO 113
	}

ForStmt:
	FOR ForStmt1 Block
	{
		$$ = []ForStmt{"for", $2, $3} //TODO 114
	}

ForStmt1:
	/* EMPTY */
	{
		$$ = nil //TODO 115
	}
|	ForStmt11
	{
		$$ = $1 //TODO 116
	}

ForStmt11:
	Condition
	{
		$$ = $1 //TODO 117
	}
|	ForClause
	{
		$$ = $1 //TODO 118
	}
|	RangeClause
	{
		$$ = $1 //TODO 119
	}

Function:
	Signature FunctionBody
	{
		$$ = []Function{$1, $2} //TODO 120
	}

FunctionBody:
	Block
	{
		$$ = $1 //TODO 121
	}

FunctionDecl:
	FUNC FunctionName FunctionDecl1
	{
		$$ = []FunctionDecl{"func", $2, $3} //TODO 122
	}

FunctionDecl1:
	Function
	{
		$$ = $1 //TODO 123
	}
|	Signature
	{
		$$ = $1 //TODO 124
	}

FunctionLit:
	FUNC Function
	{
		$$ = []FunctionLit{"func", $2} //TODO 125
	}

FunctionName:
	Dclname
	{
		$$ = $1 //TODO 126
	}

FunctionType:
	FUNC Signature
	{
		$$ = []FunctionType{"func", $2} //TODO 127
	}

GoStmt:
	GO Expression
	{
		$$ = []GoStmt{"go", $2} //TODO 128
	}

GotoStmt:
	GOTO Label
	{
		$$ = []GotoStmt{"goto", $2} //TODO 129
	}

IdentifierList:
	Dclname IdentifierList1
	{
		$$ = []IdentifierList{$1, $2} //TODO 130
	}

IdentifierList1:
	/* EMPTY */
	{
		$$ = []IdentifierList1(nil) //TODO 131
	}
|	IdentifierList1 ',' Dclname
	{
		$$ = append($1.([]IdentifierList1), ",", $3) //TODO 132
	}

IfStmt:
	IF Expression Block IfStmt2
	{
		$$ = []IfStmt{"if", $2, $3, $4} //TODO 133
	}
|	IF SimpleStmt ';' Expression Block IfStmt2
	{
		$$ = []IfStmt{"if", $2, ";", $4, $5, $6} //TODO 134
	}

IfStmt2:
	/* EMPTY */
	{
		$$ = nil //TODO 135
	}
|	ELSE IfStmt21
	{
		$$ = []IfStmt2{"else", $2} //TODO 136
	}

IfStmt21:
	IfStmt
	{
		$$ = $1 //TODO 137
	}
|	Block
	{
		$$ = $1 //TODO 138
	}

ImportDecl:
	IMPORT ImportDecl1
	{
		$$ = []ImportDecl{"import", $2} //TODO 139
	}

ImportDecl1:
	ImportSpec
	{
		$$ = $1 //TODO 140
	}
|	'(' ImportDecl11 ')'
	{
		$$ = []ImportDecl1{"(", $2, ")"} //TODO 141
	}

ImportDecl11:
	/* EMPTY */
	{
		$$ = []ImportDecl11(nil) //TODO 142
	}
|	ImportDecl11 ImportSpec ';'
	{
		$$ = append($1.([]ImportDecl11), $2, ";") //TODO 143
	}

ImportPath:
	STRING_LIT
	{
		$$ = $1 //TODO 144
	}

ImportSpec:
	ImportSpec1 ImportPath
	{
		$$ = []ImportSpec{$1, $2} //TODO 145
	}

ImportSpec1:
	/* EMPTY */
	{
		$$ = nil //TODO 146
	}
|	ImportSpec11
	{
		$$ = $1 //TODO 147
	}

ImportSpec11:
	'.'
	{
		$$ = "." //TODO 148
	}
|	Dclname
	{
		$$ = $1 //TODO 149
	}

IncDecStmt:
	Expression IncDecStmt1
	{
		$$ = []IncDecStmt{$1, $2} //TODO 150
	}

IncDecStmt1:
	INC
	{
		$$ = $1 //TODO 151
	}
|	DEC
	{
		$$ = $1 //TODO 152
	}

Index:
	'[' Expression ']'
	{
		$$ = []Index{"[", $2, "]"} //TODO 153
	}

InitStmt:
	SimpleStmt
	{
		$$ = $1 //TODO 154
	}

InterfaceType:
	INTERFACE '{' InterfaceType1 '}'
	{
		$$ = []InterfaceType{"interface", "{", $3, "}"} //TODO 155
	}

InterfaceType1:
	/* EMPTY */
	{
		$$ = []InterfaceType1(nil) //TODO 156
	}
|	InterfaceType1 MethodSpec ';'
	{
		$$ = append($1.([]InterfaceType1), $2, ";") //TODO 157
	}

InterfaceTypeName:
	TypeName
	{
		$$ = $1 //TODO 158
	}

Key:
	FieldName
	{
		$$ = $1 //TODO 159
	}
|	ElementIndex
	{
		$$ = $1 //TODO 160
	}

KeyType:
	Type
	{
		$$ = $1 //TODO 161
	}

Label:
	Dclname
	{
		$$ = $1 //TODO 162
	}

LabeledStmt:
	Label ':' Statement
	{
		$$ = []LabeledStmt{$1, ":", $3} //TODO 163
	}

Literal:
	BasicLit
	{
		$$ = $1 //TODO 164
	}
|	CompositeLit
	{
		$$ = $1 //TODO 165
	}
|	FunctionLit
	{
		$$ = $1 //TODO 166
	}

LiteralType:
	StructType
	{
		$$ = $1 //TODO 167
	}
|	ArrayType
	{
		$$ = $1 //TODO 168
	}
|	'[' DDD ']' ElementType
	{
		$$ = []LiteralType{"[", $2, "]", $4} //TODO 169
	}
|	SliceType
	{
		$$ = $1 //TODO 170
	}
|	MapType
	{
		$$ = $1 //TODO 171
	}
|	TypeName
	{
		$$ = $1 //TODO 172
	}

LiteralValue:
	'{' LiteralValue1 '}'
	{
		$$ = []LiteralValue{"{", $2, "}"} //TODO 173
	}

LiteralValue1:
	/* EMPTY */
	{
		$$ = nil //TODO 174
	}
|	Element ElementList1 LiteralValue11
	{
		$$ = []LiteralValue1{$1, $2, $3} //TODO 175
	}

LiteralValue11:
	/* EMPTY */
	{
		$$ = nil //TODO 176
	}
|	','
	{
		$$ = "," //TODO 177
	}

MapType:
	MAP '[' KeyType ']' ElementType
	{
		$$ = []MapType{"map", "[", $3, "]", $5} //TODO 178
	}

MethodDecl:
	FUNC Receiver MethodName MethodDecl1
	{
		$$ = []MethodDecl{"func", $2, $3, $4} //TODO 179
	}

MethodDecl1:
	Function
	{
		$$ = $1 //TODO 180
	}
|	Signature
	{
		$$ = $1 //TODO 181
	}

MethodExpr:
	ReceiverType '.' MethodName
	{
		$$ = []MethodExpr{$1, ".", $3} //TODO 182
	}

MethodName:
	Dclname
	{
		$$ = $1 //TODO 183
	}

MethodSpec:
	MethodName Signature
	{
		$$ = []MethodSpec{$1, $2} //TODO 184
	}
|	InterfaceTypeName
	{
		$$ = $1 //TODO 185
	}

Operand:
	Literal
	{
		$$ = $1 //TODO 186
	}
|	OperandName
	{
		$$ = $1 //TODO 187
	}
|	MethodExpr
	{
		$$ = $1 //TODO 188
	}
|	'(' Expression ')'
	{
		$$ = []Operand{"(", $2, ")"} //TODO 189
	}

OperandName:
	NAME
	{
		$$ = $1 //TODO 190
	}
|	PACK_NAME '.' NAME
	{
		$$ = []OperandName{$1, ".", $3} //TODO 191
	}

PackageClause:
	PACKAGE Dclname
	{
		$$ = []PackageClause{"package", $2} //TODO 192
	}

ParameterDecl:
	Dclname ParameterDecl1 Type
	{
		$$ = []ParameterDecl{$1, $2, $3} //TODO 193
	}
|	Dclname
	{
		$$ = $1 //TODO 194
	}
|	TypeLit
	{
		$$ = $1 //TODO 195
	}
|	DDD TypeLit
	{
		$$ = []ParameterDecl{$1, $2} //TODO 196
	}

ParameterDecl1:
	/* EMPTY */
	{
		$$ = nil //TODO 197
	}
|	DDD
	{
		$$ = $1 //TODO 198
	}

ParameterList:
	ParameterDecl ParameterList1
	{
		$$ = []ParameterList{$1, $2} //TODO 199
	}

ParameterList1:
	/* EMPTY */
	{
		$$ = []ParameterList1(nil) //TODO 200
	}
|	ParameterList1 ',' ParameterDecl
	{
		$$ = append($1.([]ParameterList1), ",", $3) //TODO 201
	}

Parameters:
	'(' ')'
	{
		$$ = []Parameters{"(", ")"} //TODO 202
	}
|	'(' ParameterList OPT_COMMA_RPAREN
	{
		$$ = []Parameters{"(", $2, $3} //TODO 203
	}

PointerType:
	'*' BaseType
	{
		$$ = []PointerType{"*", $2} //TODO 204
	}

PostStmt:
	SimpleStmt
	{
		$$ = $1 //TODO 205
	}

PrimaryExpr:
	Operand
	{
		$$ = $1 //TODO 206
	}
|	Conversion
	{
		$$ = $1 //TODO 207
	}
|	BuiltinCall
	{
		$$ = $1 //TODO 208
	}
|	PrimaryExpr Selector
	{
		$$ = []PrimaryExpr{$1, $2} //TODO 209
	}
|	PrimaryExpr Index
	{
		$$ = []PrimaryExpr{$1, $2} //TODO 210
	}
|	PrimaryExpr Slice
	{
		$$ = []PrimaryExpr{$1, $2} //TODO 211
	}
|	PrimaryExpr TypeAssertion
	{
		$$ = []PrimaryExpr{$1, $2} //TODO 212
	}
|	PrimaryExpr Call
	{
		$$ = []PrimaryExpr{$1, $2} //TODO 213
	}

RangeClause:
	RangeClause1 RANGE Expression
	{
		$$ = []RangeClause{$1, "range", $3} //TODO 214
	}

RangeClause1:
	ExpressionList '='
	{
		$$ = []RangeClause1{$1, "="} //TODO 215
	}
|	IdentifierList COLAS
	{
		$$ = []RangeClause1{$1, $2} //TODO 216
	}

Receiver:
	'(' ParameterDecl ')'
	{
		$$ = []Receiver{"(", $2, ")"} //TODO 217
	}

ReceiverType:
	TypeName
	{
		$$ = $1 //TODO 218
	}
|	'(' '*' TypeName ')'
	{
		$$ = []ReceiverType{"(", "*", $3, ")"} //TODO 219
	}
|	'(' TypeName ')'
	{
		$$ = []ReceiverType{"(", $2, ")"} //TODO 220
	}

RecvExpr:
	Expression
	{
		$$ = $1 //TODO 221
	}

RecvStmt:
	RecvExpr
	{
		$$ = $1 //TODO 222
	}
|	RecvStmt11 RecvExpr
	{
		$$ = []RecvStmt{$1, $2} //TODO 223
	}

RecvStmt11:
	ExpressionList '='
	{
		$$ = []RecvStmt11{$1, "="} //TODO 224
	}
|	IdentifierList COLAS
	{
		$$ = []RecvStmt11{$1, $2} //TODO 225
	}

Result:
	Parameters
	{
		$$ = $1 //TODO 226
	}
|	Type
	{
		$$ = $1 //TODO 227
	}

ReturnStmt:
	RETURN ReturnStmt1
	{
		$$ = []ReturnStmt{"return", $2} //TODO 228
	}

ReturnStmt1:
	/* EMPTY */
	{
		$$ = nil //TODO 229
	}
|	ExpressionList
	{
		$$ = $1 //TODO 230
	}

SelectStmt:
	SELECT '{' SelectStmt1 '}'
	{
		$$ = []SelectStmt{"select", "{", $3, "}"} //TODO 231
	}

SelectStmt1:
	/* EMPTY */
	{
		$$ = []SelectStmt1(nil) //TODO 232
	}
|	SelectStmt1 CommClause
	{
		$$ = append($1.([]SelectStmt1), $2) //TODO 233
	}

Selector:
	'.' Dclname
	{
		$$ = []Selector{".", $2} //TODO 234
	}

SendStmt:
	Channel COMM Expression
	{
		$$ = []SendStmt{$1, $2, $3} //TODO 235
	}

ShortVarDecl:
	IdentifierList COLAS ExpressionList
	{
		$$ = []ShortVarDecl{$1, $2, $3} //TODO 236
	}

Signature:
	Parameters Signature1
	{
		$$ = []Signature{$1, $2} //TODO 237
	}

Signature1:
	/* EMPTY */
	{
		$$ = nil //TODO 238
	}
|	Result
	{
		$$ = $1 //TODO 239
	}

SimpleStmt:
	ExpressionStmt
	{
		$$ = $1 //TODO 240
	}
|	SendStmt
	{
		$$ = $1 //TODO 241
	}
|	IncDecStmt
	{
		$$ = $1 //TODO 242
	}
|	Assignment
	{
		$$ = $1 //TODO 243
	}
|	ShortVarDecl
	{
		$$ = $1 //TODO 244
	}

Slice:
	'[' Slice1 ':' Slice2 ']'
	{
		$$ = []Slice{"[", $2, ":", $4, "]"} //TODO 245
	}

Slice1:
	/* EMPTY */
	{
		$$ = nil //TODO 246
	}
|	Expression
	{
		$$ = $1 //TODO 247
	}

Slice2:
	/* EMPTY */
	{
		$$ = nil //TODO 248
	}
|	Expression
	{
		$$ = $1 //TODO 249
	}

SliceType:
	'[' ']' ElementType
	{
		$$ = []SliceType{"[", "]", $3} //TODO 250
	}

SourceFile:
	PackageClause ';' SourceFile1 SourceFile2
	{
		$$ = []SourceFile{$1, ";", $3, $4} //TODO 251
	}

SourceFile1:
	/* EMPTY */
	{
		$$ = []SourceFile1(nil) //TODO 252
	}
|	SourceFile1 ImportDecl ';'
	{
		$$ = append($1.([]SourceFile1), $2, ";") //TODO 253
	}

SourceFile2:
	/* EMPTY */
	{
		$$ = []SourceFile2(nil) //TODO 254
	}
|	SourceFile2 TopLevelDecl ';'
	{
		$$ = append($1.([]SourceFile2), $2, ";") //TODO 255
	}

Start:
	SourceFile
	{
		_parserResult = $1 //TODO 256
	}

Statement:
	Declaration
	{
		$$ = $1 //TODO 257
	}
|	LabeledStmt
	{
		$$ = $1 //TODO 258
	}
|	SimpleStmt
	{
		$$ = $1 //TODO 259
	}
|	GoStmt
	{
		$$ = $1 //TODO 260
	}
|	ReturnStmt
	{
		$$ = $1 //TODO 261
	}
|	BreakStmt
	{
		$$ = $1 //TODO 262
	}
|	ContinueStmt
	{
		$$ = $1 //TODO 263
	}
|	GotoStmt
	{
		$$ = $1 //TODO 264
	}
|	FallthroughStmt
	{
		$$ = $1 //TODO 265
	}
|	Block
	{
		$$ = $1 //TODO 266
	}
|	IfStmt
	{
		$$ = $1 //TODO 267
	}
|	SwitchStmt
	{
		$$ = $1 //TODO 268
	}
|	SelectStmt
	{
		$$ = $1 //TODO 269
	}
|	ForStmt
	{
		$$ = $1 //TODO 270
	}
|	DeferStmt
	{
		$$ = $1 //TODO 271
	}

StatementList:
	StatementList1
	{
		$$ = $1 //TODO 272
	}

StatementList1:
	/* EMPTY */
	{
		$$ = []StatementList1(nil) //TODO 273
	}
|	StatementList1 StatementList11 ';'
	{
		$$ = append($1.([]StatementList1), $2, ";") //TODO 274
	}

StatementList11:
	/* EMPTY */
	{
		$$ = nil //TODO 275
	}
|	Statement
	{
		$$ = $1 //TODO 276
	}

StructType:
	STRUCT '{' StructType1 '}'
	{
		$$ = []StructType{"struct", "{", $3, "}"} //TODO 277
	}

StructType1:
	/* EMPTY */
	{
		$$ = []StructType1(nil) //TODO 278
	}
|	StructType1 FieldDecl ';'
	{
		$$ = append($1.([]StructType1), $2, ";") //TODO 279
	}

SwitchStmt:
	ExprSwitchStmt
	{
		$$ = $1 //TODO 280
	}
|	TypeSwitchStmt
	{
		$$ = $1 //TODO 281
	}

Tag:
	STRING_LIT
	{
		$$ = $1 //TODO 282
	}

TopLevelDecl:
	Declaration
	{
		$$ = $1 //TODO 283
	}
|	FunctionDecl
	{
		$$ = $1 //TODO 284
	}
|	MethodDecl
	{
		$$ = $1 //TODO 285
	}

Type:
	TypeName
	{
		$$ = $1 //TODO 286
	}
|	TypeLit
	{
		$$ = $1 //TODO 287
	}
|	'(' Type ')'
	{
		$$ = []Type{"(", $2, ")"} //TODO 288
	}

TypeAssertion:
	'.' '(' Type ')'
	{
		$$ = []TypeAssertion{".", "(", $3, ")"} //TODO 289
	}

TypeCaseClause:
	TypeSwitchCase ':' StatementList
	{
		$$ = []TypeCaseClause{$1, ":", $3} //TODO 290
	}

TypeDecl:
	TYPE TypeDecl1
	{
		$$ = []TypeDecl{"type", $2} //TODO 291
	}

TypeDecl1:
	TypeSpec
	{
		$$ = $1 //TODO 292
	}
|	'(' TypeDecl11 ')'
	{
		$$ = []TypeDecl1{"(", $2, ")"} //TODO 293
	}

TypeDecl11:
	/* EMPTY */
	{
		$$ = []TypeDecl11(nil) //TODO 294
	}
|	TypeDecl11 TypeSpec ';'
	{
		$$ = append($1.([]TypeDecl11), $2, ";") //TODO 295
	}

TypeList:
	Type TypeList1
	{
		$$ = []TypeList{$1, $2} //TODO 296
	}

TypeList1:
	/* EMPTY */
	{
		$$ = []TypeList1(nil) //TODO 297
	}
|	TypeList1 ',' Type
	{
		$$ = append($1.([]TypeList1), ",", $3) //TODO 298
	}

TypeLit:
	ArrayType
	{
		$$ = $1 //TODO 299
	}
|	StructType
	{
		$$ = $1 //TODO 300
	}
|	PointerType
	{
		$$ = $1 //TODO 301
	}
|	FunctionType
	{
		$$ = $1 //TODO 302
	}
|	InterfaceType
	{
		$$ = $1 //TODO 303
	}
|	SliceType
	{
		$$ = $1 //TODO 304
	}
|	MapType
	{
		$$ = $1 //TODO 305
	}
|	ChannelType
	{
		$$ = $1 //TODO 306
	}

TypeName:
	TYPE_NAME
	{
		$$ = $1 //TODO 307
	}
|	PACK_NAME '.' TYPE_NAME
	{
		$$ = []TypeName{$1, ".", $3} //TODO 308
	}

TypeSpec:
	Dclname Type
	{
		$$ = []TypeSpec{$1, $2} //TODO 309
	}

TypeSwitchCase:
	CASE TypeList
	{
		$$ = []TypeSwitchCase{"case", $2} //TODO 310
	}
|	DEFAULT
	{
		$$ = "default" //TODO 311
	}

TypeSwitchGuard:
	PrimaryExpr '.' '(' TYPE ')'
	{
		$$ = []TypeSwitchGuard{$1, ".", "(", "type", ")"} //TODO 312
	}
|	Dclname COLAS PrimaryExpr '.' '(' TYPE ')'
	{
		$$ = []TypeSwitchGuard{$1, $2, $3, ".", "(", "type", ")"} //TODO 313
	}

TypeSwitchStmt:
	SWITCH TypeSwitchGuard '{' TypeSwitchStmt2 '}'
	{
		$$ = []TypeSwitchStmt{"switch", $2, "{", $4, "}"} //TODO 314
	}
|	SWITCH SimpleStmt ';' TypeSwitchGuard '{' TypeSwitchStmt2 '}'
	{
		$$ = []TypeSwitchStmt{"switch", $2, ";", $4, "{", $6, "}"} //TODO 315
	}

TypeSwitchStmt2:
	/* EMPTY */
	{
		$$ = []TypeSwitchStmt2(nil) //TODO 316
	}
|	TypeSwitchStmt2 TypeCaseClause
	{
		$$ = append($1.([]TypeSwitchStmt2), $2) //TODO 317
	}

UnaryExpr:
	PrimaryExpr
	{
		$$ = $1 //TODO 318
	}
|	'+' UnaryExpr
	{
		$$ = []UnaryExpr{"+", $2} //TODO 319
	}
|	'-' UnaryExpr
	{
		$$ = []UnaryExpr{"-", $2} //TODO 320
	}
|	'!' UnaryExpr
	{
		$$ = []UnaryExpr{"!", $2} //TODO 321
	}
|	'^' UnaryExpr
	{
		$$ = []UnaryExpr{"^", $2} //TODO 322
	}
|	'*' UnaryExpr
	{
		$$ = []UnaryExpr{"*", $2} //TODO 323
	}
|	'&' UnaryExpr
	{
		$$ = []UnaryExpr{"&", $2} //TODO 324
	}
|	COMM UnaryExpr
	{
		$$ = []UnaryExpr{$1, $2} //TODO 325
	}

Value:
	Expression
	{
		$$ = $1 //TODO 326
	}
|	LiteralValue
	{
		$$ = $1 //TODO 327
	}

VarDecl:
	VAR VarDecl1
	{
		$$ = []VarDecl{"var", $2} //TODO 328
	}

VarDecl1:
	VarSpec
	{
		$$ = $1 //TODO 329
	}
|	'(' VarDecl11 ')'
	{
		$$ = []VarDecl1{"(", $2, ")"} //TODO 330
	}

VarDecl11:
	/* EMPTY */
	{
		$$ = []VarDecl11(nil) //TODO 331
	}
|	VarDecl11 VarSpec ';'
	{
		$$ = append($1.([]VarDecl11), $2, ";") //TODO 332
	}

VarSpec:
	IdentifierList VarSpec1
	{
		$$ = []VarSpec{$1, $2} //TODO 333
	}

VarSpec1:
	Type VarSpec11
	{
		$$ = []VarSpec1{$1, $2} //TODO 334
	}
|	'=' ExpressionList
	{
		$$ = []VarSpec1{"=", $2} //TODO 335
	}

VarSpec11:
	/* EMPTY */
	{
		$$ = nil //TODO 336
	}
|	'=' ExpressionList
	{
		$$ = []VarSpec11{"=", $2} //TODO 337
	}

%%

//TODO remove demo stuff below

var _parserResult interface{}

type (
	AnonymousField interface{}
	ArgumentList interface{}
	ArgumentList1 interface{}
	ArrayLength interface{}
	ArrayType interface{}
	Assignment interface{}
	BaseType interface{}
	BasicLit interface{}
	Binary_op interface{}
	Block interface{}
	BreakStmt interface{}
	BreakStmt1 interface{}
	BuiltinArgs interface{}
	BuiltinArgs1 interface{}
	BuiltinCall interface{}
	Call interface{}
	Channel interface{}
	ChannelType interface{}
	ChannelType1 interface{}
	CommCase interface{}
	CommCase1 interface{}
	CommClause interface{}
	CompositeLit interface{}
	Condition interface{}
	ConstDecl interface{}
	ConstDecl1 interface{}
	ConstDecl11 interface{}
	ConstSpec interface{}
	ConstSpec1 interface{}
	ConstSpec11 interface{}
	ContinueStmt interface{}
	ContinueStmt1 interface{}
	Conversion interface{}
	Dclname interface{}
	Declaration interface{}
	DeferStmt interface{}
	Element interface{}
	ElementIndex interface{}
	ElementList1 interface{}
	ElementType interface{}
	ExprCaseClause interface{}
	ExprSwitchCase interface{}
	ExprSwitchStmt interface{}
	ExprSwitchStmt2 interface{}
	ExprSwitchStmt3 interface{}
	Expression interface{}
	ExpressionList interface{}
	ExpressionList1 interface{}
	ExpressionStmt interface{}
	FallthroughStmt interface{}
	FieldDecl interface{}
	FieldDecl1 interface{}
	FieldDecl2 interface{}
	FieldName interface{}
	ForClause interface{}
	ForClause1 interface{}
	ForClause2 interface{}
	ForClause3 interface{}
	ForStmt interface{}
	ForStmt1 interface{}
	ForStmt11 interface{}
	Function interface{}
	FunctionBody interface{}
	FunctionDecl interface{}
	FunctionDecl1 interface{}
	FunctionLit interface{}
	FunctionName interface{}
	FunctionType interface{}
	GoStmt interface{}
	GotoStmt interface{}
	IdentifierList interface{}
	IdentifierList1 interface{}
	IfStmt interface{}
	IfStmt2 interface{}
	IfStmt21 interface{}
	ImportDecl interface{}
	ImportDecl1 interface{}
	ImportDecl11 interface{}
	ImportPath interface{}
	ImportSpec interface{}
	ImportSpec1 interface{}
	ImportSpec11 interface{}
	IncDecStmt interface{}
	IncDecStmt1 interface{}
	Index interface{}
	InitStmt interface{}
	InterfaceType interface{}
	InterfaceType1 interface{}
	InterfaceTypeName interface{}
	Key interface{}
	KeyType interface{}
	Label interface{}
	LabeledStmt interface{}
	Literal interface{}
	LiteralType interface{}
	LiteralValue interface{}
	LiteralValue1 interface{}
	LiteralValue11 interface{}
	MapType interface{}
	MethodDecl interface{}
	MethodDecl1 interface{}
	MethodExpr interface{}
	MethodName interface{}
	MethodSpec interface{}
	Operand interface{}
	OperandName interface{}
	PackageClause interface{}
	ParameterDecl interface{}
	ParameterDecl1 interface{}
	ParameterList interface{}
	ParameterList1 interface{}
	Parameters interface{}
	PointerType interface{}
	PostStmt interface{}
	PrimaryExpr interface{}
	RangeClause interface{}
	RangeClause1 interface{}
	Receiver interface{}
	ReceiverType interface{}
	RecvExpr interface{}
	RecvStmt interface{}
	RecvStmt11 interface{}
	Result interface{}
	ReturnStmt interface{}
	ReturnStmt1 interface{}
	SelectStmt interface{}
	SelectStmt1 interface{}
	Selector interface{}
	SendStmt interface{}
	ShortVarDecl interface{}
	Signature interface{}
	Signature1 interface{}
	SimpleStmt interface{}
	Slice interface{}
	Slice1 interface{}
	Slice2 interface{}
	SliceType interface{}
	SourceFile interface{}
	SourceFile1 interface{}
	SourceFile2 interface{}
	Start interface{}
	Statement interface{}
	StatementList interface{}
	StatementList1 interface{}
	StatementList11 interface{}
	StructType interface{}
	StructType1 interface{}
	SwitchStmt interface{}
	Tag interface{}
	TopLevelDecl interface{}
	Type interface{}
	TypeAssertion interface{}
	TypeCaseClause interface{}
	TypeDecl interface{}
	TypeDecl1 interface{}
	TypeDecl11 interface{}
	TypeList interface{}
	TypeList1 interface{}
	TypeLit interface{}
	TypeName interface{}
	TypeSpec interface{}
	TypeSwitchCase interface{}
	TypeSwitchGuard interface{}
	TypeSwitchStmt interface{}
	TypeSwitchStmt2 interface{}
	UnaryExpr interface{}
	Value interface{}
	VarDecl interface{}
	VarDecl1 interface{}
	VarDecl11 interface{}
	VarSpec interface{}
	VarSpec1 interface{}
	VarSpec11 interface{}
)
	
func _dump() {
	s := fmt.Sprintf("%#v", _parserResult)
	s = strings.Replace(s, "%", "%%", -1)
	s = strings.Replace(s, "{", "{%i\n", -1)
	s = strings.Replace(s, "}", "%u\n}", -1)
	s = strings.Replace(s, ", ", ",\n", -1)
	var buf bytes.Buffer
	strutil.IndentFormatter(&buf, ". ").Format(s)
	buf.WriteString("\n")
	a := strings.Split(buf.String(), "\n")
	for _, v := range a {
		if strings.HasSuffix(v, "(nil)") || strings.HasSuffix(v, "(nil),") {
			continue
		}
	
		fmt.Println(v)
	}
}

// End of demo stuff
