#!/bin/bash
ssh -i ./sabraroot sabraroot@10.218.1.203 /usr/bin/sudo /bin/systemctl stop pic-eventconsole-prod
rm -rf /var/aspnetcore/pic-eventconsole-prod/*
rsync -avhp -e 'ssh -i ./sabraroot' /home/guevaron/Documentos/naturgysh/piccon/ sabraroot@10.218.1.203:/var/aspnetcore/pic-eventconsole-prod
ssh -i ./sabraroot sabraroot@10.218.1.203 /usr/bin/sudo /bin/systemctl start pic-eventconsole-prod
