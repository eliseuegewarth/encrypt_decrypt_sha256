#!/bin/bash
if [ -z ${PSWD_1_LEVEL} ]; then
	echo "PSWD_1_LEVEL not setted...";
elif [ -z ${PSWD_2_LEVEL} ]; then
	echo "PSWD_2_LEVEL not setted...";
elif [ -z ${PSWD_3_LEVEL} ]; then
	echo "PSWD_3_LEVEL not setted...";
elif [ -z ${PSWD_4_LEVEL} ]; then
	echo "PSWD_4_LEVEL not setted...";
elif [ -z ${PSWD_5_LEVEL} ]; then
	echo "PSWD_5_LEVEL not setted...";
elif [ -z ${1} ]; then
	echo "File not setted...";
else 
	export file_name="$1" && \
	export base_filename="$(basename -- $file_name)" && \
	# Cria backup do arquivo. Salve em segurança
	mv $file_name "${file_name}.backup" && \
	cp "${file_name}.backup" "${base_filename}" && \
	gpg --symmetric --batch --passphrase ${PSWD_1_LEVEL} ${base_filename} && \
	rm ${base_filename} && \
	mv "${base_filename}.gpg" ${base_filename} && \
	gpg --symmetric --batch --passphrase ${PSWD_2_LEVEL} ${base_filename} && \
	rm ${base_filename} && \
	mv "${base_filename}.gpg" ${base_filename} && \
	gpg --symmetric --batch --passphrase ${PSWD_3_LEVEL} ${base_filename} && \
	rm ${base_filename} && \
	mv "${base_filename}.gpg" ${base_filename} && \
	gpg --symmetric --batch --passphrase ${PSWD_4_LEVEL} ${base_filename} && \
	rm ${base_filename} && \
	mv "${base_filename}.gpg" ${base_filename} && \
	gpg --symmetric --batch --passphrase ${PSWD_5_LEVEL} ${base_filename} && \
	rm ${base_filename} && \
	mv "${base_filename}.gpg" "${base_filename}.encrypt"
fi
