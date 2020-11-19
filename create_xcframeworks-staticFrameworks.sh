#!/bin/bash

set -x

rm -rf ./*-Sliced 
rm -rf *.xcframework

find . -name '*.framework' | while read -r FRAMEWORK
do
    FRAMEWORK_NAME="${FRAMEWORK%.*}"
    FRAMEWORK_NAME="${FRAMEWORK_NAME//_iOS}"
    FRAMEWORK_NAME="${FRAMEWORK_NAME//lib}"
    FRAMEWORK_NAME="$(basename -- "${FRAMEWORK_NAME}")"
    echo "Framework is ${FRAMEWORK_NAME}"

    FRAMEWORK_THIN_FOLDER="${FRAMEWORK_NAME}-Sliced"
    mkdir ${FRAMEWORK_THIN_FOLDER}

    ARCHS="$(lipo -info "${FRAMEWORK}/${FRAMEWORK_NAME}" | rev | cut -d ':' -f1 | rev)"
    SIM_ARCHS="i386 x86_64" #Only used to substract something
    
    DEVICE_ARCHS="$(echo ${ARCHS[@]} ${SIM_ARCHS[@]} | tr ' ' '\n' | sort | uniq -u | tr '\n' ' ' | xargs)"
    SIM_ARCHS="$(echo ${ARCHS[@]} ${DEVICE_ARCHS[@]} | tr ' ' '\n' | sort | uniq -u | tr '\n' ' ' | xargs)"

    mkdir "${FRAMEWORK_THIN_FOLDER}/ios-${DEVICE_ARCHS// /_}"
    cp -r ${FRAMEWORK} "${FRAMEWORK_THIN_FOLDER}/ios-${DEVICE_ARCHS// /_}"
    
    mkdir "${FRAMEWORK_THIN_FOLDER}/ios-${SIM_ARCHS// /_}"
    cp -r ${FRAMEWORK} "${FRAMEWORK_THIN_FOLDER}/ios-${SIM_ARCHS// /_}"

    for ARCH in ${DEVICE_ARCHS}
    do
        echo "Removing ${ARCH} from ios-${SIM_ARCHS// /_} slice"
        lipo -remove "${ARCH}" "${FRAMEWORK_THIN_FOLDER}/ios-${SIM_ARCHS// /_}/${FRAMEWORK}/${FRAMEWORK_NAME}" -o "${FRAMEWORK_THIN_FOLDER}/ios-${SIM_ARCHS// /_}/${FRAMEWORK}/${FRAMEWORK_NAME}"
    done

    for ARCH in ${SIM_ARCHS}
    do
        echo "Removing ${ARCH} from ios-${DEVICE_ARCHS// /_} slice"
        lipo -remove "${ARCH}" "${FRAMEWORK_THIN_FOLDER}/ios-${DEVICE_ARCHS// /_}/${FRAMEWORK}/${FRAMEWORK_NAME}" -o "${FRAMEWORK_THIN_FOLDER}/ios-${DEVICE_ARCHS// /_}/${FRAMEWORK}/${FRAMEWORK_NAME}"
    done

    echo "Building XCFramework for ${FRAMEWORK} with Headers in /include"
    xcodebuild -create-xcframework -framework "${FRAMEWORK_THIN_FOLDER}/ios-${SIM_ARCHS// /_}/${FRAMEWORK}" -framework "${FRAMEWORK_THIN_FOLDER}/ios-${DEVICE_ARCHS// /_}/${FRAMEWORK}" -output ${FRAMEWORK_NAME}.xcframework
done

# Cleaning Thin Folders
rm -rf ./*-Sliced

echo "DONEEEEEEEE"