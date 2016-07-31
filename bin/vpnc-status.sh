#!/usr/bin/env zsh
# Check vpnc status (for xmobar integration)
# by vovin@lurk.kiev.ua at Mar 31 11:14 EEST 2015
# on Arch Linux KIEHMARCH 3.19.2-1-ARCH #1 SMP PREEMPT Wed Mar 18 16:21:02 CET 2015 x86_64 GNU/Linux
#
# TODO: Find more intelligent way to check

# Check if we have pidof
PIDOF=$(whence -p pidof)

# Retrieve vpnc PID
if [ -z $PIDOF ]; then
  VPNC_PID=$(ps ax |grep -E "[Vv]pnc$" |cut -d' ' -f1)				# With shell pattern (no pidof)
else
  VPNC_PID=$($PIDOF vpnc)							# With pidof
fi

# Assume if we have PID - vpnc is running and vpn is up
if [ -z $VPNC_PID ]; then
  printf "VPN: Off" $VPNC_PID
else
  printf "VPN: On (PID: %s)" $VPNC_PID
fi

#EOF
