#!/bin/bash
#runner for everyday generation reports for modsecurity
echo $(date) >> /var/log/modsecurity/cron_modsecurity.log
python3 /home/leqs/modsecurity-parser/modsecurity-parser.py -f /var/log/modsecurity/modsec_audit.log --version3 >> /var/log/modsecurity/cron_modsecurity.log
fail2ban-client status sshd >> /var/log/modsecurity/cron_modsecurity.log
