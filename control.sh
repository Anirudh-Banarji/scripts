#!/bin/bash

USAGE="invalid option. USAGE: {manager {0|1}|gateway|storage|all} {start|stop} \n example-\n./control.sh manager 0 start\n./control.sh gateway start\n"

case "$1" in
	manager)
		case "$2" in
        		0)
				case "$3" in
					start)
						/usr/local/leofs/package/leo_manager_0/bin/leo_manager start
					;;
					stop)
						/usr/local/leofs/package/leo_manager_0/bin/leo_manager stop
					;;
				esac
				;;	
			1)	case "$3" in
					start)
						/usr/local/leofs/package/leo_manager_1/bin/leo_manager start
					;;
					stop)
						/usr/local/leofs/package/leo_manager_1/bin/leo_manager stop
					;;
				esac
				;;
		esac
		;;
	storage)
		case "$2" in
        		start)
				/usr/local/leofs/package/leo_storage/bin/leo_storage start
			;;
			stop)
				/usr/local/leofs/package/leo_storage/bin/leo_storage stop
			;;
		esac
		;;
	gateway)
		case "$2" in
        		start)
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway start
			;;
			stop)
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway stop
			;;
		esac
		;;
	all)
		case "$2" in
			start)
				/usr/local/leofs/package/leo_manager_0/bin/leo_manager start
				/usr/local/leofs/package/leo_manager_1/bin/leo_manager start
				/usr/local/leofs/package/leo_storage/bin/leo_storage start
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway start

			;;
			stop)
				/usr/local/leofs/package/leo_manager_0/bin/leo_manager stop
				/usr/local/leofs/package/leo_manager_1/bin/leo_manager stop
				/usr/local/leofs/package/leo_storage/bin/leo_storage stop
				/usr/local/leofs/package/leo_gateway/bin/leo_gateway stop
			
			;;
		esac
		;;	
	*)printf "$USAGE"
	
esac	
