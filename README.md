# gd-example-audio-playback

![Projet de déclenchement sonore](image.png)

Ce projet Godot démontre deux manières de faire jouer du sons.

Le bouton du haut déclenche un son le temps d'une lecture, le bouton du bas active une boucle qui joue jusqu'à ce ce que l'on l'état de son bouton revienne à 0.


![Noeuds](./img/scene-arbre-de-noeud.png)

## Paramètre d'importation sonore


Du chutier principal (file system), sélectionner le ficher sonore et personnaliser le paramètre d'importation pour déterminer si ce dernier joue en boucle lorsqu'il est déclenché. Par default, il joue une fois sans boucler. 

| Déclenchement | Interupteur (Boucle) | 
|---|---|
|![déclenchement](./img/importation_audio_déclenchement.png) | ![lecture en boucle](./img/importation_audio_boucle.png) |


## Comportement d'un bouton


### Déclenchement (trigger)

Par défault, le bouton se comporte de type déclenchement, pas de personnalisation nécessaire

Attacher l'action `play()` du noeud audioStreamPlayer au signal `_on_pressed()`

```gdscript
func _on_pressed() -> void:
	$AudioStreamPlayer.play()
```

### Interupteur (toggle)

Il faut personnaliser le bouton régulier afin qu'il se comporte de type interupteur

![bouton-declenchement.png](./img/bouton-declenchement.png)


Attacher l'action `play()` du noeud audioStreamPlayer au signal `_on_toggled(toggled_on: bool)`

Utiliser le booléen `toggled_on` pour déterminer l'état de lecture du fichier sonore


```gdscript
func _on_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()

```
