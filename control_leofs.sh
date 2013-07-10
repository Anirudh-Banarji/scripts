#!/bin/bash

USAGE="invalid option. USAGE: {manager {0|1}|gateway|storage|all} {start|stop} \n example-\n./control.sh manager 0 start\n./control.sh gateway start\n"

case "$1" in
	manager)
		case "$2" in
        		0)
				case "$3" in
					start)
						printf "\nStarting manager 0:"
						/usr/local/leofs/package/leo_manager_0/bin/leo_manager start
					;;
					stop)
						printf "\nStopping manager 0:"
						/usr/local/leofs/package/leo_manager_0/bin/leo_manager stop
					;;
					*)printf "$USAGE"
				esac
				;;	
			1)	case "$3" in
					start)
						printf "\nStarting manager 1:"
						/usr/local/leofs/package/leo_manager_1/bin/leo_manager start
					;;
					stop)
						printf "\nStopping manager 1:"
						/usr/local/leofs/package/leo_manager_1/bin/leo_manager stop
					;;
					*)printf "$USAGE"
				esac
				;;
				*)printf "$USAGE"
		esac
		;;
	storage)
		case "$2" in
        		start)
				printf "\nStarting storage:"
				/usr/local/leofs/package/leo_storage/bin/leo_storage start
			;;
			stop)
				printf "\nStopping storage:"
				/usr/local/leofs/package/leo_storage/bin/leo_storage stop
			;;
			*)printf "$USAGE"
		esac
		;;
	gateway)
		case "$2" in
        		start)
				printf "\nStarting gateway:"
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway start
			;;
			stop)
				printf "\nStopping gateway:"
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway stop
			;;
			*)printf "$USAGE"
		esac
		;;
	all)
		case "$2" in
			start)
				printf "\nStarting manager 0:"
				/usr/local/leofs/package/leo_manager_0/bin/leo_manager start
				printf "\nStarting manager 1:"
				/usr/local/leofs/package/leo_manager_1/bin/leo_manager start
				printf "\nStarting storage:"
				/usr/local/leofs/package/leo_storage/bin/leo_storage start
				printf "\nStarting gateway:"
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway start

			;;
			stop)
				printf "\nStopping manager 0:"
				/usr/local/leofs/package/leo_manager_0/bin/leo_manager stop
				printf "\nStopping manager 1:"
				/usr/local/leofs/package/leo_manager_1/bin/leo_manager stop
				printf "\nStopping storage:"
				/usr/local/leofs/package/leo_storage/bin/leo_storage stop
				printf "\nStopping gateway:"
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway stop
			
			;;
			*)printf "$USAGE"
		esac
		;;	
	*)printf "$USAGE"
	
esac	
