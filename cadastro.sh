#!/bin/bash
clear

echo "Preencha o cadastro a seguir com as informações corretas:"

function name (){
	read -p "Digite seu nome completo: " NOME
if [[ $( echo $NOME | grep -E '([[:digit:]]|[[:punct:]])') ]]; then
	echo "Nome inválido" && name
else
	echo "Nome válido" && echo "Nome: $NOME" > meucadastro.txt
sleep 1 && clear
fi
}
function email(){
	read -p "Digite seu email: " EMAIL
if [[ $( echo $EMAIL | grep -E "^([A-Za-z0-9\.\_-])+([@])[Aa-Zz]+((\.com\.br)|(\.com|\.br))$") ]]; then
	echo "Email válido" && echo "Email: $EMAIL" >> meucadastro.txt
sleep 1 && clear
else
	echo "Email inválido" && email
fi
}
function telefone(){
	read -p "Digite seu número de telefone: " TELEFONE
if [[ $( echo $TELEFONE | grep -E '^[(][0-9]{2}[)]9[0-9]{4}-[0-9]{4}$') ]]; then
echo "Número de telefone válido" && echo "Telefone: $TELEFONE" >> meucadastro.txt
sleep 1 && clear
else
	echo "Número de telefone inválido" && telefone
fi
}
function registrog(){
	read -p "Digite seu RG (Registro Geral): " RG
if [[ $( echo $RG | grep -E "^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-((X|x)|[0-9])$") ]]; then
	echo "RG válido" && echo "RG: $RG" >> meucadastro.txt
sleep 1 && clear
else
	echo "RG inválido" && registrog
fi
}
function cpf(){
	read -p "Digite seu CPF: " CPF
if [[ $( echo $CPF | grep -E "^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$") ]]; then
	echo "CPF válido" && echo "CPF: $CPF" >> meucadastro.txt
sleep 1 && clear
else
	echo "CPF inválido" && cpf
fi
}
function datanasc(){
read -p "Digite sua data de nascimento no seguinte parâmetro DD/MM/AAAA: " DATA
if [[ $(echo $DATA | grep -E '^([0][0-9]|[12][0-9]|[3][01])[/]([0][0-9]|[1][0-2])[/]([0-9]{4})$') ]]; then
	echo "Data de nascimento válida" && echo "Data de nascimento: $DATA" >> meucadastro.txt
sleep 1 && clear
else
	echo "Data de nacimento inválida" && datanasc
fi
}
function ipa(){
read -p "Digite seu endereço de IP: " IPAD
if [[ $( echo $IPAD | grep -E '^((2([5][0-5]|[0-4][0-9])|[0-9][0-9]|[0-9]|1[0-9][0-9])\.){3}([2]([5][0-5]|[0-4][0-9])|[0-9][0-9]|[0-9]|[1][0-9][0-9])$') ]]; then
	echo "IP válido" && echo "IP: $IPAD" >> meucadastro.txt
sleep 1 && clear
else
	echo "IP inválido" && ipa
fi
}
function maska(){
read -p "Digite sua mascara de rede: " NETM
	echo $NETM > .cadastro.tmp 
if [[ $( echo $NETM | grep -E '^((2([5][0-5]|[0-4][0-9])|[0-9][0-9]|[0-9]|1[0-9][0-9])\.){3}([2]([5][0-5]|[0-4][0-9])|[0-9][0-9]|[0-9]|[1][0-9][0-9])$') ]]; then
	echo "Mascara válida" && echo "Mascara de rede: $NETM" >> meucadastro.txt
sleep 1 && clear
else
	echo "Mascara inválida" && maska
fi
}
name 
email 
telefone 
registrog
cpf
datanasc
ipa
maska
cat meucadastro.txt
