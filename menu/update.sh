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
BZh91AY&SYeM�&  �߀@��'�*����Pso<�fْP�I&j=���SSOD���&��&��i�     #B��T    &L0 (�?
��M?*='�i��   H"R4&�yM�yOS��2i= ���D�
�	x�?/'��56D�B�6	^Z�����j\�k����$	d��%�      i̛�E��X���1�횭7�� s%_���
B�_V����}�)�Ɗ=3���-���iA
A�l��8Y]�Y8p�k%���i\.�.
6�#q�;:� �HHHHHHHHHHHM�4)*#
D�������=�6n�ӡF�����t@��(b~J��x��������>cGd-2���G����jd��y�����5��3P��툎��%�-|ǃ���J!ZQ����z)����Ev��s�7vg1m����*=Lio��y�����$�I<�?�_��������$$��Z5�#`��`���0���F*@fy��<e�
�^�B�)�*���8��u�>��	9�,ҋ`�#��r��HHX�4�!1v�Z��#kA�M]m�{j0�:s�{��"bҊ<Z�Gj��è��3'1�;����A�\���	@�ܣ���!��sCp#��F�&O�]��e.�F��2�SF�-�=C�p�M�6�fRI�zps�HA����99�NS�F���ۋi�I$�M-Dw�51=ۜ�g@�����"�(H2�ؓ 