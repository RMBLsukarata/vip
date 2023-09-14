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
BZh91AY&SY�hv ����� ����������@�D@��  @ `�L�o��uwW�2�:wn.��D^�����U:n�Z��A$���&�*�O�"OѢ�h�Q�d�y@�@26Қ4�A� 4D	��h��D�L��OOT�O��ɨڀh���4�@z� 4�      2        Jz�&������= Ơ`����H�	�0�R"LFѡ�2i�A�G�� 424 ��� h�D� �4ѡ0�Mɩ?D�ԟ�?)�7���=F��  2Zf$@Rc��lTϲX����<{+�>F���9�V��>���.���}ãn܍�b}�)�'1�7�Y��h^��UUUUUYu*��T#A����gu�2�Yçt�#��w;�q�<�6ɝ�aޭ!�P�0�V�h��ʄ���lV|��H�B��{��,�H�~�⿰Y`�I�:X9T4�_�aV�᪎�!QWJ֭#�<�{�b��nG$�H�>gᗶ�%������g���=+�:�	
�vC��@����H@�w����ړ2Y��8=1�0������9� �,Z��3�@���2B��8Z���*i�e��QBD ZQ�G�R�e�5�㸗D������x�a��/T(LFƴ����G&��gPE���r(t�pU�b+*� [�5��%h�h88s�X�6��}�f�(j�;�]��d۝�O߄z�϶HJǏ;o�����sg���C��-�zb�c��&f@����Kf���m���[�6�1;�+F�>�GxsX"+�>��i�
1�׉�#�pl�Ye�g�x��0C@��6R��k3�<-~{��2�w]�P2,@
xHD��qO'$��� J���D7��}����˱�(Q!8�lɨ07a���<���=�+��~�d0a���{2���& �0P$q�oS\���ܙ���^���f��I�B�����B/�A�6��6׏-<��4]KI�q��W�g�q��<gc��k�T�4��\1;^ͻB��H�_�h�aT�a"P�+!p�$�� ��ח�Nx>�J���k/3��(�q���~�F���8�IA�X���!L��9�����H+H��REG /� �E(�T� E�h>ϲQ~����q�ɍejִP<�~~G���*d ��B�H4�~7aw�;�0<y�.�hyt��4�NsY�$�&`m�$,�E� ثͷ�w�S�L�#�7S��"{����չ-�&:�>�'MTyζ��I ƨ�N�.�,:C�dmp$j��0�v�Lb#j*sY@J��H'��[|�V��M�7�\"�-�L�p�/(��� Hк�Zh�ض�I�bw�3��O��vnA��a$]H�S�9y��e������7�!p@�@���=��!�AD7C��Xj�w�?af�ژ*;,���C�����vS�~��s��td�c ڔ�0te�{t��Q�x��P�tjP��p��'��*�Q��|)���}�V?�����6��Cw�BMI`r(��Ą���U�j��D�躮���H�k	f|L�/9%H�b�������2�@�@B��J�S"���� K&j��Q�6E<-�Oɽu]~6�_�R��(@��v�$�5z5�����>ǓJG��s.����;L���X��j5��D\�,���4���,�Z6̝ز�}e��r3^�x�R�#��,���4c�~��'�]�Xtؾ���l ���_(�X�ܤ�����і��6�V�0DH�Q2�	�v��/G�{�e��&�QBz��\�.��"L��X���%�f/&hf3��q�ً�2O��G`A�dD��x9�ز�=�w�>#gR����u��l6e�`N�+⩷:����9v�9NW���ٳp��(�*�s��`�6�c�+�z����
�0��՟d�t��WQ�+Ԗ��oF���K��Y�V8���E˴�+j�	L�rZ��]��@�b�`�HQ��-˄�4�`��̤�I¹0������+^*�h�w�cηNm���DA3r���� .^�Һ�_#~�G/H�p݅�����	�'"hjN�YlV�E�U�Zڹ�3��i��Z(�����}٧N�O��;L������p�׍)/�	�@����<zm�g���;���^�	�gU$*x��KP�v��Ts���G�&�K��߄:0��
���ҼJ`중=�!�e�����#W��86YX�x��o�9�³-%��:Ӵus%�x�^�V�v^?�3��<��ro�ҩ
8y��	&�A�7:;TP���b�g�~�.��b�Ėd�(�*N|2�����b� s͙ taM$w{.�ٵ�omأ��`�_J��=�v=�� ����9	�AQlS�|�.�bp.
�b#>o�RH�	��m��,�}� q*,V(����	a����ND>�-�d���Q��	���P�e!Z������3���$J�ڐ�wAi���#l�<�Ua�1B�!�S��MS��b�Q����z�6���x��I�����X/(��W8�vL	�bF9.͹o�;Yt[�����3#���9����ҍliE�Q$n&	R�XS�����{e���N��EH�t7GƔ^dj�P�
RRt��\/�95W�$|��M���hb�
�8��&�a��1�G,�=���G�|sH3l=zM.��
k����Md�\SZ�V�?�^@��d�~�L����r
H�Vg�%K�$s{l��G�a���Ӵ���5|��y�+�����f��uD:�e�2����� n>���m<�G�6bbK�ل� �׿����3����vH�f�
�#)?��,�<�P�)]z��}����NQ.yΘ��;�d;�4��I�i[��0)��r���>L�Aө*j8T������ 0�0OC�&��5}Ø�hw��	޵zo�!�6Q?�ȭ\�$z���R�B҄,^�^�1�xM�7H\�ƿU�8�_xx�TQ`�� pǒՍ��<.M���)n�U����R���
W~r<�Qi�����؝!�HB(3�u@��P�9�O����/�0ʓ����c�F��,V��2UKE��
	��U	L0*ZZ��=���dbxg�g�ِBB�B�r� � ����Xl�fg1�)9;��AȖO�+A3�5�ۏ2�~MǠ7˂��k_p<梶]�q��N��3�3�Cfzg��"(+��E8�[��f$㋆ $��MZ��W=�}���g_���8��ǇV�S�v;�y�b@mE_���G,�������JV��.���h=�}2�Q��,/�X��(���L"��d���ֹ�:�pB�I��� �X��`�i�&�U3%��������_I 7�f{�YS��k�*w��~���k�P�ԭ�0��|��r���g_/ry�{�&O��t,V��oZ�;QB��|�����
�;�O���I��	�E�_3�rcT.�������5iY+B2���@F������u��5�?d��#L$r��4rQ8h�،;h<�H^�dI}O�1H�.�����9�����vй
0g�ymu:ς4���Ԣ�(4]T���)�P��)S"�OεB�2(���!�Xo1��71��2��M1�Iv$.��T(�<��y/�P�	K��$�;�; ����`)�v	�)��h�\:k�[�<��I����j
�M&"�%U��|�*-�K��g�v9�M�� <�)֬Vp�=]�[U�s!�$m...3d`���M�\�WU6/�JͰ�2x���4T�4|7��D�@�1`�Ο ^]`N�w��&Qo�3��PV��t�OZׁ��p�V
�#����
����h����yC�\��L��.�ca�"K�O�Ϥ����#��`e��(� ]�{��5 �{�3�Qϵ��{�%IFT�@-��[����k
�0	 �Ik���p��!��@G��ˀ�"Ѐ�H""��PJ!J	wᄕ��ܑN$?���