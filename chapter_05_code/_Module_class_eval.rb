# class_eval(string [, filename [, lineno]]) → obj
# module_eval {|| block } → obj
#
# Evaluates the string or block in the context of mod.
# This can be used to add methods to a class. 
# module_eval returns the result of evaluating its argument. 
#
# The optional filename and lineno parameters set the text for error messages.

class Thing
end

a = %q{def hello; 'hello there'; end}
Thing.class_eval(a)

p Thing.instance_methods(false)