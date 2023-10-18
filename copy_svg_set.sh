#!/usr/bin/env bash
SVGDIR="/home/georg/www/material-design-icons/symbols/web"
VERSION="sharp"
WEIGHT=300 # 100 - 700
GRAD="0"  # "N25", "0", "200"
SIZE=40 # 20, 24, 40, 48
FILL=0  # 0, 1

TARGET="/home/georg/www/hugo-mod-material-symbols/assets/svg/material-symbols/${VERSION}/wght${WEIGHT}grad${GRAD}fill${FILL}opsz${SIZE}"

mkdir -p ${TARGET} || exit

if [ ${WEIGHT} -eq 400 ] ; then
  if [ ${GRAD} -eq "0" ] ; then
    if [ ${FILL} -eq 0 ] ; then
      set="_${SIZE}"
    else
      set="_fill${FILL}_${SIZE}"
    fi
  else
    if [ ${FILL} -eq 0 ] ; then
      set="_grad${GRAD}_${SIZE}"
    else
      set="_grad${GRAD}fill${FILL}_${SIZE}"
    fi
  fi
else
  if [ ${GRAD} -eq "0" ] ; then
    if [ ${FILL} -eq 0 ] ; then
      set="_wght${WEIGHT}_${SIZE}"
    else
      set="_wght${WEIGHT}fill${FILL}_${SIZE}"
    fi
  else
    if [ ${FILL} -eq 0 ] ; then
      set="_wght${WEIGHT}grad${GRAD}_${SIZE}"
    else
      set="_wght${WEIGHT}grad${GRAD}fill${FILL}_${SIZE}"
    fi
  fi
fi
echo "$set"

cd "${SVGDIR}" || exit

for dir in *
do
  cd "${dir}/materialsymbols${VERSION}" || exit
  find . -name "${dir}${set}*" -exec cp {} "${TARGET}/${dir}.svg" \;
  cd "${SVGDIR}" || exit
done
