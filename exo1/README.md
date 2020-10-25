# EXO1

# Les base de rego et conftest

Conftest va chercher les rules `deny`, `violation` et `warn`.
Nous devons donc nommer nos rules selon ces conventions.
Le contenu des fichiers analysés par conftest est passé dans la variable input

En rego, les rules peuvent être compris comme :
```rego
rule-name IS value IF body
```
ex :

```rego
rule-name = value {
    x := 42
    y := 41
    x > y
}
```
Si `value` est ommit, par défaut c'est `true`

# But de l'exercice

La règle doit répondre au besoin suivant :
* ne rien faire si input vaut `false`
* remplir la variable msg avec `input is true` et faire en sorte que la règle s'applique si input vaut `true`

Les tests sont déjà posés, il faut les faire passer au vert
