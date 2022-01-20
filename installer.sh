#!/bin/bash
# installer to install required programs for the raspberry pi

# Gives out the introduction
echo "Installer to install all the required commands for the raspberry pi"
sleep 2
echo " "
echo " "

# Lists out all the installation packages
echo "The following installer will do the given tasks"
echo "Update the system and install the following programs"
echo "1. Vim - Text editor"
echo "2. GCC - GNU C compiler"
echo "3. W3M - terminal internet internet browser"
echo "4. CMUS - terminal music player"
echo "5. PIP - python package manager"
echo "6. MySQL (mariadb) - database management system"
echo "7. Neofetch - The ultimate linux flex tool for Windows users"
sleep 1

# Lists out all the processes and sub processes the program will do
echo " "
echo "The program will also make the following processes"
echo "Make a directory structure in the root folder"
echo "Install all the required packages in pip: discord, tensorflow, opencv, beautifulsoup4, pygame, requests, pyperclip, mathplotlib, ursina, jupyter"
sleep 1

# If else statement for installation
echo "Do you want to install the given packages(y/n)? " 
read choice

# main if else statement
if [ $choice == "y" ]; then
	echo "Installing the given programs"
	sleep 1
	echo " "
	echo "Logging in as root user"
	echo "Please enter your password if prompted"
	echo " "
	echo "Updating the system"
	apt update
	apt upgrade -y
	echo " "
	echo "Installing the required programs"
	sleep 1
	echo "Installing vim..."
	apt install vim -y
	echo " "
	echo "Installing GNU C Compiler"
	apt install gcc -y
	echo " "
	echo "Installing w3m terminal web browser"
	apt install  w3m -y
	echo " "
	echo "Installing CMUS terminal music player"
	apt install cmus -y
	echo " "
	echo "Installing pip"
	apt install python3-pip -y
	echo " "
	echo "Installing neofetch"
	apt install neofetch -y
	echo "Installing and configuring MySQl (mariadb)"
	sleep 1
	apt install mariadb-serve -y
	echo "All apps installed"
	sleep 1
	echo "Installing pip packages"
	sleep 1
	echo " "
	echo "Installing discord (pip)"
	pip install discord
	echo " "
	echo "Installing tensorflow (pip)"
	echo " "
	echo "Checking if the provious versions of tensorflow are onboard"
	echo "And uninstalling them"
	sudo pip uninstall tensorflow -y
	sudo pip3 uninstall tensorflow -y
	echo " "
	echo "Installing dependencies..."
	sleep 1
	echo "Installing fortrain for raspberry pi"
	apt install gfortran -y
	echo "Installing other dependencies"
	apt install libhdf5-dev libc-ares-dev libeigen3-dev -y
	apt install libatlas-base-dev libopenblas-dev libblas-dev -y
	apt install openmpi-bin libopenmpi-dev -y
	echo "Installing cython for raspberry pi"
	apt install liblapack-dev cython -y
	pip3 install keras_applications==1.0.8 --no-deps
	pip3 install keras_preprocessing==1.1.0 --no-deps
	pip3 install -U --user six wheel mock
	-H pip3 install pybind11
	-H pip3 install h5py==2.10.0
	echo " "
	echo "Upgrading set up tools if neccessary"
	-H pip3 install --upgrade setuptools
	echo " "
	echo "Downloading tensorflow wheel"
	wget https://github.com/Qengineering/Tensorflow-Raspberry-Pi/raw/master/tensorflow-2.1.0-cp37-cp37m-linux_armv7l.whl
	echo " "
	echo "Installing tensorflow from the wheel"
	-H pip3 install tensorflow-2.1.0-cp37-cp37m-linux_armv7l.whl
	sleep 0.5
	echo "."
	sleep 0.5
	echo ".."
	sleep 0.5
	echo "..."
	sleep 0.5
	echo "Tensorflow installed sucessfully"
	echo " "
	echo "Installing Beautiful Soup 4 (pip)"
	pip install beautifulsoup4
	echo " "
	echo "Installing html5lib (pip)"
	pip install html5lib
	echo " "
	echo "Installing requests (pip)"
	pip install requests
	echo " "
	sleep 1

	echo "All pip packages installed"
	echo "---------------------------------------------"
	echo "Do you want to reboot the system?(y/n)"
	read choice_reboot
	
	# nested if else statement
	if [ $choice_reboot == "y" ]
	then
		echo "Rebooting in 10 seconds"
		sleep 1
		echo "Rebooting in 9 seconds"
		sleep 1
		echo "Rebooting in 8 seconds"
		sleep 1
		echo "Rebooting in 7 seconds"
		sleep 1
		echo "Rebooting in 6 seconds"
		sleep 1
		echo "Rebooting in 5 seconds"
		sleep 1
		echo "Rebooting in 4 seconds"
		sleep 1
		echo "Rebooting in 3 seconds"
		sleep 1
		echo "Rebooting in 2 seconds"
		sleep 1
		echo "Rebooting in 1 second"
		sleep 1
		echo "Rebooting now"
		
		exit && reboot

	elif [ $choice_reboot == "n" ]
	then
		echo "Reboot cancel"
	else
		echo "Aborting"
	fi

# main if else statement	
elif	[ $choice == "n" ]; then
	echo "Aborted"

else

	echo "Invalid input used...aborting"
fi

echo "Program complete"
echo " "
echo "---------------------------------------------"
