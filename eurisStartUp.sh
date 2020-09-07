#!/bin/bash

function run_euris () {
	echo "--- Run EURIS files?"
	printf "Enter your choice: "
	read userChoice
	case $userChoice in 
		y)
			cygstart chrome.exe https://jira.euris.it
			cygstart chrome.exe https://duezero.euris.it
			cygstart chrome.exe https://gmail.com
			cygstart chrome.exe https://youtube.com
			cygstart chrome.exe https://stackoverflow.com
			#
			cygstart /cygdrive/c/totalcmd/TOTALCMD64.EXE
			cygstart /cygdrive/c/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Microsoft\ Office\ 2013/OneNote\ 2013.lnk
			cygstart /cygdrive/c/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Microsoft\ Office\ 2013/Outlook\ 2013.lnk
			cygstart /cygdrive/c/Users/caragheaur/Desktop/James\ L.\ Adams\ -\ Conceptual\ Blockbusting\ A\ Guide.djvu
			;;
		n)
			echo ""
			echo "You lazy bastard!"
			echo ""
			;;
		default)
			exit 1
	esac
}

function run_catmap () {
	echo "--- Run CatMap startup?"
	printf "Enter your choice: "
	read userChoice
	case $userChoice in 
		y)
			cygstart /cygdrive/c/Users/caragheaur/Desktop/Projects/Generali/CatMap/02_Reporting/catmap_report/CatMapReporting.sln
			cygstart /cygdrive/c/Users/caragheaur/Desktop/Projects/Generali/CatMap/connectoDbGeneraliAdmin.bat
			cygstart /cygdrive/c/Users/caragheaur/Desktop/Projects/Generali/CatMap/02_Reporting/reportingWorkSpace.code-workspace
			
			cygstart /cygdrive/c/Users/caragheaur/AppData/Local/Postman/Postman.exe
			cygstart /cygdrive/c/Program\ Files/Citrix/Secure\ Access\ Client/nsload.exe
			;;
		n)
			echo "You lazy bastard!"
			;;
		default)
			exit 1
	esac
}

# function run_stimatron () {
# 	###
# 	echo "--- Run Stimatron startup?"
# 	echo "Enter your choice: "
# 	read userChoice
# 	case $userChoice in 
# 		y)
# 			cygstart devenv "C:\Users\caragheaur\Desktop\Projects\Euris\estimation_management\API\API_esteem_management\API_esteem_management.sln"
# 			cygstart code "C:\Users\caragheaur\Desktop\Projects\Euris\estimation_management\Client"
# 			cygstart /cygdrive/c/Users/caragheaur/AppData/Local/Postman/Postman.exe
# 			cygstart /cygdrive/c/Users/caragheaur/Desktop/Trello.lnk

# 			#
# 			;;
# 		n)
# 			echo ""
# 			echo "You lazy bastard!"
# 			echo ""
# 			;;
# 		default)
# 			exit 1
# 	esac
# }


run_euris
run_catmap
# run_stimatron