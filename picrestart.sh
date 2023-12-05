#!/bin/bash

ssh -i ./sabraroot sabraroot@10.218.1.203 /usr/bin/sudo /bin/systemctl restart pic-api-prod
