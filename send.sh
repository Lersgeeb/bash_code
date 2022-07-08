#!/bin/bash
FROM="banegas.gabriel13@mail.com"
TO="banegas.gabriel13@gmail.com"
ASUNTO="ejercicio"
SERVIDOR="smtp.gmail.com:587"
ADJUNTAR="salida.txt"
MSG="Hola este es una prueba"

./sendEmail.pl -xu banegas.gabriel13@gmail.com -xp contra -f ${FROM} -t ${TO} -u ${ASUNTO} -s ${SERVIDOR} -a ${ADJUNTAR} -m ${MSG} -o tls=yes

exit 0;
