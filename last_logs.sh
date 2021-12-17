RESULT_LOCATION=~/Reports/logs_result.log
LOG_FOLDER=/var/log/

AUTH=$LOG_FOLDER"auth.log"
SYSLOG=$LOG_FOLDER"syslog"
KERNEL=$LOG_FOLDER"kern.log"


echo "Generando reporte de logs" &&
echo "Reporte generado: $(date)" >> $RESULT_LOCATION &&
echo "------------------------------" >> $RESULT_LOCATION &&
echo "Reporte de Sistema" >> $RESULT_LOCATION &&
tail -1 $SYSLOG >> $RESULT_LOCATION &&
echo "Reporte de Autorizacion:" >> $RESULT_LOCATION &&
tail -1 $AUTH >> $RESULT_LOCATION &&
echo "Reporte de Kernel" >> $RESULT_LOCATION &&
tail -1 $KERNEL >> $RESULT_LOCATION