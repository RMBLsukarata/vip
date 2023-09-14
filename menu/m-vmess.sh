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
BZh91AY&SY�1� ���  ����������p�D� 0  `!�/�� �P�ȶ�*QT���-�!��P��Z(�
!@�*��QH�	*�� B�H��&��z*~���<���OI��
4di�bi��z�       �h       �      2        �      ��       %��Sħ�A��4M�i����z5Pɚ�S��M4h���
� @F��&Sdja4h'������&�xj�����iA��@���@cCR�B ��!%0�#"�$B @��������Z?N
�ԯ���`l��0'
��,��e8�b�#�<n�Rwb���+��VI�e���UgXl����/��,�r{c�]�a�@aa�����S�%�٤l���Ƥ�������1ɩd�b}j4]C��@PH(����)�c�
!ۿ�X<~���Lu���o��U�M�K��NiJPA&�f��JOَ�����F�-_�V<���	݇��0w��qS����
�j���m��
j��-�����d�u��ܧ�[��7�����L�����Wْ�ֹ'��M�_V	xxy5e\���߳�Ǟ�SN��ύ�y.Ճf��M�;W�[�}s[��ז6m1�WUS6T]�]��ua����.�����V��a3�{�om���)I�i�O�Uy��T�&��,z�NJ���XlT�&)�X����x(�O��gz�GAa�~j1�:e8'��"B�d�oy�q5L�o3�$~׼��Y�Z�57ݢ?�-/e�-*Q#�-+�j�j�k:#80n#�l�/�j6���I6Wʷ�*��P`R'�Q$�}qǜ�d�6P�U��s*H,2)��UO�E�$��j0���%��3K���D�{#X�F�"3k�3PR�����LS$MJH�x��:�M�1���q\�IJE*�����8��Z��M&a��Mm�7���Iᾷp3��$E	H.xa0�=�EA��A�E�E���N�8�rv'��&���T�I)J���Sd��JR�,Թ(V�����~)��x'�{�x飩G�̞b���-;]a��m<��f8RCoX�cq��@�H(:;2գP�MQPp"�Nj0��t�2M�%�O�гU
#|�1'((���'[˽��2}Ni�\���T�������UR�r�,���V�j��0=��2Qq\�j0CIH�����A�����vO�Ԟ��2%s�2�2?ߙc��J-[>��I�=�L���@F�1�|ĝ֛|%��� �Ȇ�����~�z+ qc<Ӏ����0�A|?3���Gi�,�v�k��ޜٽ*S��<l�;4����_S�ɴ�Pr�{c�pg[�Oc@{�R}����bB���p���n c��(�*}M�٪b�$��f1L�baF�e4��rWVQNH0H'�>jm��}01��o���w�`P�f͖M�@�[��K���m�hG���h����a�H�,Ko�IT�&oV{.3�Ǽ�a.��s.�8�^��Ҥ
P8��� �յ0I�͙�ؘ�����H�	�m���v�v,��n��zlK�qS��b��A=�G3UL�溧'="��@g�����T9�hu�Sjd�[������l�ֵRy�N�6�'ȇ�rj�b/��\����whr��ؓt����rԉ���
���6�./����}��F3xc`�+,��bf͆�~�8sL�������Q��)�en&[������KWֺ��F6�|, ��!՝vvw3f�^Y�=/қ)�9M*���^��gٕ6��M�7ţG}H�§�^���t��|$�U���'-�y�d! �C&^�:�3��3 c8F�5.�vFZ��u��R,�J�Z�Ϗ�ۄe���~m���s�.�S�֊���>��2�]�ϕ�p{�nX�`�Ʀ[n�rtH=��;��&��d��\7��gIïf��`N��'�JbOi(�K�L�L��x�Hq)aI-D���%5����z)'����MI(]u#�gFۡ6(Lx���O�`�(�Jb�O�)%�̖DY�0OX>��wU}�Y��Ĉ��qB�J��o�5Hb��:���`ļ����S@�E-B�qB�
��K`���D�*�z�%�V�Kp��ݲ����8,,J��0F�X��E%�)%�(�Q%��Z�?T��~��~��>�+;��YE�F���ك�x:8rm��:�W��$Br2]��	�_�}�!R���ml�� q�������j|��� o�:,�x�V�� �������n��L����L��A{>ӵb>�tK)e�\�,�� �j����QB����p-��D��0O�IC���ֲ4�17]�t�bJlN6~�����Ѷ� ��d�h�#pq�ww�ܱ�p�)d��Q��m��0�*:Ʃ0��du������ໜ�aqH�1]~�G~��&H� ܾq�ebA��a�z�>�>Fz�6�;S�D���(��5ȸ���O�����e���� �I�$�j�r�O�`�(%��֘�{��H�?��V/��_�i�_8l��J5�cI�Pj��;'��\�:Ȣj5oO)l�D��a���w\b�c�1�ؿ2*LVZL^�>��߭�G63�!Z9��%Rҡ	YrȖ3�j��Ȅ	�-���	� D��J|���)���ޚ���� ���	��խl�6��ml�,�M�=SQ�[%;�]6I�u��R�"���5,���o�7J�k��^��V(��8{�3���o������$����U$�I�*��ږ��C�눌�A�e�V0�d�$��=I��v"���l�n�S���%$�PC��/v�l�zN��7c&&���k�t"�4>d��I�_�M#_j��\T�)�BL�>{O�FZ����]�hE0;��2��e�e�$yi.�-Ԛ��*��uU��G���w}��J��Z�""�~zNF�Mi��]���b/��>����0R�Q��F���:Ym��Jx�$1'A�L��T�Гi�M�Ǡ��V�F�`�
T'�P����w�����@��bF�ҏ�I��������]����+'��m5J/��:��0B�J�"��@U�+�P���9Od�p���99Lf�Q'T���l;$t�ObB�GY�#�i&��b/<�Zv�^;U1j�h3���T��������P�a���v�I)�(�-!��UQqB�
T���1�,8�/˿��i�#��+c��i���q� �:��6夒|��-�ϰp�IIHBC�xA�tI�����S���w�|v�RB�Z"��D��"IU5�k'GD�돎��Ã�׫	Ȝ��4Y��0����¼8_�G-�L���{[�.�t�
����	�CB��yq���;㛜�LNOp�b�Rx�r����ڧ�f����O6���zx��LL���4�A��%V����%�bB��d�.�V�H5`[���n���/41t�����٦HHmvA1-��9	\ҡ�s�����6�ܛ�5�c�$6���.�c�X1Kǜ�Kz��IK�̴�D8qM슓�Badߓ���X�V�W(�5'9"n�D�M��u��w`W|`a��32Q��)"`MI�$32z
:]+*T�<���ړX����IuG+j�43�C�\�&I�R�S����*yik���#�gQ�~�l���ַ�����*�L�F@�w3.)4��^<˸j�QJXNMMH�C��G��KK+�u�WS�\$�+�$�6svݷ�[|��T�K0&��=K�]XR��Fqòԕ)5�ڝ��Н��ȳ$�itȤ<�OF)|Ud�&�޳Z"Z?���L�D>��Tޛ�gE��:n2d�)JR�8J��I���N�����qM�OW��ؕ�v����H�ql���{�"zF �}ǭ�E���2>#DZ�C�! �������V�LEڼD�pNs�)	�	c�Q���I�
}3�t��0Y>~�
��ş�������}OK�[���/OGR.�R#�Ek�I���j�l#��9O&Ah�G܈��7��i8�?�<�4�t���C#ꞔy��^~����4��B~ƙ�<I�#��~|ds�D�;]�S=h]&���C�$��? �#����ǂ�Sm���{��l����ʂ��A�RG�1��I�J)��'9}��N+0ǖ�=i�q�aG'�Q ��Ht��G�2|dYD�����p�j2��F�!�֪�`�\��Ӑ�R$¯�ALH��(,�]�r���z'c��v䌤��C����mN�8O����nHh��R#����3��J!��1����)6��X�CƼ�;��
��Uk�E^�["��P��$��)EӒ'��g�k�Rg6E�ܑ</)R�l�ȝCS��Hx��lv��J)JRUՅ�KU���TKT�a��g�D��^O�3/ec�T�bz|����M*�ް�0��bYMOBL$�[c�6�Rb�B���$�4<^KC�r���$PiP9�;�*���P�Z!���!�(�.�V�� ��!b%2���$�>�$�jQBQE"T2�T/;a�Q%'�I�ݗ`�R|Y4�s.���i�|E
���G����d�Ӕ�j����<3e+���&�.������*�J���T���SR�.)i3"�0P���=T*�(�Mw�-T�젶RD Bؠ�*פ�E��Mi֓�"C�B��虥�񶆸���!�#�$	*�H�@�95��E��;�4S�h���0z��>a���e$i�U��u��y ��$�e���\�t������:=�T�J**��\��tt/�QE(��x�Rf�I]iu�G�}I$��p^/l}�9����QX{J���x��?Ǆ���z�{�rGRM/$�dM4�㔞uJ��U�1&������IC��e"Q�oЧ��Ֆ�RJN�	����Hx=N>٭"_T��������8��Ju����]<��uA��tǚ��J�Y&u;u�X�8��q�&sQ�{Z�YK)5%�+�b���t,�`���K�;tTM��K��P�kG�c �!x�%����9�� �JǊ�T��<�)��c4�d�HM�R&3���rYu,���Q�.tN�W��5��CC׃��$�t�v�)�.3=5܅.p���,~���9N�Q�}
���3l���Ym����^9�$���ɯ��d�-)45���R��٣!�"H�֠����T���\��0���8l�!��J�5*Hɿ@P�e� �(�Y�p H�B�	J�+�/%��-b��Z��cX̓D�faD�Hy3|i4&05I4���ia'�����Z��UճCQ&@�ƐiB�A#���(�] D=��T,T�1;(�F��u'���"Lp�i$:ƌ�}JQ���&��a8ì4�*+-%���JdJ#?b�L�o���ox꺛�*�'��O�Le�Q�	�,��5ӯ�86���&�8�M�� �z��[�'9�bo���X��yS�6��4=I���=��I�#�:g��z�dv#�ؓ1��>]s���5��@.i���Mt��j�e���H�"�*��Qu-��Q����7�K�0���>���-{�PH�����(=���(��Ω�i郏?�v�1��fd̲8�����BZi=�Pnn�q$�f�R�E����f�pP'q'�)'�:-�$�ey���tK]��a��Ǧ61cdXrI�KI�C��ׄ�,���BбR���]�qJk��)����&q�˝��s1�bQ�:O��x��4�|�HQB��J��T2G ��4`��B�W�?�Ӗ�� �DP�*yCZKT�6"R�\�	�/y��iyR�[��r�1Vr�eM�c��Ū���0y(��f�.�.�J���t&	4,�j��a���qf���,�*R�U#���"Cz�4P��A��M;��>�b¸بd�?:à�H���Qx	����CRF��nD�Ռ�@�`Pk:�@���q:`膉1L�Нj�ˤS�.����Pb�#���]!=���ö��&������]JL_�}ޓ7wxq���Y#�QeD�I6����5#T'9�F�1SX�"wly{��5�2&���L$����a�Z&���J~��KΗ�LF	g��8���ZH�k��7��¬��'�-�a3��Y>|�8��`�3�A�b�Q���,nn: G`1�����V�>5)���BH|t�1�G�|C�M��X`t���HCޞ�, �G�Lϱ%�T��3��إ�'��Cʘ�M�jb�.K�Y��SQDomyL[x�n�q&r) �������Z4�d��S�RJ�E#6�"w���uB " y�J�E�Y"*
*�$?x��=�RE(�K����X�1
�b*�lT |��A� P�D ��� ZO?�����TA�#h}�O���"�(Hq���