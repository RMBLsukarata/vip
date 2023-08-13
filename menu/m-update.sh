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
BZh91AY&SYpn� ��E�@ ���?�������@�D@0  `���!��{�/^�J��k!��&F�L   FOPf���L4hѦ�FC A��  4EM=!�4b@ �i��4h@�?U)OG�H��M�A� h    %M L�)�i��4 M �  b �Ad�6�OSj4�'�H�#A��@zFCA��H�X��1@`,t���T�9ǳ��EI��H�B�X��H+.)Ki��/�1�|���{_I0���[���&��i4U�!��5�!t�������qf7_�7U/�bSe۫�R�J_2Տ8�T����k��/S��۶5�&���U�ƻ%w��)y�\F�"�c����E����F�i~��Y��V�Y�ǩ2U���@      3u��W؛����b�kI����X�0:e\s�2!!�U�k�C�51V,S8B�!��Zi���֙��!L�ZB,ќ������C�~�����6.&?�Yvg}G~��%��D�£1�]�홨��4�����Wt���Q��p��h0�  ��zz��ޘmq���m�k�J/��Q?�@(B=���Xi�P*����D�X"%m�H~��kCC.0�{ã��	�	U��[�rʣV���F�?��̺���h�UЄ!B�a*��ʒ��p�����P��������0؆`�S����oe1��y/����@l�Wt��U���f1b�۔w�;}���xI���?��Vh�T`88\:���� /5�&��vM���!n�X+A^P�-5�^Э�	����3C��
�2.9<U���F]e��9��m�yP�C���q��y�~�-o����"���E~�xl���X7�ps'����\C��
m�Ck�#p���lI)��Jcě�*����IsfxEu�yK��] ֑��[�e�@�^Q�c��u������;#ć�:��o3{���I�$���
��*X=����T�Խ\U�|uؼ����?|��0�5A\�鼌*x���IU\	�d���i^Q^KA2���Vw�zE{U�gq�@��T��2ܨ�q[�mmٽ���s]�'(�/PA�A���7q\�2^Na]�골V��.��b������5�
�J��i��ުx�WW]���c�1�c�1�a�1��}b+�v�x��w]��!hT$$)E9�Q�t[ƥ�����=��ژ*�+zT h���<q�Qp��^T��D����S�!L��.γ������(�A])�����j�q%eHCT���X��^A]�V��m��v;8���q��E��}f�U�W`��=�ރ22:(h55�Ы����+��<�X�Gб���m�s,l�\���o�HKq2hTm����+x\ԁ�4��⼉���W1�v`���1�c߶�I)�z�t]��Is��}z
����pȄ�I:�Eh�Рo��p-�^�  J�Kʪhʪ˹��oS�߂�[[����n�T>i��|�!�s�!��f=�{ 4��rE8P�pn�