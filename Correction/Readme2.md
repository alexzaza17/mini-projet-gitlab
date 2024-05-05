# Fankem

## Alex

### Eazytraining 18th DevOps Bootcamp

#### Period: march-april-may

Application

Il est question ici pour nous de mettre en place un pipeline qui nous permettra de deployer et d heberger notre server de site web (nginx) dans une plateforme d'hebergement des applications. Nous avons d'abord ecrit le Dockerfile du code html. Creer les jobs qui nous permettrons de reaiser celle ci


Plan de travail

 Nous allons realiser ses differents jobs sur Gitlab CI/CD qui permettrons de mettre en place notre pipeline:
- Build
- Test d'acceptation
- Release de l'image
- Deploy staging
- Depoy prod
- Test staging
- Test prod
- 
Elaboration du travail

1- Job Build qui permet de builde l image de l application en utilisant les commandes docker et on recupere l'artefact

![docker-build](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/3fe59b72-1bec-45d8-8e7b-37ad98313bbc)

2- Job Test d acceptation qui permet de lancer un conteneur de notre image builde 

![test acceptation](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/c88b6e46-63ee-4d45-8f71-aaecb4e07dba)

3- Job release permet de push et de sauvegarder l'image dans le registry le registry de Gitlab car celui ci contient son propre registry et nous avons creer une variable appele IMAGE_NAME 

![release image](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/bff7acf5-e1b6-4358-8d6d-a20108265275)

4- Une fois que notre application a ete builde, teste et push sur le registry de Gitlab. l'application va etre deployer en environment de staging(environment tampon). Celle ci sera hebergee sur le plateforme heroku, comme identifiant sur cette plateforme nous mis "alexzaza1-staging"

![deploy staging](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/848ad59b-25a9-4bd2-9e17-3b2707d9300f)

5- L'application va etre deployer environment de production. Celle ci sera hebergee sur le plateforme heroku, comme identifiant sur cette plateforme nous mis "alexzaza1-production"

![deploy prod](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/9d1d989d-6142-460f-a0b3-34e9ba24a199)


![heroku](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/42df7edc-6534-4d6f-939f-8a892a5357a9)

6- Il permet de tester le fonctionnement de notre application en environment de staging. Nous devons rappeler qu'elle se fait uniquement sur la branche matser

![test staging](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/a02efeeb-91d6-4198-a954-5c00e057566c)

7- Test de fonctionnement en environment de prod

![test prod](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/b75ab771-7269-4abe-86ed-118c8439b1d3)


![End](https://github.com/alexzaza17/mini-projet-gitlab/assets/159175882/08f5e725-2927-4947-a536-966540da1f54)
