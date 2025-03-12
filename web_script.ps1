$site = Read-Host "Digite o seu site"

#primeiramente vamos pegar as informações do servidor, utilizaremos o metodo options para pegar tudo o que o servidor aceita
$web = Invoke-WebRequest -uri "$site" -Method Options

echo "O servidor roda: "
$web.headers.server

echo ""
echo "O servidor aceita os métodos: "
$web.headers.allow

echo ""
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String https?://

#TODO: Fazer o tratamento dos erros 
#DONE: No método http colocar para pegar https também -> quando coloca o caractere "?" em frente a um outro caractere significa
#que o mesmo não é obrigatório
