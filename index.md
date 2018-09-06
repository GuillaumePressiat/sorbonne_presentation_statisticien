---
title: Statistiques Sorbonne
author: G. Pressiat
mode  : selfcontained
framework: impressjs
url:
  lib: libraries
--- .slide x:-1000 y:-2000
<q>Statistiques</q>

<br>Guillaume Pressiat

<br><br><br><br><br>
<q>***La Sorbonne*** - *Paris*</q>
*29/01/2016*



--- #i0 x:0 y:-2000
<span class="try">Introduction</span>

--- #i1 x:0 y:-2000 rot:30
<span class="try">0 - Qu'est-ce que la statistique ?</span>

--- #i2 x:0 y:-2000 rot:60
<span class="try">1 - Exemple d'étude contexte 1</span>

--- #i3 x:0 y:-2000 rot:90
<span class="try">2 -Exemple d'étude contexte 2</span>


--- .slide x:-1000 y:-1000
<q>Introduction</q>

<sup>Partager les connaissances</sup>

--- #its x:-1000 y:-1000 z:-3000

<span class="try">Interdisciplinarité : voir la connaissance et la recherche comme un réseau</span>

--- #its2 x:-1000 y:-1000 z:-2000

<span class="try">Open source, numérique.
> - [R project](https://cran.r-project.org)
> - [Open data](http://www.data.gouv.fr/)
> - [OpenStreetMap](http://openstreetmap.fr/)
> - [Creative Commons](http://creativecommons.fr/)
> - [Github](https://github.com)</span>


--- #its3 x:-1000 y:-1000 z:-1000
Internet

--- .slide x:-1000 y:200 z:1000
<q>Requêtes Google et tendances</q>
> - *Kouachi*
> - *Kalachnikov*


```r
require(ggplot2)
require(gtrendsR)
x<-gtrends("kouachi", "FR",res = "day",
        start_date = as.Date("2014-12-01"), 
        end_date   = as.Date("2015-02-01"))
plot(x,type = c("trend","cities")[1])
```

--- x:-1500 y:6000 rot:90
![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png)

--- x:-1500 y:7500 z=1000 rot:90

|Jour                          |                    Search hits : kouachi|
|:-----------------------------|----------------------------------------:|
|2015-01-09                    |                                      100|
|2015-01-08                    |                                       60|
|2015-01-10                    |                                       42|
|2015-01-11                    |                                       27|
|2015-01-12                    |                                       17|
|2015-01-07                    |                                       16|
|2015-01-13                    |                                       15|
|2015-01-14                    |                                       13|
|2015-01-17                    |                                       10|
|2015-01-15                    |                                        9|

--- x:-1500 y:8500 z=1000 rot:90

|Recherches fr�quentes  |    hits : kouachi|
|:----------------------|-----------------:|
|freres kouachi         |               100|
|kouachi cherif         |                80|
|cherif                 |                80|
|said kouachi           |                75|
|said                   |                75|
|frere kouachi          |                60|
|les freres kouachi     |                45|
|coulibaly              |                40|
|kouachi coulibaly      |                40|
|mort kouachi           |                30|

--- x:-1500 y:9500 z=1000 rot:90

|R�gions             |    hits : kouachi|
|:-------------------|-----------------:|
|Champagne-Ardenne   |               100|
|�le-de-France       |                87|
|Picardie            |                85|
|Nord-Pas-de-Calais  |                70|
|Franche-Comt�       |                63|
|Lorraine            |                61|
|Auvergne            |                60|
|Centre              |                60|
|Bourgogne           |                59|
|Haute-Normandie     |                57|

--- x:-1500 y:10500 z=1000 rot:180

> - [Die Zeit](https://mran.revolutionanalytics.com/package/diezeit/)
> - [Portail Open data](http://www.data.gouv.fr)


--- .slide x:500 y:-1000
<q>1 - Qu'est ce que la statistique ?</q>

--- .slide x:500 y:0
<q>Statistique : administration aux origines : Outil de l'état.</q>



--- #imi1 x:500 y:-1000 z:-10000
Dans tous les domaines actuels ou presque cela demeure un outil

--- #imi2 x:500 y:-1000 z:-9000

- politique (démographie, chômage, csp, inégalités)<br>

--- #imi3 x:500 y:-1000 z:-8000 rot:10

- Sciences / biologie (analyse de séquence ADN, comparaison)<br>

--- #imi4 x:500 y:-1000 z:-7000 rot:20

- économie (assurance, séries temporelles, prédire)<br>

--- #imi5 x:500 y:-1000 z:-6000 rot:30

- l'histoire<br>

--- #imi6 x:500 y:-1000 z:-5000 rot:40

- marketing (web : clic cookie- problème des robots cliqueurs)<br>

--- #imi7 x:500 y:-1000 z:-4000 rot:50

> - journalisme (sondage, communication)<br>
> - industrie (fiabilité, décision)


--- .slide x:500 y:1000
<q>Pas seulement un outil mais aussi un objet de recherche et d'enseignement : (l'objet mathématique)</q>

--- #imi8 x:500 y:1000 z:-1000

À l'université, un exemple de champ de recherche : les événement rares.<BR>queues de distribution, valeurs extrêmes, tsunami, marché financier, accident nucléaire).<br>C'est dans ce contexte que les statistiques restent les plus connectées aux probabilités. 

--- #imi9 x:500 y:2000 z:-1000

**Deux statisticiens** : 
> - 1- *L'utilisateur d'un outil dans l'objectif d'un résultat*
> - 2- Un chercheur (il étudie méthodes et modèles)

**Ambivalence** :
> - 1- *le besoin de décrire et de décider en pratique : les outils statistiques*
> - 2- la construction de ces outils, la matière de ces outils étant les probabilités

--- #imi10 x:500 y:3000 z:-1000

*Extension du domaine de la statistique*
*Terminologie récente du marché de l'emploi*
> - Statisticien
> - Statisticien appliqué 
> - *Data scientist*
> - *Ingénieur statisticien*
> - Grandes données

--- #imi11 x:1500 y:3000 z:-1000

[Une discipline diverse (miscellaneous)](http://robjhyndman.com/hyndsight/files/2014/12/Venn-Diagram-of-Data-Scientist-Skills-.png)

--- #imi12 x:2500 y:3000 z:-1000

*La statistique de nature interdisciplinaire, car elle s'articule avec*
> - *les probabilités
> - *l'informatique
> - *les domaines d'applications

--- #imi13 x:3500 y:3000 z:-1000 rot:-45
**D'où l'intérêt d'en discuter**

--- #imi14 x:500 y:4000 z:-1000
> - Qu'est ce qu'une **fréquence** ?
> - Degré de confiance : *subjectivite*
> - Degré de réalisation : *objectiviste / fréquentiste*
> - Relations croisées entre stats et probas
> - Application d'un modèle probabiliste à un cas particulier : statistique

--- #imi15 x:500 y:5000 z:-1000
> - Formulation Bayésienne : 
> - A priori la donnée / a posteriori la fréquence
> - Passage à la limite de la fréquence pour en faire une probabilité 
> - Moyenne,...

--- #imi16 x:500 y:6000 z:-1000
> - *“Faire des choses qui tiennent”* (A. Desrosières)
> - *Ce que l’on cherche : définir pour chaque problème une méthode qui est reproductible* (K. Popper)

--- .slide x:3000 y:-1000
<q> Les étapes statistiques </q>
<br><br>
> - *Recueillir*
> - **Classifier**
> - **Modéliser**
> - **Visualiser**

--- #ex0 x:3000 y:-1000 z:-11000
> - **Recueil** : Constituer la Base De Données
> - La “base” de notre étude

--- #ex1 x:3000 y:-1000 z:-10000
> - **Classifier** : définir et entretenir des nomenclatures
> - préliminaire aux notions de ***contingence*** et de ***modèle***

--- #ex2 x:3000 y:-1000 z:-9000
**Contingence** : ce qui est et qui pourrait ne pas être, ou qui
pourrait être différent


--- #ex3 x:3000 y:-1000 z:-8000

**Modéliser** : *“Essentially, all models are wrong, but some are useful”* [(G. Box)](https://fr.wikipedia.org/wiki/George_Box)

--- #ex4 x:3000 y:-1000 z:-7000

**Modèle** (d'après G. Brousseau) :
> - ****pertinence*** : *représente correctement les observations*
> - ****communicabilité*** : *plus simple que les observations*
> - ****fidélité*** : *reconstitue au mieux les observations*
> - ****intelligibilité*** : *comprendre les observations*
> - ****consistance*** : *contrôle mathématique*


--- #ex5 x:3000 y:-1000 z:-6000
Visualiser : 
> - [Une parabole : cognition immédiate de l'œil](assets/Byrne_intro.pdf)
> - [un exemple simple](assets/Byrne.pdf)

--- .slide x:3000 y:0
<q> Parenthèses </q>
<br>
> - [Discret et continu](Continuité/)
> - Tests non paramétriques : somme des rangs

--- x:3000 y:1000 
![plot of chunk unnamed-chunk-7](assets/fig/unnamed-chunk-7-1.png)
	Wilcoxon rank sum test

data:  a$value by a$variable
W = 869, p-value = 5.998e-13
alternative hypothesis: true location shift is not equal to 0

--- x:3000 y:2000 
![plot of chunk unnamed-chunk-8](assets/fig/unnamed-chunk-8-1.png)
	Wilcoxon rank sum test

data:  a$value by a$variable
W = 513, p-value = 0.3581
alternative hypothesis: true location shift is not equal to 0

