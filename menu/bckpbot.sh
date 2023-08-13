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
BZh91AY&SY�ǒU ��g�� ����������@D@  P[�u�.s.�խݳ	DDL�M���=O�@4      T��L�&SڍA�����  O$ 	 B���i��=M����C�4OQ�h �i��� �C@i�  	M)�d���覘��0�Q�'���z��S����cDW���Ϥ���v�y�*c֧�zRt�bu�j?������q��8���,�Cy0g��B>$�|�H�~�'|�r�$Q;eg�NR81���B�3r�;dk��AZ�y�4o�SD�'�<n���.W�y�A�2�1+%ɋ^}R�O����p�!{��;�;.S�dG�gdL�r�Ya�v�W���㈬uR-���c����4��H;��`b��&*HC]1��6�Ǿ�/�,���w#W.K/ �h��i�0Ў�:9@��vc��+�3FL}��V�La�*�s�ED���	�Z�aVV�
Kl�J�R�HgKĔmx�D�(��t`��`���$�BEK%BV�p�9X�i�k��	_���Ahj%�����Spao��cT-���p��F��jsx�,$��8V�`��\��+H�T%���@�]�(M�A�b�5���O>Y����!��F���d����z��buwU���,N�>�#�9,i���)��:���w����|D�e\)��2VZF6��u;jոҽ��Ԛ�����bR.z�e!!X
���)�
���D�d��	���n����7 ��X�.�6�9�i���ʔ��k8��&V+xj�ƙY��s�-e��
�i6A������Vv�/Ы�W���4�p��H0�hi*�=P+QDd�x��au�K�j_R#bJ�Q��6���e2��)?]<�{4hFrP�a�^Y���0a��#~��-��L���67�<c�h*�(�b9���)*�e=��č}z�d��9�y���u��%�j*��6�V�>&$])S��vePhBAV(%"���Y��^"��vF�ٮ���m4�E'����P\4b�p�%r���&�$A&傉L	�P��IR��ۉ��a��Hl%��US!X�ݏ�PB`1��iZ@Z� ��U�_��i@FcN��bH6�}��pBH`�H`q���LL!@d\&@A�]��BB/IT