# EXO2

# Parcours des éléments dans un tableau

Si j'ai le tableau suivant : `fruits = ["fraise", "cerise", "abricot"]`
et que je veux savoir s'il contient l'élément `"cerise"`, je peux faire comme cela :
```rego
cette_rule_est_true {
  fruits = ["fraise", "cerise", "abricot"]
  fruits[_] == "cerise"
}

cette_rule_est_false {
  fruits = ["fraise", "cerise", "abricot"]
  fruits[_] == "banane"
}
```
So, if I want a rule that raise a deny when `cerise` is in input, I can write
```rego
deny[msg] {
  fruit := input[_]
  fruit == "cerise"
  msg = "cerise should not be present in list"
}

```

# But de l'exercice

La règle doit répondre au besoin suivant :
* ne rien faire si input ne contient pas `prod`
* remplir la variable msg avec `prod should not be present in list` et faire en sorte que la règle s'applique si `input` contient `prod`

Les tests sont déjà posés, il faut les faire passer au vert
`conftest verify -p exo2`
