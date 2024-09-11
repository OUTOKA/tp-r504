
print ( " Hello , World ! ") 
import fonctions as f

try:
    a = input("Entrez la base (a) : ")
    b = input("Entrez l'exposant (b) : ")
    a = int(a)
    b = int(b)
    res = f.puissance(a, b)

    print(f"{a} à la puissance {b} est {res}")

except TypeError as e:
    print(f"Erreur : {e}")

except ValueError:
    print("Only integers are allowed")
