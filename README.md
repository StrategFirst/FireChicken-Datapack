<div align="center" style="text-align: center;">

# Firechicken datapack

<img
    src="pack.png"
    alt="Icon"
    width="128"
    height="128"
    />

</div>

> Datapack minecraft pour la version `23w44a` (datapack V23)

## 🪦 Tombe

À sa mort, tout joueur génère une tombe qui contient tout son équipement, sauf les objets enchanté avec `Curse of vanishing`.
_Ce dernier point ne concerne pas les livres enchantés avec `Curse of vanishing`._

La tombe indique le nom du joueur décédé et l'heure de la mort.

Le contenu peut être récupéré par tout joueur qui interagit avec la tombe.

## 🕥 Horloge

Récupères en permanence l'heure réelle ( heure + minute + seconde )

Outil utile pour d'autres fonctionnalités, pour l'utiliser :
```mcfunction
data get storage clock time
```
retour au format `HH:MM:SS` 

Ce datapack ajoute aussi un multi block pendule pour visualiser en survie l'heure IRL ingame.

<details>
<summary>Démo</summary>
https://github.com/StrategFirst/FireChicken-Datapack/tree/main/demo/clock.mp4
</details>

## 🧰 Utilitaire

Ensemble d'outils pratique :

 - Conversion `string` to `int` ( max length : `10` )

## ✨ Invis Item Frame

Permet en renommant un Item Frame (Glow ou non) `invis`
de le rendre invisible tant qu'il a un objet à l'interrieur
visuellement plus attirant !

<details>
<summary>Démo</summary>
https://github.com/StrategFirst/FireChicken-Datapack/tree/main/demo/demo.mp4
</details>