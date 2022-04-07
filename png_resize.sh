#!/bin/bash
image=$1
start_resolution=$2
start_type=0

if [ $start_resolution = "xxxhdpi" ]; then
	start_type=6
fi

if [ $start_resolution = "xxhdpi" ]; then
	start_type=5
fi

if [ $start_resolution = "xhdpi" ]; then
	start_type=4
fi

if [ $start_resolution = "hdpi" ]; then
	start_type=3
fi

if [ $start_resolution = "mdpi" ]; then
	start_type=2
fi

percent_xxxhdpi=100%
percent_xxhdpi=75%
percent_xhdpi=50%
percent_hdpi=37%
percent_mdpi=25%
percent_ldpi=19%

if [ "$start_type" -eq 5 ]; then
	percent_xxxhdpi=100%
	percent_xxhdpi=100%
	percent_xhdpi=67%
	percent_hdpi=50%
	percent_mdpi=33%
	percent_ldpi=25%
fi

if [ "$start_type" -eq 4 ]; then
	percent_xxxhdpi=100%
	percent_xxhdpi=100%
	percent_xhdpi=100%
	percent_hdpi=75%
	percent_mdpi=50%
	percent_ldpi=37%
fi

if [ "$start_type" -eq 3 ]; then
	percent_xxxhdpi=100%
	percent_xxhdpi=100%
	percent_xhdpi=100%
	percent_hdpi=100%
	percent_mdpi=67%
	percent_ldpi=50%
fi

if [ "$start_type" -eq 2 ]; then
	percent_xxxhdpi=100%
	percent_xxhdpi=100%
	percent_xhdpi=100%
	percent_hdpi=100%
	percent_mdpi=100%
	percent_ldpi=75%
fi

if [ "$start_type" -eq 1 ]; then
	percent_xxxhdpi=100%
	percent_xxhdpi=100%
	percent_xhdpi=100%
	percent_hdpi=100%
	percent_mdpi=100%
	percent_ldpi=100%
fi

if [ -d "./drawable-xxxhdpi" ]; then
	echo "Not need to create directory ./drawable-xxxhdpi because already exist"
else
	echo "Creating directory ./drawable-xxxhdpi."
	mkdir drawable-xxxhdpi
fi

echo "Resizing image for xxxhdpi resolution"
convert -resize $percent_xxxhdpi $image drawable-xxxhdpi/$image
echo " "

if [ -d "./drawable-xxhdpi" ]; then
	echo "Not need to create directory ./drawable-xxhdpi because already exist"
else
	echo "Creating directory ./drawable-xxhdpi."
	mkdir drawable-xxhdpi
fi

echo "Resizing image for xxhdpi resolution"
convert -resize $percent_xxhdpi $image drawable-xxhdpi/$image
echo " "

if [ -d "./drawable-xhdpi" ]; then
	echo "Not need to create directory ./drawable-xhdpi because already exist"
else
	echo "Creating directory ./drawable-xhdpi."
	mkdir drawable-xhdpi
fi

echo "Resizing image for xhdpi resolution"
convert -resize $percent_xhdpi $image drawable-xhdpi/$image
echo " "

if [ -d "./drawable-hdpi" ]; then
	echo "Not need to create directory ./drawable-hdpi because already exist"
else
	echo "Creating directory ./drawable-hdpi."
	mkdir drawable-hdpi
fi

echo "Resizing image for hdpi resolution"
convert -resize $percent_hdpi $image drawable-hdpi/$image
echo " "

if [ -d "./drawable-mdpi" ]; then
	echo "Not need to create directory ./drawable-mdpi because already exist"
else
	echo "Creating directory ./drawable-mdpi."
	mkdir drawable-mdpi
fi

echo "Resizing image for mdpi resolution"
convert -resize $percent_mdpi $image drawable-mdpi/$image
echo " "

if [ -d "./drawable-ldpi" ]; then
	echo "Not need to create directory ./drawable-ldpi because already exist"
else
	echo "Creating directory ./drawable-ldpi."
	mkdir drawable-ldpi
fi

echo "Resizing image for ldpi resolution"
convert -resize $percent_ldpi $image drawable-ldpi/$image
