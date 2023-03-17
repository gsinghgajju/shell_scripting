#!/bin/bash
cd
echo "hi there"
echo -e "line1\n\nline2"
echo -e "line1\tline2"
d='date +%m-%Y'
 
echo $date
echo "$(who | wc -l)"

echo "testing"
echo -e "\e[32m I am in \e[34m color"

aws ec2 run-instances --image-id ami-05afd67c4a44cc983 --count 1 --instance-type t2.micro --key-name abc  --security-group-ids sg-04d6f37e1d3fd1d34 --region ap-south-1
aws ec2 describe-instances --region ap-south-1 | jq '.Instances[].InstanceId'