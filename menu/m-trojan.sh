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
BZh91AY&SYtE�M ^�������������p�D� 0  `���ѳ]6�{:�����ۺ�%�+�n���"��-5Q���P%��*�"PP)TR�(RS~�M�~�L��I�����餆��FM�2hhh�M10�02A<���6�iOSOSL�����    @                 d	Bh�OSڦ�<��=@=G�4F�P �@z� Id�P���dhT�=I?"���	4��ȣ�xS�� =L�ѐ2Sj6�T�4 F�ɓL"1���$��6��jz2!�=F�4h�?y@@�7D!�W� �#��4Q  )FD�L�",�Eb���?"}	����KG�&7�G�V�`����fk�(5��P*d�
��Cd	n��¼I}!~�	
8Ӊq&�q�ë� @H�r;Qd�lW,Bi��:U%��>���ֹ�{&}<\��1��t��c^���)��
!��Z)ƛs�d��4e����ɏC�K��lչɞ�ۅ�Q�Զ�)y@B�^`��Y�34�:!;�D�ZF�8����{P�AЫe@w�E��;����3�vQ-C�mu�iLBwcK����r���0"�XTP����lTS'kP�:@�^��b��fW��Ve��7>��[��~С��5�5Ҫ������a7t�["�Iآ,h~�.�:����,�E�w{#����I����5��۪d�K/V/*�8��S�N'�)՞YN�ƴ�z#;&_y�0��D��@� BEa�D��?�����(0 Ą%�"�H�� �����n+a�S�,,z#X�5n�
Q4����LS7���{1��ҧ�>�2		 �<���	���c�ejbh��Fj�a��h۹ry�]*�`�~s��,�����,!�� ���6$	 !	ڢ�kX`@�����kO����!��t�G�<��#���齾Tv�V��Km��ٗ�>t�[+A�i,�,���L�)Q�/�"FvLθ���u
�P�/�dk�8�<��T�O���uq�3�����o�����0��݁k[[�I!�a����JeM\E������L������6���o/���������>V2�y�F�bX��:ku6Ԫrչ���C�O&�������$x6v�����hY�o�O��8ï�>����;��7�������o'�l�vϟ�[�������_>���|�g�OvL(d�QfLB�
95OX��<W��v���=�2*�k��0�!��B������EVQ8�:'�����Q�ȩ�c#/^�M��
љ�%x�g*����b��6�x�i��:�S�g:c<S�s�b��<���$�-;���yͮ��C���">9�$ �K��<�:`�{��汆�c�&R|�g	����JH��>\"�0]65B��MbC<�ae�yk����ǂ6rI$��Y �8�F}<`О��j����U4Ût�r�.0�'�rbCl�g,=Yn�C�Sh�&�j�C�@8��R���œ�������	gL�QTD�s2mx�j@�J)�
�hN�E����k4���.�Q@�-���u�o��yS��)�q��|+���Ysk[���e������ztP��x�0ƹ6i#�)�/�ЕU��Qk�a_ �;�=�&# @������I|�V"N4�o�7i$7# e�����u���M-��k��tuC|�I!U�&8l1��,w�x��,��L���ε81A�#�_Ĕ��!h�Η��#��涼�k;���^{�%	��,�t`ğ�0^=!�(��?���Rxn2�cU��Z�ZæMi�AEHu�uғa����U�]~�Z z�y�A�`2`m��W!Aƀ���
cD
q�b�!1�c�� ���-aIu"X����#{�	��@�%%$�U:$z��3��\��h������|*}�4?w�Y��#"�!US�,.+1�v��!q=+����Cj"k��Z����[X���Z���=L����p��?�]u0��.]�;����&&�43Ovi)�$�L��z|��J>s�K�K��jO�I�8��ʲ��3 �Pi�t�D�kC�e~������h��cItr�p���ѩ^c�-z��s�uH��,�*8Jڔ�[Y�%啗���h�K��V�m�������%��=Q<��<
s�Ȩ��Ҹ�:Ӡ\O�|o������O��d�h5�E}��m!�:JU5�T��|X;/H��$�9sD�A��APCGy����Q�n]ts`��.����ru�e$�$!r�~���#{�c��K�'�&�����W���k�_H����,E�����ZI	�h��<o�|_bv�"��cM��P`�+��9R�O'W7@��Y��~�Li�fQ����^͘�a4FX�̤���9���1"8mƻ�x��� �/y��檂>�뉇n�s*���
�$�I5.D_H�O�T.<�C�?��U��$�=I��n+�ӯ��ߊ}9�!*����'m�^K���2���-�4u���$�Z��@E�a �.��0��UQ|���yO�e�їm��޺���B�*��Kl,�wM1qA�+�K���8gc�9��X?	�͌L~e4/��8�K�C�J`�X��)h�k4���G<�-�1H����$�<3GKՊ�"D��J?
�����;&.E�u�c��Jm��=�H�_n��`x����Oڝz�����і�c�����҂c�>�fEGej�->@�Zc�l��1�*lݧ��� �@ �l�@�������I)�Z\TQ�J�RPD�%p��O���#�{�����د{.�| �����Ɖ\��bq�	��L`|�n�O�|C� ��H$��Y�%�$K!%�飕𮜜"H��||��]\8>͚��m/1������O������f�Yh�����v:��2t����$�n��f��69�$N.�I�J�.l���hrꨌo�M.;_f�q�^��"N�i�G���n!G�5R�{�a$J�}."o��0Ӥ5��a�^���'�ǝi��2�kw�nި��Kf��j���Crvo���@����9��L,��D97�;�&�p������&WZ�W��{"iVY�����o}����(O15&�,���QG*ߍ+���Ĵ�d�r�g� u��tcd��Z����������JS2U9���@5�2ۺ��NN��h�_�<K���R.��E?JW%�߆�9�y�a~���+�25�e�6�^��S� ��1����E/)�ᣐ��m��0RUl��E�����[S,g��nM��%��9o�Ƴ�I��"Ghf��V��g=��/�P���>��~A�}�T0� X.z�M_���~Q���> \���EC� ��xIg�^�=ӥ	�	�;��?�?Н+�q��)�YS�5z��h�������YQ�h��˹�Ì#��˛��-^̛?>�v�G/j8�햒'���	��KOpu����4��R��N
��5i�u'J9?��l�̗��bk�Zr�}�EFS�c���z���Z ��`���*	��F
�hΩXN���~ӌ���9O�=Ò��0�dQ]V<�O�d��,�Dщ��1 �3�k����b�Y�����r
d��"����T������$N��S���	����3��~&ȆCUP�(��Z�����\���R�f�۫Ck)6�eW5��wR���˵v�H�&&�J.�'��i�Q��Tg6E��B�u)UU<'0ӈvGnȳ!V�ڕj��r�QJ���w�468��b�)�<�I��4�U��ȓ&�Lh�cc�)G",X�HK��fI�5&��HR�J��y���Ԕ�J�"���.=AH��0��4��,#)���$��%ʁ!M�(C35>2�@X<}T<u\.1=�f�g9�\�wOiB�������c�3M��,���;��0͔�s�j�� ૮bZ"�2!��"�a#�,�r PX�s��XDP�ɕHM�"�䨴�I<�������3K9�z��=D7�y$�%P���X�<*��l�N�P��0 <D�Ž)LCGZ�Ա�6+�Bʎ�oc!�C İ�ĸ>�����䄃�!`�8G0�e�����9ҩ?3�U&�����ȏ��x�8L#�lO|�~�϶����O]�洏}p��2��C�6�1D�K�O��|q{�ƥ�9@^����Y�^<RbO��ۚ�߷}�Zʩ);t'��RMD�p��D>-R7��תx7�`a%N��FX/d��Ӛ?*�L��?i*eT:�=G������rG!���q/IJf����UY,ȳ�l���2�E݆�\Ot�J ��bɌ.L!���I/�#	���Cy���7U2P��c��j����r��ܜ�X���e*��d��	1���&C4t��YV�ie���Tzg�=, n����T+Җ[d�`�/9�c9�&�#Ę����94&�&�E0FE��0}a�7���H&b�a����j�����o%�U�.����,�B/$�$	f/.A%���/*�%�T/X+Y��$U��R@{��#t%q^�Du�#�n�P��N]x�I�@��iB�F�G�SHs+�G�Y#�*{r��oR=�O�
HL�૶Ȃ��4�!op�����nFE�Uശ2L	��I&��,z�7QB���+	`��@�bʾ�U[��uk12p��t�p�1�*�[�N�1���Q(��*�a�|jO:}����p����e�۶E�07'͙�fS�K�9�yٰ%HD �X!���Z��it�L��lE£�N��Y.E�=x�c9 L1�/�ޟ�S�`{��?�QU�9���(����*������˧9��tf����9$�{�S�kP3Q�"@�)��#v䜂joF�IR��\�;t�$��-4U����x�k�QaE�v+`�O��D�Q�4i����2�S���F��8��e;��N�5����B��*�l��G#CC|mMX��}���E��Zr�ј5�,ý
�du��-'�i7�%����%��	��͍e.��:b��W.�{Jx��+U�,�J��Z,dщ��Ŗ�(�I~E���D�L�B��V)��3�p�	�3�T��c}�9T��Mɲ'bi���C��ђ&����&�H���� ���4i��[�f.�r��DGs�R��%+a�Ŋ����4�2Yy�Ν�u�0;S*�OE�=���Ӹ&a���Lv*}�����R$�El��'�>\�]�b7����OJ"5ػ;���h<�J�4���_�L���1(7�L!i���U�����'*f�M�b�>�&��� �7 �	�Ŕ��;����⃸���,K&�0�t��GL >�H&@�.?+��R�^G�=� I	=�:��-!oakL�UP�С,��e��F��(ט8-XBON�|�튎�6(��1���~\Y�EMD��R-R�R}��D ("�`	@0�ZAV+ +��?�N�{�Q(���$b�	iD" D�DD��G5Z	0 ��O��>���T֬V+�	��H����"�(H:"�&�