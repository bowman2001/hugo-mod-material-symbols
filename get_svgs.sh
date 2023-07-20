#!/usr/bin/env bash
SVGDIR="/home/georg/www/material-design-icons/symbols/web"
VERSION="outlined"
WEIGHT=400
GRAD="0"  # "N25", "0", "200"
SIZE=20 # 20, 24, 40, 48
FILL=1  # 0, 1

TARGET="/home/georg/www/hugo-mod-material-symbols/assets/svg/material-symbols/${VERSION}/wght${WEIGHT}grad${GRAD}fill${FILL}opsz${SIZE}"
mkdir -p ${TARGET} || exit

if [ ${WEIGHT} -eq 400 ] ; then
  if [ ${GRAD} -eq "0" ] ; then
    if [ ${FILL} -eq 0 ] ; then
      setting="_${SIZE}"
    else
      setting="_fill${FILL}_${SIZE}"
    fi
  else
    if [ ${FILL} -eq 0 ] ; then
      setting="_grad${GRAD}_${SIZE}"
    else
      setting="_grad${GRAD}fill${FILL}_${SIZE}"
    fi
  fi
else
  if [ ${GRAD} -eq "0" ] ; then
    if [ ${FILL} -eq 0 ] ; then
      setting="_wght${WEIGHT}_${SIZE}"
    else
      setting="_wght${WEIGHT}fill${FILL}_${SIZE}"
    fi
  else
    if [ ${FILL} -eq 0 ] ; then
      setting="_wght${WEIGHT}grad${GRAD}_${SIZE}"
    else
      setting="_wght${WEIGHT}grad${GRAD}fill${FILL}_${SIZE}"
    fi
  fi
fi
echo "$setting"

cd "${SVGDIR}" || exit

for dir in *
do
  cd "${dir}/materialsymbols${VERSION}" || exit
  find . -name "${dir}${setting}*" -exec cp {} "${TARGET}/${dir}.svg" \;
  cd "${SVGDIR}" || exit
done
