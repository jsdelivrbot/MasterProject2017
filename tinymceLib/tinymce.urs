
(* size of the editor, size can be default, pixels or percent*)
datatype size =
         DefaultSize
       | Pixels of int
       | Percent of int

(*  theme for for the browser, default is Modern *)
datatype theme =
	 Inline of bool

datatype button =
	   Separator

	  |UserdefinedFfi of string 
	  |InlineFn of {FnName: option string, Text: option string} 
	  |Urfn of string -> string

	  |Menubar of {Menuname: option string, Title: option string, Buttons : list button}
	  |Bold
	  |Italic
	  |Underline
	  |Strikethrough

	  |Alignleft
	  |Alignright
	  |Aligncenter
	  |Alignjustify

	  |Styleselect
          |Formatselect
	  |Fontsizeselect
	  |Fontselect

	  |Cut
	  |Copy
	  |Paste

	  |Bullist
	  |Numlist

	  |Outdent
	  |Indent

	  |Blockquote
	  |Undo
	  |Redo
	  |Removeformat

	  |Subscript
	  |Superscript

	  |Visualaid
	  |Insert

	  |Hr

	  |Link
	  |Unlink
	  |Anchor

	  |Image

	  |Code
	  |Codesample
	  |Bbcode

	  |Table
	  |Emoticons

	  |Save
	  |Cancel

	  |Print
	  |Preview

	  |Media
	  |Spellchecker

	  |Fullscreen

	  |Searchsolutions

	  |Importcss

 (* datatype plugins =  ImageX | EmoticonsX *)

 (*datatype items = Buttons of list button | Plugins of list plugin*)

 (* toolbar definition *)

(* datatype toolbar =
	   ToolbarN

	 | Bar of { Buttons: list button}

         | Stack of {MenuName: option string, Title: option string, Buttons: list button} *)

datatype toolbar = Collection of list button

datatype stack = Verticallist of list toolbar | DefaultToolbarSet 

(*datatype completeToolbar = list stack | DefaultToolbarSet*)

(*datatype toolbar_set =
	 DefaultToolbarSet

	 | CustomizeToolbar of stack *)


(*  defining editor type *)
type editor

(* specifing the confurationn of the editor *)

val editor : {Width : size,
	      Height : size,
	      InitialText : string,
	      ToolbarSet: stack,
	      Inline: theme
	     }
	     -> transaction editor

val show : editor -> xbody
val content : editor -> signal string
val setContent : editor -> string -> transaction unit
val lets_try :  string -> transaction unit