GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex )      	      >��sJqf�kr��   res://Bullet.tscn   0      1      m��ڗwmVm�(�2�'   res://Crate.gd.remap�4              =�e�sc�(V������   res://Crate.gdc p      x      ��'y�ZOm[�V� @�   res://Crate.tscn�            �)XkCmG`R��   res://Ground.tscn   
      �      �����<�,R��A�   res://Main.gd.remap  5             �(@Er�#��K�F�[   res://Main.gdc  �      j      �&�N7��_�V�z�   res://Main.tscn P            6�����=*4sᄉ�   res://Player.gd.remap    5      !       ��0�F �qq��dX��   res://Player.gdc`      �      ���H��gC�rOt-Kk   res://Player.tscn   P"      �      3&�%�`$ 7�˿xUO   res://Wall.tscn 0&      5      �a��URMn�d����   res://default_env.tres  p(      �       um�`�N��<*ỳ�8   res://icon.png  P5      i      ����󈘥Ey��
�   res://icon.png.import   02      �      ��fe��6�B��^ U�   res://project.binary�B      s      	��� �`�7�Y@٘        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Crate.gd" type="Script" id=1]

[sub_resource type="SphereMesh" id=1]

[sub_resource type="SphereShape" id=2]

[node name="Bullet" type="RigidBody" groups=["bouce_object"]]
script = ExtResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0 )
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0 )
shape = SubResource( 2 )
               GDSC   
       
   /      ��������϶��   ��������   �����������Ӷ���   �����������Ķ���   ����Ķ��   ����������ڶ   ��������������ڶ   ����   �����������Ķ���   ����������������Ӷ��                                           %      +   	   -   
   3YY5;�  V�  W�  YY0�  P�  V�  QV�  ;�  �  T�  PQ�  �  T�  �  �  �  T�	  �  �  -Y`        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Crate.gd" type="Script" id=1]

[sub_resource type="SpatialMaterial" id=3]

[sub_resource type="CubeMesh" id=1]
material = SubResource( 3 )

[sub_resource type="BoxShape" id=2]

[node name="Crate" type="RigidBody" groups=["bouce_object"]]
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )
             [gd_scene load_steps=3 format=2]

[sub_resource type="PlaneMesh" id=1]
size = Vector2( 100, 100 )

[sub_resource type="ConcavePolygonShape" id=2]
data = PoolVector3Array( 50, 0, 50, -50, 0, 50, 50, 0, -50, -50, 0, 50, -50, 0, -50, 50, 0, -50 )

[node name="Ground" type="StaticBody"]

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )
         GDSC            �      ������ڶ   ����󶶶   ����������Ӷ   ��Ѷ   ��������������������Ķ��   ����   �����϶�   ߶��   ����������������Ӷ��   ��������Ӷ��   �������Ӷ���   ζ��   ����������Ӷ   ϶��   ̶��   ����Ķ��   ��������Ӷ��   ������������Ҷ��   ��������Ҷ��      res://Crate.tscn   �     1      
      2         change_color                                           (      ,   	   .   
   /      7      @      M      Y      f            �      �      �      �      3YY;�  V�  ?PQY;�  �  T�  PQYY0�  PQX=V�  )�  �K  P�  QV�  �  PQ�  -YY0�  PQX=V�  ;�	  �  T�
  PQ�  ;�  �  T�  P�  R�  Q�  ;�  �  T�  P�  R�  Q�  ;�  �  T�  P�  R�  Q�  ;�  V�  P�  T�'  PQR�  T�'  PQR�  T�'  PQQ�  �	  T�  P�  P�  R�  R�  QQ�  �	  T�  P�  R�  Q�  �  P�	  Q�  -Y`      [gd_scene load_steps=6 format=2]

[ext_resource path="res://Crate.tscn" type="PackedScene" id=1]
[ext_resource path="res://Ground.tscn" type="PackedScene" id=2]
[ext_resource path="res://Player.tscn" type="PackedScene" id=3]
[ext_resource path="res://Main.gd" type="Script" id=4]
[ext_resource path="res://Wall.tscn" type="PackedScene" id=5]

[node name="Main" type="Spatial"]
script = ExtResource( 4 )

[node name="Ground" parent="." instance=ExtResource( 2 )]

[node name="Player" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 4, 0 )

[node name="Crate" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 11, -14 )

[node name="Walls" type="Spatial" parent="."]

[node name="Left" parent="Walls" instance=ExtResource( 5 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -50, 5, 0 )

[node name="Right" parent="Walls" instance=ExtResource( 5 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 50, 5, 0 )

[node name="Top" parent="Walls" instance=ExtResource( 5 )]
transform = Transform( -4.37114e-08, 0, -1, 0, 1, 0, 1, 0, -4.37114e-08, 0, 5, -50 )

[node name="Bottom" parent="Walls" instance=ExtResource( 5 )]
transform = Transform( -4.37114e-08, 0, -1, 0, 1, 0, 1, 0, -4.37114e-08, 0, 5, 50 )
         GDSC   A      U   u     ������������϶��   �����������򶶶�   ����������   �������   ��������   ���������������   ������׶   �������϶���   ��������   ���������Ѷ�   �����¶�   ����������Ӷ   ��������   �����׶�   �����϶�   ����¶��   �������������Ӷ�   �������������������   �������Ŷ���   ����׶��   ����������Ӷ   �����������¶���   ����¶��   ����Ҷ��   ���������������������Ҷ�   ����������Ķ   ϶��   ����������������Ҷ��   ��������۶��   ����Ŷ��   ̶��   ζ��   ���������¶�   �������Ӷ���   �������Ӷ���   ���¶���   ��������Ҷ��   �����������������ض�   ��ض   ��������ض��   ���������������ض���   ���������Ҷ�   ��������������������Ӷ��   ���������������Ŷ���   ����������Ķ   �����������������������ƶ���   �涶   ����ζ��   ��������������¶   ��������ض��   ������������������ض   �������Ķ���   ����������ƶ   �����ڶ�   ���������������¶���   ����¶��   ���������¶�   ��������������������ض��   �������϶���   �������Ӷ���   �������ζ���   �������ض���   ������������������   �������������������Ҷ���   �������������Ӷ�   
           333333�?          �         ?             res://Bullet.tscn         jump            run      �?      move_forward      move_backward      	   move_left      
   move_right        shoot      d      F         bouce_object   Z      	   ui_cancel         click                                  (      3      B      C   	   L   
   S      T      _      h      i      q      z      |      }      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )   "  *   #  +   +  ,   3  -   5  .   6  /   >  0   G  1   P  2   [  3   d  4   w  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H     I     J   6  K   7  L   @  M   I  N   Q  O   S  P   T  Q   g  R   p  S   r  T   s  U   3YY8P�  Q;�  V�  Y8P�  Q;�  V�  Y8P�  Q;�  V�  �  T�  �  Y8P�  Q;�  V�  �  Y8P�  R�  R�  Q;�  V�  �  YY;�  V�  �  T�  Y;�	  V�  �  YY5;�
  V�  ?P�  QY5;�  V�  W�  YY0�  PQX=V�  �  T�  P�  T�  Q�  -YY0�  P�  V�  QX=V�  �  PQ�  �  PQ�  -YY0�  PQX=V�  ;�  �  T�  �  ;�  �  �  �  �  &�  T�  P�  Q�  PQV�  �  T�  �  �  �	  �	  �  (V�	  �  �  �  �  &�  T�  P�
  QV�  �  �  �  �  &�  T�  P�  QV�  �  �  T�  T�  �  &�  T�  P�  QV�  �  �  T�  T�  �  �  &�  T�  P�  QV�  �  �  T�  T�  �  &�  T�  P�  QV�  �  �  T�  T�  �  �  �  T�  �  T�  �  �  T�  �  T�  �  -YY0�  PQX=V�  &�  T�  P�  QV�  ;�   �
  T�!  PQ�  �"  PQT�#  T�$  P�   Q�  �   T�%  W�&  T�%  �  ;�'  PW�(  T�%  W�&  T�%  QT�)  PQ�  �   T�*  P�'  �  Q�  -�  -YY0�+  P�  V�  QX=V�  �  �  �  �  �  ;�,  �  T�  &�	  (�  T�  �  �  �  �-  P�  R�,  R�  T�.  R�	  RR�+  P�  QR�	  Q�  �  )�/  �0  PQV�  ;�1  �2  P�/  Q�  &�1  T�3  T�4  P�  QV�  �1  T�3  T�*  P�1  T�5  �  Q�  -YY0�6  P�7  V�8  QX=V�  &�7  4�9  V�  �:  P�+  P�7  T�;  T�  �  QQ�  �  T�<  P�+  P�7  T�;  T�  �  QQ�  �  T�=  T�  �5  P�  T�=  T�  R�+  P�  QR�+  P�  QQ�  �  &�  T�  P�  QV�  �  T�  P�  T�>  Q�  �"  PQT�?  PQ�  -�  �  &�  T�  P�  Q�  T�@  PQ�  T�>  V�  �  T�  P�  T�  Q�  -YY`        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]

[sub_resource type="CapsuleMesh" id=1]

[sub_resource type="CapsuleShape" id=2]

[node name="Player" type="KinematicBody"]
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 2 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, -0.821861 )
current = true

[node name="gun" type="Position3D" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.8, -3 )

[node name="bullet_direction" type="Position3D" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.8, -4 )
             [gd_scene load_steps=4 format=2]

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 0, 0.643137, 0.858824, 1 )

[sub_resource type="CubeMesh" id=1]
material = SubResource( 2 )

[sub_resource type="BoxShape" id=3]

[node name="Wall" type="StaticBody"]

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 0.05, 0, 0, 0, 5, 0, 0, 0, 50, 0, 0, 0 )
mesh = SubResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 0.05, 0, 0, 0, 5, 0, 0, 0, 50, 0, 0, 0 )
shape = SubResource( 3 )
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?��m��4�~X��3���˺����r��
0>�����ݕ�N�#����J�m[m���?$�aj�LO��=�b6��l�m��r�S ��,O��C`f�V��A7Ҫdb7t!mH�,��I�mN���'���	g$i�F�Y�c�o�<�<�nǞF�������}�8#�32@��0�����*_��+�be?A��e#l�rP�I��|��<3fe?��E�Xt�E��e�g�T&E&e�T{ ̢�c�!I��g��L�㙁�I
~����a�h�I����KM�o�@��Wf��
����?sPd&E L>�0�Mo�,r�`��{e���ǁ0F�}-��sA  ���q�B $�¹PW���K?�VOg�-H��N�F�y���)	�0շ� ;u��}���d!n���~�-f�􃓛q~�uSP5{�D�=Z/������5��)#�fO��_r'7�M?`œpm�Op��u���p�%�/����#rŵ�?x�+��A�w1#����%� ��KN.H����a��0A���+��$M�GO������?�������~�q��
��	+?[h�8�����#�lV�O�Gp�#���C������S�x�ړ�� �w�'�eRT��m�M���΍��nSC@s�(��Zg! O���|������poD-�]v�/�B�N�܅�$��܏�m YX��);Q��h���s �:_��	0N7���1�H�`�kx?��@�'�>'�x"S��L�	��
qn�q>�iw�o|��I�[<�y�Q_�|��ι5>0BWE��J��T͟'aX��)�gF��,����#<��%8	���B@y:�s�j�w��$����UK�ͬ����a��_p3���!5{./���K�ӗ�%3{.��}٧�,YL{���#��b�Y�){ǝ' ���;�w��4�m�ӛ�EI,�v���+3Ѩ��L_���L4:<V�e�k���g/��H%�)bI7	B��堳��E$�Ҷ���m"	D�(� tV���$�":={A���S�-e�*�%e�)"Y�~� x�3�|F�~��,ԁ���Te���9E0�2~C@���Te(���-�ے,H�opXo�)�n�VF��+�7�j_�0��U�2�EGղ����u���ecF �}93�3�!`J�o�L�Nb���"�i <����[+xO�teL(r�����΄"��P���`��X<���Uܒ@)H�2>V�G��tMp��7YJ�z�X�e�*r �[r���(��O7�e�2={�|���=��Ap>z�"|�  �e��Ӎ�$Fir�|˙���۾U�[%��|˙{�&/0�p�wQK�f�k%[��>��}�w����y�W{�����78+��^c�P�YةkIo�n��P:<V4j^/:�������cE]uv.lՍ�����b(u�|�r��f5_�݉�~k!@�~ki��d5_��xS>}Q?�{/(�,���n�l @.e�Gܒ�hP1y"��qK���8\ `�l��z=�:�}fBR	Խ�UL��··x@@�. �t��
��Q1y�{=C@	�D0��st�:��h����� �p�99����V�@���!~4�7��J�>��y��鰫�v��t�����8Z<��iߨ^O���B���ݺvv.���ٌ���.��sa�����B��^O�oԃ�q� Լ\ �"�)���=�Q��n��s��F�:���ҡ�;���M���e� W4ʤHG�j�5L��]�r�����b-�"=����ɇX�ۉQo'��x'�eR�+a��d�A�|�k�81�"��4��G=l\sŇ�L��%.�S5����@�ɩ�C���D.h��E��I��S	�7�:_�#�I�rI	�3p�b �[�U5�d�m��]�U�\���k�ٵ�K��ɷx�~��w�׶Vc��U5�  fa�����%%�4$�Tt�h(VFO���@�N����R_�6
<�,�C[��>7�$���2x�^}�V_�y�^e:�QI8�ܰ|O����eRdb��/f�l�a �Yt� �-�� ,���C���{�<vO��@����pg�a��=e�)�=�yS��H8#�'㙽l��W&���"��^6�g����)��pF��� |@�I���0���O���4rͺ;ϼ@x�g^�����5��`|��             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Crate.gdc"
[remap]

path="res://Main.gdc"
 [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      	   Et Cetera      application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �     input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_forward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_backward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   V      physical_scancode             unicode           echo          script      	   input/run�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/shoot�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         mono/project/assembly_name      	   Et Cetera   )   rendering/environment/default_environment          res://default_env.tres               