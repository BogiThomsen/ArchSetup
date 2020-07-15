if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo ""
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    
    echo ""
  fi
  NAME=$(bluetoothctl devices | awk '{print $3 " " $4 " " $5}')
  echo " %{F#bdae93}$NAME%{F-}"
fi