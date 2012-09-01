# intern → symbol
# to_sym → symbol
#
# Returns the Symbol corresponding to str, creating the symbol 
# if it did not previously exist. See Symbol#id2name.

'Water'.intern == 'Water'.to_sym

:Water.object_id
'Water'.intern.object_id
