#!/bin/bash
ssh -i ./sabraroot sabraroot@10.218.1.203 /usr/bin/sudo /bin/systemctl stop pic-api-prod
rm -rf /var/aspnetcore/pic-api-prod/*
rsync -avhp --rsync-path="sudo rsync" -e 'ssh -i ./sabraroot' /home/guevaron/Documentos/naturgysh/picapi/ sabraroot@10.218.1.203:/var/aspnetcore/pic-api-prod
ssh -i ./sabraroot sabraroot@10.218.1.203 /usr/bin/sudo /bin/systemctl start pic-api-prod
