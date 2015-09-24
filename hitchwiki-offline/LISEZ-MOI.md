[English](https://github.com/centime/hitchhickers-toolbox/tree/master/hitchwiki-offline)

hitchwiki-offline
=================

Consultez hitchwiki.org hors ligne, sur la route !
--------------------------------------------------

Ce qu'on propose est une copie sur le téléphone/tablette de *hitchwiki.org*. L'installation est très simple et permet donc d'utiliser hitchwiki sans la moindre connection internet.


Installation
------------

1. Installer l'application [aardict](https://play.google.com/store/apps/details?id=aarddict.android) sur le téléphone/tablette (via google play par exemple).

2. Télécharger [hitchwiki-offline.zip](https://github.com/centime/hitchhickers-toolbox/raw/master/hitchwiki-offline/hitchwiki-offline.zip) que nous avons généré à partir des données de *hitchwiki.org*.

3. Décompresser l'archive et copier le répertoire *hitchwiki-offline* sur le téléphone/tablette.

4. Depuis le téléphone/tablette, ouvrir *aard dictionary*, et accepter la proposition de *Lancer le scan*.

Une fois le scan fini, vous pouvez utiliser la recherche depuis *aard dictionary* pour trouver les articles de *hitchwiki.org*, dans les différentes langues.



Generation des fichiers et mise à jour
--------------------------------------


Bien, la copie du site n'est pas mise à jour automatiquement. Nous nous occuperons probablement de réactualiser les fichiers disponibles ici, mais sinon, les outils nécessaires sont rassemblés ici.

Il *suffit* de lancer le script *hitchwiki-fetch.sh*. Parmis les dépendances, il y aura virtualenv. Le script est une adaptation/mise à jour de celui-ci https://wiki.mag.lab.sh/wiki/Geekend/Hitchwiki , et vous trouverez la plupart des instructions sur aardict ici : http://aarddict.org/aardtools/doc/aardtools.html (mais pas forcement toutes à jour). Bonne chance :)