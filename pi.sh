#!/bin/bash
  j=1
  for i  in $(cat /root/ai-telugu/telugu-ipaddr.txt | awk '{ print $1}')
  do 
  ping -4 -c2 $i  >> /dev/null

  if [[ $? -eq 0 ]]; then
          echo "$i " 
  else 
	  echo "unable to reach$j - $i"
	  (( j=j+1 ))
  fi
  
  done
