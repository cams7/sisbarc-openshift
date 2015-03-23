#Para clonar a aplicação do openshift, execute o comando:
rhc git-clone sisbarc

#Dentro do diretorio 'sisbarc'. Para visualizar as aplicações do openshift, execute o comando:
rhc app show

#Dentro do diretorio 'sisbarc'. Para visualizar os logs da aplicação no openshift, execute o comando:
rhc tail

#Dentro do diretorio 'sisbarc'. Para redirecionar as portas do openshift, execute o comando:
rhc port-forward

#Dentro do diretorio 'sisbarc'. Para fazer o push no openshift, execute o comando:
git push

#Dentro do diretorio 'sisbarc'. Para fazer o pull do openshift, execute o comando:
git pull

---------------------------------------------------------------------------------------------------

#Dentro do diretorio 'sisbarc'. Para manter o repositorio do github e openshift sincronizados, execute o comando:
git remote add github https://github.com/cams7/sisbarc-openshift.git

#Dentro do diretorio 'sisbarc'. Para fazer o push no github, execute o comando:
git push github master	

#Dentro do diretorio 'sisbarc'. Para fazer o pull do github, execute o comando:
git pull github master



