# If you change anything, be sure to verify Ruby syntax

# TODO: unresolved issues
# 
# text:
# "p << end
# print me!
# end"
# symptoms:
# not recognized as a heredoc
# solution:
# there is no way to distinguish perfectly between the << operator and the start
# of a heredoc. Currently, we require assignment to recognize a heredoc. More
# refinement is possible.
# • Heredocs with indented terminators (<<-) are always distinguishable, however.
# • Nested heredocs are not really supportable at present
# 
# text:
print <<-'THERE'
This is single quoted. 
The above used #{Time.now} 
THERE
# symtoms:
# From Programming Ruby p306; should be a non-interpolated heredoc.


# INTERPOLATED HEREDOC
p heredoc1 = <<heredoc1
normal text #{ "embedded source" } escaped characters \n\t\a\''\""\\
heredoc1
# >> "normal text embedded source escaped characters \n\t\a''\"\"\\\n"

p heredoc1_1 = <<-heredoc1_1
normal text #{ "embedded source" } escaped characters \n\t\a\''\""\\
  heredoc1_1
# >> "normal text embedded source escaped characters \n\t\a''\"\"\\\n"

p heredoc3 = <<"heredoc 3"
normal text #{ "embedded source" } escaped characters \n\t\a\''\""\\
heredoc 3
# >> "normal text embedded source escaped characters \n\t\a''\"\"\\\n"

p heredoc3_1 = <<-"heredoc 3.1"
normal text #{ "embedded source" } escaped characters \n\t\a\''\""\\
  heredoc 3.1
# >> "normal text embedded source escaped characters \n\t\a''\"\"\\\n"

# NON-INTERPOLATED HEREDOC
p heredoc2 = <<'heredoc2'
normal text #{ "embedded source" } escaped characters \n\t\a\''\""\\
heredoc2
# >> "normal text \#{ \"embedded source\" } escaped characters \\n\\t\\a\\''\\\"\"\\\\\n"

p heredoc2_1 = <<-'heredoc 2.1'
normal text #{ "embedded source" } escaped characters \n\t\a\''\""\\
  heredoc 2.1
# >> "normal text \#{ \"embedded source\" } escaped characters \\n\\t\\a\\''\\\"\"\\\\\n"


# BUGS
# Trailing space
p heredoc1 = <<heredoc1
heredoc1 
heredoc1

p heredoc1_1 = <<-heredoc1_1
  heredoc1_1 
  heredoc1_1

p heredoc3 = <<"heredoc 3"
heredoc 3 
heredoc 3

p heredoc3_1 = <<-"heredoc 3.1"
  heredoc 3.1 
  heredoc 3.1

p heredoc2 = <<'heredoc2'
heredoc2 
heredoc2

p heredoc2_1 = <<-'heredoc 2.1'
  heredoc 2.1 
  heredoc 2.1
# >> "heredoc1 \n"
# >> "  heredoc1_1 \n"
# >> "heredoc 3 \n"
# >> "  heredoc 3.1 \n"
# >> "heredoc2 \n"
# >> "  heredoc 2.1 \n"



# shouldn't end the heredoc, has "x" before heredoc end
p heredoc1 = <<heredoc1
xheredoc1
heredoc1

p heredoc1_1 = <<-heredoc1_1
xheredoc1_1
  heredoc1_1

p heredoc3 = <<"heredoc 3"
xheredoc 3
heredoc 3

p heredoc3_1 = <<-"heredoc 3.1"
xheredoc 3.1
  heredoc 3.1

p heredoc2 = <<'heredoc2'
xheredoc2
heredoc2

p heredoc2_1 = <<-'heredoc 2.1'
xheredoc 2.1
  heredoc 2.1
# >> "xheredoc1\n"
# >> "xheredoc1_1\n"
# >> "xheredoc 3\n"
# >> "xheredoc 3.1\n"
# >> "xheredoc2\n"
# >> "xheredoc 2.1\n"



# ==========================================
# = Stuff after the heredoc starting thing =
# ==========================================

# Real world example
# From http://eigenclass.org/hiki/ruby+weird+syntax
a, b, c = <<E1.chomp, 3, <<E2.split(/\n/).join(" - ")
hello world
E1
a
b
c
E2
p [a,b,c]
# >> ["hello world", 3, "a - b - c"]

# stuff on same line should be scoped
# heredoc contents shouldn't be scoped
p <<-heredoc1_1, "fred", 123.0, /regex/
p <<-heredoc1_1, "fred", 123.0, /regex/
heredoc1_1
# >> "p <<-heredoc1_1, \"fred\", 123.0, /regex/\n"
# >> "fred"
# >> 123.0
# >> /regex/
