#Meu primeiro script


#echo "Existem diferentes formas de fazer um output das informações, uma e utilizando o comando echo "
#Write-Host "" #o Write-host e Write Output, não tem quebra de linhas
#Write-Host "A outra e utilizando o Write-Host"
#Write-Output ""
#Write-Output "E por ultimo o Write-Output"

#echo "Podemos rodar alguns comandos do sistema por exemplo: `n"

#O getlocation retorna o diret�rio atual que estamos
#Da maneira abaixo ter� uma quebra de linha

#echo "Meu diretorio atual: "
#get-location 

#dessa maneira n�o h� quebra de linha

#echo "`nMeu diretorio atual $(get-location)"

#inclusive para quebrar linha aqui utilize o `n

#Write-Host "Meu usuario atual: $(whoami)"

# � poss�vel tamb�m trabalhar com variaveis, da seguinte maneira

#$ip = "192.168.0.1"

#echo "Varrendo o host: $ip `n"

#echo "Posso utilizar o read-host para pegar dados e salvar em uma vari�vel"

#$ip = Read-Host "Digite o IP: "
#echo "Varrendo o host: $ip"

#echo "Tem como pegar a variavel com o usuario, e setar uma segunda"
#$porta = 80

#echo "Varrendo o host: $ip e Porta $porta"

#$ip = read-host "Digite o IP"
#echo "Efetuando Ping no host: $ip"
#ping -n 1 $ip

# a saida ficou um pouco poluida, por�m tem como melhorarmos,
#se analisando a sa�da, o ping que da certo sempre ter� como resultado o
#bytes 32, podemos entao selecionar ele 

#$ip = read-host "Digite o IP"
#echo "Efetuando Ping no host: $ip"
#ping -n 1 $ip | Select-String "bytes=32"

#� poss�vel tamb�m trabalharmos com parametros/argumentos, mas
#ele precisa estar no inicio do script por isso comentei o c�digo inteiro
#Vamos j� aproveitar e verificar se passaram algum argumento

param($ip)

if (!$ip){
    echo "Desec Security"
    echo "Exemplo de uso: .\script.ps1 192.168.0.12"
}
else{
    echo "Efetuando Ping no host: $ip"
    ping -n 1 $ip | Select-String "bytes=32"
}





