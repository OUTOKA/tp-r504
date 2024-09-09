def puissance(a, b):
    if not type(a) and type(b) is int:
        raise TypeError("Les deux arguments doivent être des entiers.")
    return a ** b

