#O Powershell tem vários comandos que eu posso utilizar para fazer scripts
#posso ver uma lista deles com a funcao:

#Get-Command

# É possível também, filtrar o conteúdo que eu quero por palavra chave

#Get-Command | Select-String Test

#bora testar uma função:

#Test-NetConnection www.businesscorp.com.br -Port 81 

#caso eu queria uma informação menos detalhada posso usar o parametro:

#Test-NetConnection www.businesscorp.com.br -Port 81


 #irá me retornar true

 #Ainda consigo manipular utilizando um if

 if(Test-NetConnection www.businesscorp.com.br -Port 15623 -WarningAction SilentlyContinue -InformationLevel Quiet){echo "Porta Aberta"} else {echo "Porta Fechada"}