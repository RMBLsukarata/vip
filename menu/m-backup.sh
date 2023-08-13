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
BZh91AY&SY��}* ���� ����������pD@  `>w�]��,c��TA@RjaM2����ɦ   �hd4 4Jdɦ�'�B2�  �       �jz���=OSѢ@4� �d �`	�� �p  �4444� � �hh � $�����4�&��2i�i������A������S�h="P��OI���i��OTޓO(�SO�щ����@bzz��!�D9�a�8m��[a���8�U0*�4��4���:vd��/��n��ܘ�1��)&�ѾPR	�d�h3	4\5�8�Si �ׄ/�?�/�Iͅ����1%��iW*bњ��w.�]<
�ϸ?j^��#�ְ/��UUȃ�>�����v�w�E�`D:����I�)��G1:�cоjI	@���T*D�����K$$�6��>M�i���b'?ۖ��1��?5�<���i���Ho�~M�C����5�W�P)y�s�m}hx�EӞ�)R�A<�0�;���3��4~����@�dmH�7��rl+��|�ŭ��*3K+�@ǆ���je�m!�Ag���N	~�7�!`���_��v߱7]8�'�?�2Ra$�p'�r.	��և����z���ӏbH�L�%E�89��$���(B��=����_Y�xX<S���Jl�'ࢨ p:��$.�����
Vӭq�FPȇ���>�@'��'^@��g&�(Ї�$�#�?�/���a� �I���g�P�T�$d��b@�KQhZd���R��0�
��t�3��+����,�8�'��h=��aHY�Q7��+M`��L��D��
a�����9�pTA�؅e*�!Ih|	KfQB�<,2�\����ϵ2��AJ-,���t��"ŗ^#��F��]o�$<G���D�o��a�<j�qڈ4굫1�ٌ�%'�,�OF�ۉ��
�Hy�=�sRn"�f�F�8Ԫ�H�H�,��7�n�n7n��j����(�U�@<�<��޾wl> �A$H)������� ~k_�k��\K�в�$]/W7��y���Z]u�k[��,�RI'�S܇�oH2��ь1���_�s~=�[�Ɯ
�@z�1��Vڕ���hkqDu��r2�}X�#D1F�>;���i�pk&V+�SV��/�-	-N缠Wx��r��	�nC����H(P#��*�W��J?f:ܡ��\R$ �E��C �H� ?(�7��in2Α��C�XÌ�\�:E����T�c���E�"�όà
�I�\�c�4�ά�Sƣj��6�,\�!�Q�h["N�#`&��E�w�Sn�/�+�e����
@Jg����f�)L�[&�/�|���q��"W*�@L�0w��i��L���eJ�w%+(!qaV�PR�i���+�\(��(!߃��0������/N����� ����ʛ:�����ekT��m,Z����*�bX����~{�6z��*]���ͦ�MӜo-��;������D�"rb�� �FnƆ�'���2�$���+ �i>W��k�ݴ���pJ<�u�1�-�J};�Y}F3a���l�Yf�ǐ+��`L�,-��$�6�y��q�gM��B�`�40��ӏ#C�(��d(��dw��W2�c��-�ړ{q�����{
h \Q�۶L�Ջw���f�y�b�T�󒒷 Z�	N�Q�� ��ǘ��	�^��#J�J��aJ����^;S���-��n=�$5�$�����О�f<�T�"ʯ�a��B��b�^&��;��`���'�b,�����w8�<��`B���O`�
�n�풘�ǐ﷞#����h(��*c����yM�y<�^�:)ٯc�+I��*_'9w]~�<\�O,֜���ԡ�:;�dg�ʒ��j;+N߫�������k^Gx^c7�#���X���9�@j�Zu���	�X����er�7�Z���B�$�}�כMġ����˰��ؕ1��iM�n���}�PB	 X�t[�0�p��$o��S�~Rx��|F-O=��D ���	�(���b�z��[�Ц�i \A���v�bw^��ay4�uS���z]��X�UhMüt}�^Gcd�Y	�G�$��^0�_n>���~�����M����A���Jf�B�	�.����CS���ji�h���w�c���5����Y�����s3�� g/�J�/���K����w�3.*�D�7�:.���H��<�ufe���+�����C�W���͟zr�Pl��v%�`:!)F�9Q�{�ܴ�V�*�x�`3B�*CQ2y@���]V�{LLJ�l6�cA��8f%oޓ2�ə΂��������06	�� �F~���s�D�v8I���OhP2MOl���8�/eQ���U�u�������`۴�"�h�oHO/�H(EP ��L�t	H�`�)
�P���U-���b��F��E?�w$S�	
��Ҡ