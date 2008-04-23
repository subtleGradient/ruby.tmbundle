# Ruby syntax test file for stuff we've gotten wrong in the past or are currently getting wrong

#########
#basics

=begin
# INVALID
module samwi_78se
# ~> -:1: class/module name must be CONSTANT
  class mysuperclassofdoom < someotherclass
# ~> -:1: class/module name must be CONSTANT
# ~>   class mysuperclassofdoom < someotherclass
# ~>                             ^
  end
end
=end

module Samwi_78se
  class Mysuperclassofdoom < Someotherclass
  end
end

class Fred < "fred".class
end

class Gallo_way8 < Kni9_ght
  
  def sl_9ay(beast)
    
  end

  #These shouldn't capture the leading space before it
  def my_method_of_doom(args)
    'yay'
  rescue
    'whatever'
  ensure
    'something else'
  end
  
  def my_method_of_doom(args);'yay';rescue;'whatever';ensure;'something else';end
  
  #The indent here should not be broken
  
end


def hot?(cold)

end

def w00t!
	
	unless l33t
		sysbeep
	end
	
end

###########
# method names

# method names can be keywords and should not be highlighted if they appear as explicit method invocations
br = m.end(0) + b1
x, y = b2vxay(m.begin(0) + b1)
stream.next
self.class


# keyword.operator
var1,var2 = 1,2

p var1 ==  var2
p var1 === var2
p var1 =~  var2
p var1 =   var2
p var1 *   var2
p var1 -   var2
p var1 +   var2
p var1 %   var2
p var1 ^   var2
p var1 &   var2
p var1 *   var2

# Method
p u.whatever +  'something'
p u.whatever + ('something')
p u.whatever.+( 'something')
p u.whatever+   'something'
p u.whatever+  ('something')
p u.whatever+(  'something')

p u.whatever =  'something'
p u.whatever = ('something')
p u.whatever =( 'something')
p u.whatever=   'something'
p u.whatever=  ('something')
p u.whatever=(  'something')

p u.whatever =  12345
p u.whatever = (12345)
p u.whatever =( 12345)
p u.whatever=   12345
p u.whatever=  (12345)
p u.whatever=(  12345)
p u.whatever =12345
p u.whatever=12345

p u.whatever ==  'something'
p u.whatever == ('something')
p u.whatever ==( 'something')
p u.whatever==   'something'
p u.whatever==  ('something')
p u.whatever==(  'something')

p u.whatever ===  'something'
p u.whatever === ('something')
p u.whatever ===( 'something')
p u.whatever===   'something'
p u.whatever===  ('something')
p u.whatever===(  'something')

p u.password =  'something'
p u.password = ('something')
p u.password =( 'something')
p u.password=   'something'
p u.password=  ('something')
p u.password=(  'something')

p u.abort_on_exception =  'something'
p u.abort_on_exception = ('something')
p u.abort_on_exception =( 'something')
p u.abort_on_exception=   'something'
p u.abort_on_exception=  ('something')
p u.abort_on_exception=(  'something')

p u.success ?  'something'  :  'something else'
p u.success ? ('something') : ('something else')
p u.success ? ('something' ):( 'something else')

#Correctly scoped as constant.numeric
p(u.success ?( ) # !> parenthesize argument(s) for future version
p(u.success(?())

# Functions
p(u.success?   'something'  ,  'something else' ) # !> parenthesize argument(s) for future version
p u.success?  ('something') , ('something else')  # !> don't put space before argument parentheses
p(u.success?  ('something') , ('something else')) # !> don't put space before argument parentheses
p(u.success?(  'something') , ('something else'))
p u.success?(  'something') ,( 'something else')

fred='';0.upto(255){|n|fred << n rescue p n}; p fred 
fred.each_byte{|c|p '?'<<c}
 "\000\001\002\003\004\005\006\a\b\t\n\v\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\e\034\035\036\037 !\"\#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
 
p [?\000,?\001,?\002,?\003,?\004,?\005,?\006,?\a,?\b,?\t,?\n,?\v,?\f,?\r,?\016,?\017,?\020,?\021,?\022,?\023,?\024,?\025,?\026,?\027,?\030,?\031,?\032,?\e,?\034,?\035,?\036,?\037,?!,?\",?#,?$,?%,?&,?',?(,?),?*,?+,?,,?-,?.,?/,?0,?1,?2,?3,?4,?5,?6,?7,?8,?9,?:,?;,?<,?=,?>,??,?@,?A,?B,?C,?D,?E,?F,?G,?H,?I,?J,?K,?L,?M,?N,?O,?P,?Q,?R,?S,?T,?U,?V,?W,?X,?Y,?Z,?[,?\\,?],?^,?_,?`,?a,?b,?c,?d,?e,?f,?g,?h,?i,?j,?k,?l,?m,?n,?o,?p,?q,?r,?s,?t,?u,?v,?w,?x,?y,?z,?{,?|,?},?~,?\177,?\200,?\201,?\202,?\203,?\204,?\205,?\206,?\207,?\210,?\211,?\212,?\213,?\214,?\215,?\216,?\217,?\220,?\221,?\222,?\223,?\224,?\225,?\226,?\227,?\230,?\231,?\232,?\233,?\234,?\235,?\236,?\237,?\240,?\241,?\242,?\243,?\244,?\245,?\246,?\247,?\250,?\251,?\252,?\253,?\254,?\255,?\256,?\257,?\260,?\261,?\262,?\263,?\264,?\265,?\266,?\267,?\270,?\271,?\272,?\273,?\274,?\275,?\276,?\277,?\300,?\301,?\302,?\303,?\304,?\305,?\306,?\307,?\310,?\311,?\312,?\313,?\314,?\315,?\316,?\317,?\320,?\321,?\322,?\323,?\324,?\325,?\326,?\327,?\330,?\331,?\332,?\333,?\334,?\335,?\336,?\337,?\340,?\341,?\342,?\343,?\344,?\345,?\346,?\347,?\350,?\351,?\352,?\353,?\354,?\355,?\356,?\357,?\360,?\361,?\362,?\363,?\364,?\365,?\366,?\367,?\370,?\371,?\372,?\373,?\374,?\375,?\376,?\377]
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]

# Function
p whatever =  'something'
p whatever = ('something')
p whatever =( 'something')
p whatever=   'something'
p whatever=  ('something')
p whatever=(  'something')

p password =  'something'
p password = ('something')
p password =( 'something')
p password=   'something'
p password=  ('something')
p password=(  'something')


# this Totally kills Ruby Experimental ATM (Mon Jan 29 10:38:00 EST 2007)

# fred(  )fred()
# ~> -:1: syntax error, unexpected tIDENTIFIER, expecting $end
# ~> fred(  )fred()
# ~>             ^

# fred()()
# ~> -:1: syntax error, unexpected '(', expecting $end
# ~> fred()()
# ~>        ^

# fred[]()
# ~> -:1: syntax error, unexpected '(', expecting $end
# ~> fred[]()
# ~>        ^
def fred();     nil ;end
def fred.fred() nil ;end
def fred.[]();  nil ;end

p fred()[]
p fred().[]()
p fred(  );fred()
p fred(  ).fred()
p fred()  .fred()
p fred() ::fred()
p fred.fred()
p fred::fred()
# Range, not function
p fred..fred()
p fred...fred()
p fred()..fred
p fred()...fred

# fred() fred()
# ~> -:1: syntax error, unexpected tIDENTIFIER, expecting $end
# ~> fred() fred()
# ~>            ^


# method calls no dot or round brackets
puts "shmoo"


def foo(hash,&block)
  p hash
  p block
end

foo {                 } # Block, not hash

foo  :action=>'action'
foo  :action=>'action'        do|action|  action end
foo                            {|action|  action }
foo                           do|action|  action end
foo                   &lambda  {|action|  action }   # !> `&' interpreted as argument prefix
foo                   &lambda do|action|  action end # !> `&' interpreted as argument prefix
# ~> -:1: both block arg and actual block given

foo({:action=>'action'})       {|action|  action }
foo({:action=>'action'}       ){|action|  action }
foo({:action=>'action'},&lambda{|action|  action })

# Syntax Errors
foo {:action=>'action'}
# ~> -:1: syntax error, unexpected tASSOC, expecting '}'
# ~> foo {:action=>'action'}
# ~>               ^
foo {:action=>'action'}        {|action|  action }
# ~> -:1: syntax error, unexpected tASSOC, expecting '}'
# ~> foo {:action=>'action'}        {|action|  action }
# ~>               ^
# ~> -:1: syntax error, unexpected '{', expecting $end
# ~> foo {:action=>'action'}        {|action|  action }
# ~>                                 ^
foo  :action=>'action'         {|action|  action }
# ~> -:1: syntax error, unexpected '{', expecting $end
# ~> foo  :action=>'action'         {|action|  action }
# ~>                                 ^

foo bar
foo bar foo bar foo bar # !> parenthesize argument(s) for future version
foo(bar(foo(bar(foo(bar)))))
foo[bar[foo[bar[foo[bar]]]]]
foo.bar.foo.bar.foo.bar

# Regular Variables
foo
bar
foo = 1
foo = bar


############
# numbers

data += 0.chr
99.downto(0)

0.9		# number
0.A		# method invocation (0 -> A)
0.A()	# method invocation (0 -> A)
0xCAFEBABE022409ad802046	# hex
23402	# integer
4.232	# decimal


###########
# strings 

'hello #{42} wor\'knjkld'		# no interpolation or escapes except for slash-single-quote

# double quoted string (allows for interpolation):
"hello #{42} world"	  #->  "hello 42 world"
"hello #@ivar world"  #->  "hello 42 world"
"hello #@@cvar world" #->  "hello 42 world"
"hello #$gvar world"  #->  "hello 42 world"

'hello #@ivar world'
'hello #@@cvar world'
'hello #$gvar world'

# escapes
"hello #$gvar \"world"  #->  "hello 42 \"world"

# execute string (allows for interpolation):
%x{ls #{dir}}	 #-> ".\n..\nREADME\nmain.rb"
`ls #{dir}`   #-> ".\n..\nREADME\nmain.rb"

%Q{dude #{hey}}
%Q!dude#{hey}!
%W(dude#{hey})
%q!dude#{hey}!
%s{dude#{hey}}
%w{dude#{hey}}
%{woah#{hey}}
% woah#{hey} 

# mod operator should not be interpreted as a string operator
# (space as delimiter is legal Ruby: '% string ' => "string")
if (data.size % 2) == 1
line << ('%3s ' % str)


###########
# regexp

/matchmecaseinsensitive/i
/matchme/
/ matchme /
%r{matchme}

32/23	#division, not regexp

32 / 32 #division, not regexp

gsub!(/ +/, '')  #regexp, not division

###########
# symbols

:BIG  :aBC	:AbC9  :symb  :_asd	 :_9sd	:__=  :f00bar  :abc!
			:abc?  :abc=  :<<  :<  :>>	:>	:<=>  :<=  :>=	:%	:*	:**
			:+	:-	:&	:|	:~	:=~	 :==  :===	:`	:[]=  :[]  :/  :-@
			:+@	 :@aaa	:@@bbb

# else clause of ternary logic should not highlight as symbol
val?(a):p(b)
val?'a':'b'
M[1]?(a+b):p(c+d)

val ? (a) : p(b)
val ? 'a' : 'b'
M[1] ? (a+b) : p(c+d)

# but we must also account for ? in method names
thing.fred?(:someone)
thing.fred? :someone
thing.fred? thing2, :someone

begin = {"(?=\\w)\\s*\\?:"}


############
#literal capable of interpolation:	 
%W(a b#{42}c) #-> ["a", "b42c"]
%W(ab c\nd \\\)ef)

%(#{42})  #->  "42"


############
# multiline comments

=begin
stuff here
... def must_not_highlight_keywords_in_comments end;
stuff here too
=end


############
#literal incapable of interpolation
%w(a b#{42}c) 					#-> ["a", "b#{42}c"]############
%w(ab c\nd \\\)ef)				# heredoc tests

append << not_heredoc

heredoc = <<END # C heredoc

void LoveMyCarpet( int forReal )
{
	forReal = 56;
}

END

assert_equal(2**i, 1<<i)


##########
# end marker

__END__

def nothing_here_should_be_highlighted!( at all )

end
