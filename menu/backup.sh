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
BZh91AY&SYk��z 3�}� �����������PT@   �P�=ͷb�+��PJ"�	�<�O&�����ښf�&�Q���h��#� 4�F�@Sjl���hhz�      $"&T�M=O554h��������h�i�@  � �hh4 i�hd4  d d@"� ��	��iC���4��2zji��m!��   'D�!:�)����V뒄1)̯���c�������vƍM!�w��+d�w���S�l�o�a��>�MA����ϒ�s���VO����Ka޵K:^�,OXj����0��I�!-*\�v�3J�Q��@��v�X#�`͙B��)ЁX
�����ԣ^�4-� dJs!�-N��a�����e'�9>���.�-��\�>a/������N�?C �*Ĵ��)������T���h��k7�j#��5�n��N;�)ˡ�QbXy��C3p�PS ����~)"�F���	ǩ��O����U��@8� (fn�@�$
E�}��"擾�v�3"��=�f���0 �� ��9_k����7 )����e-(��1��erHW�bL����n�
��x�PB��a�(���qh�q���$�6�2D�?=j1o$l#n�7oq�J�Flu��2�i�skn�"���B�2F�/�e�.t���5)��6�o��%_zh��b046��'*����u�C�W�<���b�7�+��Rī,ԦPX����Tv/����Cj�����G�"�� �� 0�U��n�R���h��NM&t��x3�0�5[����B�0~ޟ�x��$]%�UD��:�w-R��{N	f��bJ[2#�2ʆ����������L m���UF)"�w���!}����K�#����I&����Ḇ.
��OX{Q��ĩ�L�F86���+�+��;��%OF}8$id�/#��)܈0h�eT�M�t�\����$��\��xoS`��@C�emկ�)"F�k1���&��R܂�e��_� 3d$*ӠY�\-1����BqeIu�cc>��m���.P��-[5�Kc��D~�6++�U�*Q�C�#م���U��}�FZR��E���e	#Dʴ $�c��4o�=�t�6��5G)OP��h��kh2j���)1��N0��=��X�r�*j�N����5��ɐ� �^F�U���$�Qn��S��M�a,M���>��NHc�"�8`"�$�v{
9e���!%�
-L��� �*��j�eaFؾ��h[P�U���O�$�S��T���P��Gph��Ap�݉a��Y�%ӷ}���w�YEHi�ug��M�mV�ZѹJ�IF4�*�2Hd��]XȜ(r�>�Q�iȓҤ�7ȋ�$ɋ���b���`�gϴ"E�'�#;x5h-
e�s�d+�_e�K)=3Q�pq��g��B�!0I��!1!	�Q��� W�c�rE8P�k��z