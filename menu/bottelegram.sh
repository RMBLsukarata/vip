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
BZh91AY&SY�]� S_�u������������PD@  `o��TFLM  J S�MOI�ѩ��3P��zC@ш�4OQ� d�D�xК��6�        � ��hCM2��L����� h4 ��L�hh�  h � �� 44� 4�� $&@S�&��解M��O"zF���=S���hmL��*(��U�w���Q�r�Y��&����E���+���ҕf px�����L��'a6g��_ǂ �a��g0�������E:sU�<�ɷ�ƴH���r�=����]�ʛP�I���='BC�C�{�8�kB�%i�:�%>cKQ�N��A� ���_Q����*N��9%���,3F$䊫;�(.�?9���5%"�_ܗ�CL��S��Ta\ȫ]�R�r�/�w4ϖ�D�Y,�$��\�uK߱�Q<zƹQ�O˯��
df��"⽩qף9q��'#��@Ȥ3�.7�MJ {���@�
!R���>�U_��p�8w�@�z�f]���?���p�6��_��,	�D�~K�f�QH'���Kn�W�����5�`�8I{T��`�����w9+�,.Z�� ɎgV�XiU�VtM.�R���5����B���3��Ly��� KH?	�~e��I�)}`G����S�S�=<�-E(ވ!��B��l����b 1�q�7@Q��;��$.��_Nzss����8���{=� �W^ب����͜�wio�d� Ę����]y�����k�oم�U���P�3��{��x1��FDl�2 ,KND%8���/	�J����"��1$.�@k�_p�-��@c(�&J�@�>آ�<��v��W%G֍M�ciLI�o�v��%u��0$��Ę0{�j�O� n�oW1�B���6'bS���mK�iB61c�f`ƈ���*o'���� 6���GhӴ��_9��b�,�貅�pݼl;���J5o�O�J��B��6c��5���T�J/[Lu�.��?��e��y�y�[ $�sZ ~��r:�N�6s��\̐o>��ת�L4��`��}�ځ�
�{��w�]Cpph�{
��*�%N�A�v��y̰�L�q=U��o�\�#�] Έ
����u�iAw��4�u�v;0=xp^>��O����1۟R��F�� �Q���b4�a�YK����s������-�����h,3��?�w9����t�Ϗh� �IN�86˃�+����x�&;��{��- �D:G'-w�\V��B�N"p�T��8�¦�ax�i�ݜ�2 hq	�A)y�TFYh�i���&�DAP
t�1�AwN��h�� ����衁�h�Gd�wyM 3O٢��r��1 ϶�������Hp��('8c<X0�1i(�za��B�SǷ�EB�A�,T���k���a�f�Η�[�X/�6�3X��eU�N��@a[9f���lOG�+^w5�.?�Ca���Ÿ�u�����W�X��&Ϗ+�#��g&�2�2��$U��'��(T&�A��β3vj��[mV6����̌/k��T�\� d_�W0I��O廭���s@�v����6�1u�*�JRIu�nZƉ�ؐt2v��+A����=�*G��������3z��ɀ���.�p� ���