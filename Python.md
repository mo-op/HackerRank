Only the medium & hard exercises

Kevin and Stuart want to play the 'The Minion Game'.

Game Rules

Both players are given the same string, .
Both players have to make substrings using the letters of the string .
Stuart has to make words starting with consonants.
Kevin has to make words starting with vowels.
The game ends when both players have made all possible substrings.

Scoring
A player gets +1 point for each occurrence of the substring in the string .

For Example:
String = BANANA
Kevin's vowel beginning word = ANA
Here, ANA occurs twice in BANANA. Hence, Kevin will get 2 Points. 

def minion_game(string):
    k=len(s) 
    kevin=0 
    stuart = 0
    for i in range(k): 
        if s[i] in "AEIOU": 
            kevin+=(k-i) 
        stuart=k*(k+1)/2-kevin 
    if stuart>kevin: 
        print "Stuart",stuart 
    elif kevin>stuart: 
        print "Kevin", kevin 
    else: print "Draw"
