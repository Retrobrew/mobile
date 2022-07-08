#!/bin/bash

if [ ! -d /home/prod/www/android ]; then
  echo -e "[\e[31mERROR\e[0m]: /home/prod/www/android not found"
  exit 1
fi

echo -n "Copying new APK... "

LATEST_DIRECTORY=`date +%Y-%m-%d_%H-%M-%S`
RESULT=0

cd /home/prod/www/android 1> /dev/null
RESULT=$((RESULT+$?))

mkdir ${LATEST_DIRECTORY} 1> /dev/null
RESULT=$((RESULT+$?))

mv /tmp/app-release.apk ./${LATEST_DIRECTORY}/retrobrew.apk 1> /dev/null
RESULT=$((RESULT+$?))

rm -f retrobrew.apk 1> /dev/null
RESULT=$((RESULT+$?))

ln -s ${LATEST_DIRECTORY}/retrobrew.apk retrobrew.apk 1> /dev/null
RESULT=$((RESULT+$?))

if [ ! ${RESULT} -eq 0 ]; then
  echo -e "[ \e[31mKO\e[0m ]: Failed to copy new APK, exiting"
  exit 1
else
  echo -e "[ \e[32mOK\e[0m ]: New APK copied"
fi

echo -n "Compressing old APKs... "

# loop on all folders except the 10 latest ones
for folder in `ls -d */ | sort -r | tail -n +11`; do
  folder=`echo "${folder}" | cut -d'/' -f-1`
  tar -czf ${folder}.tgz ${folder} 1> /dev/null
  if [ ! $? -eq 0 ]; then
    echo -e "[ \e[31mKO\e[0m ]: Failed to compress ${folder}, exiting"
    exit 1
  fi
  rm -rf ${folder} 1> /dev/null
  RESULT=$((RESULT+$?))
done

if [ ! ${RESULT} -eq 0 ]; then
  echo -e "[ \e[31mKO\e[0m ]: Failed to clean old APKs, exiting"
  exit 1
else
  echo -e "[ \e[32mOK\e[0m ]: Old APKs compressed and cleaned"
fi