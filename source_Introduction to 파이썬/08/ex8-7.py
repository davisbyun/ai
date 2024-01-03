def is_palindrome(s):
    for i in range(0, int(len(s)/2)): 
        if s[i] != s[len(s)-i-1]:
            return False
        
    return True
 
string = "rotator"
 
if is_palindrome(string) :
    print("%s은(는) 회문이다!" % string)
else:
    print("%s은(는) 회문이 아니다!" % string)
