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
BZh91AY&SYW�T� M��ltFDx���?��ο���`	q��n�vp��>�@C��)4�� AOъ��?Jl�����҇��d� ���M44���# ����M4�#�SM!)�i44 d �A�   Jez��$=LS�x@�24F Ƒ��j�����      4 H�I��� ��e	����x�&�4ڏP1A�^$��Վ�BI)����6x��nP�����=Z��N���[���If(��� ���Y#��w���AvL���q�˭�:Wf�,�q*�ڔY@��e.�ŵf�)��4�9��:��	�)&�(&�4��+~,��=Qe6��$��u�M��o ā���Xb��Ա~��'
���(z��׀Mb'S�)���f��Td����6<\#�Z�=P���8��?�UKʫ,���IsY1ɔW,Z���	k�9͐C��:; ��,D� ��Ò�t�"C$��a��3��Xj��j���*�)�[-w�5/�4Մld��,�3VMZ�Cj(�ZD�2Ȧ�E�Ԍ�����~��_�] mj����J���O�FFW�	��0�Y቎	$U�BWb�­!��J��9Q�h�SYi���\�z¬JFW���}E�m`F��>K���Li���3!#K��ǲf\��%	p���N�b�.�tW	��I+?cň39*�#e��C"ס��=7׎k/�>��ʱ�fN٪~�f�{+~�RՋ�e�P����'fI)K�f�/�g e��5����PJ��)2dUI@�4*��%**$���%�0NbD|����;��g��z��&�s���rs4�э��$x,�F8��[.���y�I�r֨�FkTR �:�����,���UV�mr�ڿm����Y�g���]�__A�8dJ"P�U:�"���`xH��A�tZ��:�����Dȑ�L5:��Q�K��)�yA|
��Fb|B�%`.�CP{>�e����盬��x;')���秔��[G6p_�5%P
���)sĩ=�Q���Q�� �Ww �d2�Eq�^�f�Ō�v�ڽ��2��,�|�	�c��h����MDĻA�ϰ�:N��y8�G|����r!��%)�4n��N�`�҂��w�d�T#�ywA�r.6���P@�U�zns���Pi���,D��ǈ����УE�P)xI��D9�2��LS604�G�۾E�9̊�R��;Xg���i�'m�DL����N�ʸ��m��� �|Ft&�f�T=�o[m��HV�rk(��_4yA�s񄑡��m&oH��+R�M��X���(Dj`G
�h���� �I��o�.5Xdv��MzfubN<�k��CfYDIH[���vL���V�iK@@{$Qe;3A��Y���66�m5�@/)�]��,���������@C CO�I
̍�3�U�wsGu���!�QK6�r����"CO�X��O/����$y�e��r��ND_0r3�����x�M���k9�:1H�
��1c��#OFƿQhqX�	�a �%��A! ��X6 �S��P:��Y �/� ��t�4��3�f"�Z�5�q_�&bҸb8"!��MZY�!Z��I�`��Y9 ��e)4P�!$�S�\/w�y-��O��BI����\�`��!q��d/����M���/If^���`)��0�ko��%��w�"��������{�X-�fӿK#���*��(�4�G���$�\L�DH�ڀΨ��ֈ�_��az�h N��&��R� Խ� �1��/sY �Й�A��V�#���otH�l�
�C��R�P+��ҁ^BY�7 �w{"l�9vk�i'�p�jE�B�JJT��r��U4FD[.a�"�Ph�I��m�-������)+�v^,�\�$b�f�Z�J��Nw�<R�X����,U�R	E&�@Т�*.�uF�s�1�$+�Jxz�"���r����� T��ص6��2ˎ+A�2(hZ��-+�a�����_0�3�Ux�s7����ȑ����t,:�ԗ&H6.'�/P�� �4���;�ܑN$��"@