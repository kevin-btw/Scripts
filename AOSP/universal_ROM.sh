#!/bin/bash

# Create source directory and change into it
mkdir -p "${SOURCEDIR}"
cd "${SOURCEDIR}"

# Set-up Git username & emailID
read -p 'Enter your Git username: ' username
read -p 'Enter your Git email-ID: ' emailID
echo
git config --global user.name "$username"
git config --global user.email "$emailID"

# Initializing AOSP-based ROM sources
echo "------------------------------------------------------"
echo "        Welcome Universal ROM Download Script         "
echo "                 Based on android 14                  "
echo "------------------------------------------------------"
echo
echo "  ROMs LIST  "
echo "-------------"
echo "1) PixelOS"
echo "2) LineageOS"
echo "3) Evolution-X"
echo "4) CrDroid"
echo "5) CherishOS"
echo "6) SuperiorOS"
echo
read -p "Input your choice here: " ch

case $ch in
    1)
        echo "You chose PixelOS Source"
        echo "----------------------------------"
        read -p "Do you want to save some space? (Y/n) " Ny
        case $Ny in
            [Yy]*) 
                echo "Doing Shallow Clone"
                echo "-------------------"
                repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs --depth=1
                ;;
            [Nn]*) 
                echo "Doing Deep Clone"
                echo "----------------"
                repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
                ;;
            *) 
                echo "Invalid Response"
                exit 1
                ;;
        esac
        ;;
    2)
        echo "You chose LineageOS Source"
        echo "----------------------------------"
        read -p "Do you want to save some space? (Y/n) " Ny
        case $Ny in
            [Yy]*) 
                echo "Doing Shallow Clone"
                echo "-------------------"
                repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --depth=1
                ;;
            [Nn]*) 
                echo "Doing Deep Clone"
                echo "----------------"
                repo init -u https://github.com/LineageOS/android.git -b lineage-21.0
                ;;
            *) 
                echo "Invalid Response"
                exit 1
                ;;
        esac
        ;;
    3)
        echo "You chose Evolution-X Source"
        echo "----------------------------------"
        read -p "Do you want to save some space? (Y/n) " Ny
        case $Ny in
            [Yy]*) 
                echo "Doing Shallow Clone"
                echo "-------------------"
                repo init -u https://github.com/Evolution-XYZ/manifest -b udc --git-lfs --depth=1
                ;;
            [Nn]*) 
                echo "Doing Deep Clone"
                echo "----------------"
                repo init -u https://github.com/Evolution-XYZ/manifest -b udc --git-lfs
                ;;
            *) 
                echo "Invalid Response"
                exit 1
                ;;
        esac
        ;;
    4)
        echo "You chose CrDroid Source"
        echo "----------------------------------"
        read -p "Do you want to save some space? (Y/n) " Ny
        case $Ny in
            [Yy]*) 
                echo "Doing Shallow Clone"
                echo "-------------------"
                repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --depth=1
                ;;
            [Nn]*) 
                echo "Doing Deep Clone"
                echo "----------------"
                repo init -u https://github.com/crdroidandroid/android.git -b 14.0
                ;;
            *) 
                echo "Invalid Response"
                exit 1
                ;;
        esac
        ;;
    5)
        echo "You chose CherishOS Source"
        echo "----------------------------------"
        read -p "Do you want to save some space? (Y/n) " Ny
        case $Ny in
            [Yy]*) 
                echo "Doing Shallow Clone"
                echo "-------------------"
                repo init -u https://github.com/CherishOS/android_manifest.git -b uqpr2 --depth=1
                ;;
            [Nn]*) 
                echo "Doing Deep Clone"
                echo "----------------"
                repo init -u https://github.com/CherishOS/android_manifest.git -b uqpr2
                ;;
            *) 
                echo "Invalid Response"
                exit 1
                ;;
        esac
        ;;
    6)
        echo "You chose SuperiorOS Source"
        echo "----------------------------------"
        read -p "Do you want to save some space? (Y/n) " Ny
        case $Ny in
            [Yy]*) 
                echo "Doing Shallow Clone"
                echo "-------------------"
                repo init -u https://github.com/SuperiorOS/manifest.git -b fourteen --git-lfs --depth=1
                ;;
            [Nn]*) 
                echo "Doing Deep Clone"
                echo "----------------"
                repo init -u https://github.com/SuperiorOS/manifest.git -b fourteen --git-lfs
                ;;
            *) 
                echo "Invalid Response"
                exit 1
                ;;
        esac
        ;;
    *)
        echo "Invalid Response"
        exit 1
        ;;
esac

echo
# Syncing repo.
echo "Syncing repo from the source"
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
