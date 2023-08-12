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
BZh91AY&SY�O@� i�vp@ }�����������`[}>����v7Y�:WhЩ  HV`@������L�b	��	�$6Hi�4m ѧ�4���4	��dɵOT���b�@d�����j��F@    �i�F��Ѡ 2i�� �d 4�h � HI��?Si&�H�jz�4�� 4    $D �ɤɄ2M�#hhM�)���4hmG��OB�Cʰ (�"_�Z�������"J�ه��On�JL����[^�l�oWU5����S�]Nx��}��ԍ�
Ptn }v_!�og[L^ i�����o�%ذrD�����|}��>,A��UuT,u�0n�ݫIfm��r# r���
�:f�f����q�eU��$�/��kf�C��*��[[�;]�1��FH��e����~@�ڞ~�����53�Tu.��v��+ýi�S�Y�1��S�>�Ȳa�m+kȩ[��.og$��{�����X�G���=#����!��L��e��S�3|�uǬ\��R�S<PAۡz=-K$w��6n��a�$��l:~�Ԭ���[���֢AM��H�n����M͓��seb|�G��LkbGg��2���vD��~~ӈ���OB��K�L (�=Y�/qZ���^��|��=o��`�����P?N]m.��%�U�߾0c^���+S�e��H�<+I<�x%S~�W=��H�D��G�����~=�R��T��;������w�:��m�D�3��e&[�P�3vw�����a4dFH`�jI81��tq���� ���>�#�'�)0s�Z�8h� W*��*"��<l鮅����h׽�$�.H�'��� iV��rU�+1����XuX�6Y�yb #̈��ʺ�^p�{X��3�wJ���'�+  2�V�M�*���o�+�:9��c�e|�M�0�ū����6��'�"��K�
�f!ÿ�.�/��ޠɂXG�2�\�"��B���hS�bX'L�� �(�Ύ��+F6�������#���0��#���L'B��v(Ԛ�|�(�I�@�u�tԦ�{u*Jm�e���H����4���~ `���.��v�F@@4i�8}q>ŨE��㲪z�w/1��I�~�� �\��2#�S�����g��v8悲�u@��Qy����onp�	@x�`��m��*�"")Fxm&�p�/����>u-�ײ6��#�-s+i���+�R-�T�|c�v�q��5;PK�払TtFX���i�`䁶6���Pw46p��Z��Ŷ6��0��fA�C�>:���+���fdp.$5b�ʌ#���E:[�������DM��Y�,[�&Qh5ZW�Ix0��1В�m(=�*�M44guJ!�:��cD!��w��Z��h�#U���G�s4�>.�W���]�nw�������d����3
��NL͵����p� g6��}=�,~�A�pl#:o
o��=���V��%+�^�]-�iAæ����:L�V���&z`	 �z���78�D�����=��Ҕ�j�T�gvW�A�������3D�����
�`	�C����z<�F����������B���L�㩜��<ݓ��4X�F{�J�����@��C����K�~�E�$�7OW�t��R;���F�Q��~�8�	Ń��@hȚi����.R2Z���-�kvd���/���U�,��{ѡ�d�/���Ms�/�2�$U��Z�m%�0<Ƕ�!'E�C�0�;x�N�i��	7�e$��FҒ�ɀ�[ *;R7�tLq��P!ſi����è��6\�{愌,N��D�+BaX�y���Xj,�/F��k<4hn�y�GM�������H��v�fRx������$%���ƨ��iJ�����ň�8ӯ��\���z�(ϋ�&����`1�ے`�4��{�l�g�Џ�k�� BȐ��2%�:�\��ǭ�>��VB`tN�G��d��n$���"$K��ŵ���z�JYrDwm��Gni���l�ѩd^SB�MO��d�8��%��w�ml�0c|����1�!@B�mCC�O�]�J�X�8��=��:��I/Pő�R$�y�E���(#gUA�?L&�!W�a-�2*��
$��pz�}SO�1���h�E��ECd��ºFU��n� ���ӎ�l:�a�C�A��T����,Vӂ�62�Bކ�U� �okpv�^;$��[`�e!�Y��#��ya���yӱ$U�o�:֢Goi�.����1s��'����(�f錩&12&�n���E]^$��e����45u� 
�P塞7�lm�)�<b�t�����?k����҅�J���Z�'V��.�3�!4�S���v�x��uB5^�@u-:ŧ:��u�S�4�23V�s�O�UL	�%ȁ�=?EmE����?gm�۩(�~��.�m�� !�Ɉա�@�� :y��������#Pd���z��]sk�P���h�m��ݢX����^���q����My�\ۋ�O���}Nc.�LH�j5�J/��#G^a�-.U�w| 10m6m��7�%Գ>(�FґV6��V�4*i�Ю�)S�%)Q"H�@$v%
d4Ta���RM638`T�<�Z'|�GPR��E�CyV�I�a��c*E#��e�i�먶uh��� d��&jj3���i���	�c_k���5�����M��� ;��e�K��-��6�(��[-P�B'ē���ן��*.\�daQ��5�v8��
~b/sܬ�����T7Sõ"V~�J�[b���+��lؾ\5[�ЇJI0��U��Ly26P454 o�e���+XJ�V0m�Y�t4�*�	�jlJ�
K���p�PXa��~����Sne���2H���Y)�M޲�L!j hB�zY�\Z��k$"|o=G>6(=򼇹��*�-��B�ڈQ �FY��
���-D�2ZHy�Ed]X���͒u��b�5��TZ:p�=(�T��Xi�T�RrJr�z��.E�2�FZyI.�-�� ���Z�����]ƠpZ~�At6pb0��
N�0�ᚺ�4`&�XXM��V���ûbȳ
�ɏݟ4z
l��dJ�C`��>T�@�[ )bjf��}� J��F�ɤC.����L{qaOp\bA�Gb<i�~��#H���P.��L��r�G��!W��$2h(h$�b8x�dr<�"�����޸��1� ���hΓ&Kx2F
Ŷ����ߖ��ߋ�'�k���5r���'���4�R���ǅ"!I�"���Pu��=E�-:�V�8m��_*B�X��ʦ����ŁM�@H�IV�M�b�[�L҉b#rFj�N-�^�-"�f�j�B�$�M]WL��܀�m.��V�Q��������`R��jP5K^E�;��b�փ8.B��h�Ox�MZtF=|*HH!�P�)�9 ��l|�N�i�}����,y�zIۺ���1��D`j�*��������lk"�]CMrA$�q8ё3�	UF��	J��n�X�JD2L��3Cw�j$��t.8حn���wQ�Dd1�D��_4��Zّ�`ItR���	@|���X�t�H�j�rs?��}�ﰳ����D��IŞHpn�$�<s�H�/Z֊PQ�ܵd�%���G�]�s�-RWL��P��)M�j�^0�P�Ҏ.F$�adaXJ�,Yl%e
22C)1���%�T�e��'yZIU���	�2(���2Ns�\�5(��Vj�e��?��r�2Ր�9V��L(���Ѓ����]mx�[�:�����G����n~;T}K�U��[���A?����9�}O�*�����z�-`�~��;��.\�<Ug��+� �k��B�䥸<ӒF�m���Q���e1��qs"
����0Q�����H�������+�d�b�u}AԆ��88��c�1���fF����@�� ~z�*��n9��|�#.&�;�k����H��n�f���rE8P��O@�