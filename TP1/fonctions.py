def puissance(a, b):
    if not type(a) is int or not type(b) is int:
        raise TypeError("Only integers are allowed")
    res = 1
    for i in range(1, b + 1):
        res = res * a
    
    return res

