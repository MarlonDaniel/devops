#!/bin/bash
if [ $1 = "default" ] && [ $2 = "default" ] && [ $3 = "default" ] && [ $4 = "default" ] && [ $5 = "default" ] && [ $6 = "default" ]
then
	echo "===> Para usar el script debe enviar los siguientes parametros validos: NombreZip, PasswordZip, UsuarioMega, PasswordMega, DirectorioMega, TorrentLink" 
else
	zip_name=$1
	zip_password=$2
	mega_usuario=$3
	mega_password=$4
	mega_path=$5
	link=$6
	
	echo "===> Creando directorios"
	cd /usr/src/
	mkdir $zip_name

	cd /usr/src/$zip_name
	echo "===> Levantando servicio Aria2c (torrent), por favor espere..."
	aria2c --daemon=true --enable-rpc –rpc-listen-all 
	echo "===> Descargando torrent, por favor espere..."
	aria2c --seed-time=0 "$link" --disable-ipv6

	cd /usr/src/
	echo "===> Comprimiento y encriptando carpeta, por favor espere..."
	7z a $zip_name.7z -r -p$zip_password -mhe=on  $zip_name/    								#Everything is Ok
	echo "===> Subiendo al Mega, por favor espere..."
	megaput --path $mega_path$zip_name.7z  -u $mega_usuario -p $mega_password $zip_name.7z   	#Uploaded fotos.7z
fi