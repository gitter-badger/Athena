#!/bin/bash
if [ $# -eq 0 ]
	then
		echo "Usage: ./mkproject.sh PROJECT_NAME [PLATFORM]"
		echo "Example: ./mkproject.sh foo F3 --> Make an F3 Discovery project named foo."
		echo "Available platforms:"
		echo "f3: STM32 F3 Discovery"
		echo "f4: STM32 F4 Discovery"
		echo "tm4c: Tiva TM4C Launchpad with TM4C123Gx"
		exit 0
fi

PROJ_NAME=$1
PROJ_PLATFORM=$2

if [ "$2" = "F3" ] || [ "$2" = "f3" ]; then
	echo "Creating F3 Discovery project..."
	BASE_PROJ_NAME=f3discovery_basic_app
fi
if [ "$2" = "F4" ] || [ "$2" = "f4" ]; then
	echo "Creating F4 Discovery project..."
	BASE_PROJ_NAME=f4discovery_basic_app
fi
if [ "$2" = "tm4c" ] || [ "$2" = "TM4C" ]; then
	echo "Creating TM4C Tiva Launchpad project..."
	BASE_PROJ_NAME=tm4c_launchpad_basic_app
fi

cp -r $BASE_PROJ_NAME $PROJ_NAME
mv $PROJ_NAME/$BASE_PROJ_NAME.c $PROJ_NAME/$PROJ_NAME.c
echo $PROJ_NAME > $PROJ_NAME/proj_name
sed -i "s/$BASE_PROJ_NAME/$PROJ_NAME/g" $PROJ_NAME/runme.gdb
sed -i "s/$BASE_PROJ_NAME/$PROJ_NAME/g" $PROJ_NAME/Makefile