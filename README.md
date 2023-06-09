<div align="center" style="text-align: center;">

# Firechicken datapack

<img
    src="pack.png"
    alt="Icon"
    width="128"
    height="128"
    />

</div>

> Datapack minecraft pour la version `23w18a` (datapack V15) dans le but de suivre l'évolution des versions

## :tombstone: Tombe

À sa mort, tout joueur génère une tombe qui contient tout son équipement, sauf les pièces enchanté avec `Curse of binding` et qui étaient équipées.

La tombe indique le nom du joueur décédé et l'heure de la mort.

Le contenu peut être récupéré par tout joueur qui interagit avec la tombe.

## :clock1030: Horloge

Récupères en permanence l'heure réelle ( heure + minute + seconde )

Outil utile pour d'autres fonctionnalités, pour l'utiliser :
```mcfunction
data get storage clock time
```
retour au format `HH:MM:SS` 

## :toolbox: Utilitaire

Ensemble d'outils pratique :

 - Conversion `string` to `int` ( max length : `10` )

## :game_die: Générateur aléatoire

Contient plein d'utilitaire pour générer des nombres aléatoires :

 - `1bit` : `0` ou `1`
 - `3bit` : `0` à `7`
 - `4bit` : `0` à `15`
 - `10bit` : `0` à `1023`
 - `11bit_signed` : `-1023` à `1023`