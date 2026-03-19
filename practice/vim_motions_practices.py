"""

@Credit: https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/

"""

# word
[1, 2, 3, 4, 5], (1, 2, 3, 4, 5)

# WORD 
[1,2,3,4,5], (1,2,3,4,5)

WORD_1 = "Iam_A_WORD(WORD)"
WORD_2 = "sum(2,3)"



def sum(x, y):
    return x + y

# word 
sum(2, 3)
# WORD 
sum(2,3)

# f (find next char) | F (find prev char)
def function(a, b, c) -> list: 
    return [1, 2]

# f{char} - next char | try f?
# F{char} - prev char | try Fa 
# t{char} - till char | stops before find that char
# T{char} - till char | stops before find that char (Backward)
# ; <- forward | , <- backward 
# f_;;; # <- goes next "_" then again next _ 3 times
# F_,,, # <- same as above but backward
find_char_practice = "aaaaaaabbbbbbbbccccc____????1111bbbbbTTTTTTTT_______((-294"

