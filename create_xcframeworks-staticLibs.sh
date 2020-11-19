#!/bin/bash

set -x

rm -rf *.xcframework
rm -rf ./*-Thin

find . -name '*.a' | while read -r FRAMEWORK
do
    FRAMEWORK_NAME="${FRAMEWORK%.*}"
    FRAMEWORK_NAME="${FRAMEWORK_NAME//_iOS}"
    FRAMEWORK_NAME="${FRAMEWORK_NAME//lib}"
    FRAMEWORK_NAME="$(basename -- "${FRAMEWORK_NAME}")"
    echo "Framework is ${FRAMEWORK_NAME}"

    FRAMEWORK_THIN_FOLDER="${FRAMEWORK_NAME}-Thin"
    mkdir ${FRAMEWORK_THIN_FOLDER}

    ARCHS="$(lipo -info "${FRAMEWORK}" | rev | cut -d ':' -f1 | rev)"
    SIM_ARCHS="i386 x86_64" #Only used to substract something
    
    DEVICE_ARCHS="$(echo ${ARCHS[@]} ${SIM_ARCHS[@]} | tr ' ' '\n' | sort | uniq -u | tr '\n' ' ' | xargs)"
    SIM_ARCHS="$(echo ${ARCHS[@]} ${DEVICE_ARCHS[@]} | tr ' ' '\n' | sort | uniq -u | tr '\n' ' ' | xargs)"

    for ARCH in ${ARCHS}
    do
        echo "Extracting ${ARCH} from ${FRAMEWORK}"
        lipo -extract "${ARCH}" "${FRAMEWORK}" -o "${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-${ARCH}.a"
    done

    #Arrays for expansion
    DEVICE_ARCHS_ARRAY=(${DEVICE_ARCHS})
    DEVICE_ARCHS_PATHS=("${DEVICE_ARCHS_ARRAY[@]/#/${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-}")
    DEVICE_ARCHS_PATHS=("${DEVICE_ARCHS_ARRAY[@]/#/.a}")
    SIM_ARCHS-ARRAY=(${SIM_ARCHS})
    SIM_ARCHS_PATHS=("${SIM_ARCHS_ARRAY[@]/#/${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-}")
    SIM_ARCHS_PATHS=("${SIM_ARCHS_ARRAY[@]/#/.a}")

    # Merge one fat binary for all ARM Architectures
    lipo -create "${DEVICE_ARCHS_PATHS[@]}" "" -output "${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-${DEVICE_ARCHS// /_}.a"
    # Merge one fat binary for all x86 Architectures/all remaining Archs
    lipo -create "${SIM_ARCHS_PATHS[@]}" -output "${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-${SIM_ARCHS// /_}.a"

    echo "Building XCFramework for ${FRAMEWORK} with Headers in /include"
    xcodebuild -create-xcframework -library "${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-${DEVICE_ARCHS// /_}.a" -headers "./${FRAMEWORK_NAME}/include/" -library "${FRAMEWORK_THIN_FOLDER}/${FRAMEWORK_NAME}-${SIM_ARCHS// /_}.a" -headers "./${FRAMEWORK_NAME}/include/" -output ${FRAMEWORK_NAME}.xcframework
done

# Cleaning Thin Folders
rm -rf ./*-Thin

echo "DONEEEEEEEE"