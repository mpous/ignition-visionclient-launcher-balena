#!/bin/bash

export DISPLAY=:0.0
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

##Launches an instance of the Vision Client Launcher
# Get the location of the script.
REALDIR=$(cd "$( dirname "${BASH_SOURCE[0]}")" && pwd)
VERSION=1.1.39
FIRST_ARGUMENT="$1"

echo "Starting the vision client launcher script..."
echo "${REALDIR}"

# Logging if error
LAUNCHER_LOGFILE="${REALDIR}/../visionclientlauncher.log"
LOG_MSG="ERROR [LauncherApplication           ] [$(date +"%Y/%m/%d %T")]:"

if [ "$(getconf LONG_BIT)" != "64" ]; then
	if ! "${REALDIR}/../runtime/bin/java" --version > /dev/null 2>&1; then
		echo "${LOG_MSG} 64-bit OS not detected. This launcher must run on a 64-bit OS." | tee -a "${LAUNCHER_LOGFILE}"
		exit 1
	fi
fi

if [[ "${FIRST_ARGUMENT}" = "--version" ]]; then
	echo "$VERSION";
	exit 0;
fi


echo "{$DISPLAY}"
#while [ ! -e /tmp/.X11-unix/X${DISPLAY#*:} ]; do sleep 0.5; done

#APP_DIR="$REALDIR" "${REALDIR}/../runtime/bin/java" -jar "${REALDIR}/launcher-vision-client-linux.jar" "$@" >/dev/null 2>&1 &
java -jar launcher-vision-client-linux.jar $@ >/dev/null 2>&1
