#Meu primeiro script


#echo "Existem diferentes formas de fazer um output das informaÃ§Ãµes, uma e utilizando o comando echo "
#Write-Host "" #o Write-host e Write Output, nÃ£o tem quebra de linhas
#Write-Host "A outra e utilizando o Write-Host"
#Write-Output ""
#Write-Output "E por ultimo o Write-Output"

#echo "Podemos rodar alguns comandos do sistema por exemplo: `n"

#O getlocation retorna o diretório atual que estamos
#Da maneira abaixo terá uma quebra de linha

#echo "Meu diretorio atual: "
#get-location 

#dessa maneira não há quebra de linha

#echo "`nMeu diretorio atual $(get-location)"

#inclusive para quebrar linha aqui utilize o `n

#Write-Host "Meu usuario atual: $(whoami)"

# É possível também trabalhar com variaveis, da seguinte maneira

#$ip = "192.168.0.1"

#echo "Varrendo o host: $ip `n"

#echo "Posso utilizar o read-host para pegar dados e salvar em uma variável"

#$ip = Read-Host "Digite o IP: "
#echo "Varrendo o host: $ip"

#echo "Tem como pegar a variavel com o usuario, e setar uma segunda"
#$porta = 80

#echo "Varrendo o host: $ip e Porta $porta"

#$ip = read-host "Digite o IP"
#echo "Efetuando Ping no host: $ip"
#ping -n 1 $ip

# a saida ficou um pouco poluida, porém tem como melhorarmos,
#se analisando a saída, o ping que da certo sempre terá como resultado o
#bytes 32, podemos entao selecionar ele 

#$ip = read-host "Digite o IP"
#echo "Efetuando Ping no host: $ip"
#ping -n 1 $ip | Select-String "bytes=32"

#É possível também trabalharmos com parametros/argumentos, mas
#ele precisa estar no inicio do script por isso comentei o código inteiro
#Vamos já aproveitar e verificar se passaram algum argumento

param($ip)

if (!$ip){
    echo "Desec Security"
    echo "Exemplo de uso: .\script.ps1 192.168.0.12"
}
else{
    echo "Efetuando Ping no host: $ip"
    ping -n 1 $ip | Select-String "bytes=32"
}





