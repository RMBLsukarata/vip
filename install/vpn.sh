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
BZh91AY&SY{��  �_�|����� ����P	�7�Ĉ
J $�4&��Q�2�=G����4��L��=M��2D�zi�������CC@  4"e=��<�z��h��@� p#	�!�@2 adɄ`!��A�h �)�Hz�����0j�x�ha�hu�k�fm�Iw�^E�i�J�v���U8����@�^Հ�\k*:fjK�����%9vd�Ef�D�v�\� K���,����r��;���4���	p����5�y.F���E�"ɤ�v�X�L/襈�ҝ�p\�Aa�
3�M.s��L}����d��y�v�F��L�x8ZuJ�+36�x��-3fg^�"l�����ai�l�a�ׅ/ b�UA�&9�(��B������N	���0�DȊ�R/`�8�ڝ�#aF�7Q05�]I��!���b��9�'BMrb�gW�������yO/2ei	�F{�P�N;펩���g�0�<� ��}snN�&���Õ��ل{�L��%1섩��I����m�a�����2�(���"dN��_FU���[螠���͍���ƽ��.�M�,8�&չ��2fLd �A��kղ��>��� e�-���f��*X�0�;$;�C�BPA�9D�Se�}�Sߎ1�9���&G\u%�Y�4.�\k���h(L:u�C�A�HJE� ����:Տ&�ܰLr�*�˨'�&VGN���2����S�L��o�8WL��}�HT�]�Uk7J��-�Ȕ����PHx�\Z����X1� �^��"#!�X%��Ii&$�FJ�l�����+ �*]v�c(�F�7u�x7������;V��x��(塢��L�1�k`�ۆNٺ����5B!��B̄�""�zc��� VF�]�ۋv�kɚ�}����D�Ք�_w�Ϩ��p׬	�so��*b�X���L�F�_1ZN��-A2��F`�E���im�<ì��ic��R6�g�7�#��ś��n�%Ie{�5�Ҝ��@r��]�7��5�{�M&O#f��ίi��{s6�0P3��		ܵ��\�#2�Tp���}_F�o��$��+��u&vw��G�%�7Ǵ.z��`�Y�&0��^;��B@�
>�_��H>���|Q34<C�	C$jb�< �I ����dX�	h��9���|gsG��!V8�f�{�݆G�	��ݳR��󸗺�(�orC')��"��d	�r�Y�9�Vi�Z�d��\]�9�C�8�j�k.�$��jyR^���4l�JN;I�(4f��Tn.$G�a��`����Ѩ��l��1a�r,�J���7�c��B�e��I�^-ǃ}������,��yӱ¥����N<�.}WՋKD@�@����(͓ŮV�y���M�{r�82����dr|2���w$S�	���