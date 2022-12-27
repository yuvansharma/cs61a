def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    """
    
    if(k==0):
        return 1

    return (n*falling(n-1,k-1))


def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    sum = 0
    while (y>0):
        sum += y%10
        y = y// 10
    
    return sum


def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    flag1, flag2 = False, False
    x = n//10
    while (n>0):
        if(n%10==8):
            flag1 = True
        
        if (x%10==8):
            flag2 = True
        
        if(flag1 and flag2):
            break

        flag1, flag2 = False, False
        x = x//10    
        n = n//10
    
    return (flag1 and flag2)
