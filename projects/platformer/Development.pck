GDPC                                                                                @   res://.import/Player.png-3d0801c65bdfc563657cfa304115f1c7.stex         �       `�ٻ�_�5�XZ�L�D   res://.import/TileSheet.png-e71adf112a59e53a454931a1e788a46c.stex   �      �      �M����:�����Tm%<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0N      �      �p��<f��r�g��.�   res://Main.gd.remap P^             �(@Er�#��K�F�[   res://Main.gdc  �      �       X_�r�+Jވ�,k�   res://Main.tscn �      G      kIےiP���.f�   res://Player/Player.gd.remapp^      (       HŊ�C�@p;P*/��   res://Player/Player.gdc 0      �      =�	�\挑����
�@    res://Player/Player.png.import  �      �      "yÈf�5j��6f   res://Player/Player.tscn`      �      �m�l�ɺ��$   res://TileSheet/TileSheet.png.import�-      �      =���l��W�HY5���    res://TileSheet/TileSheet.tres  00      �      ��SdW\�/z�`{1    res://TileSheet/TileSheet.tscn  �D      �      ����ܢl�Xv��   res://default_env.tres  �M      �       um�`�N��<*ỳ�8   res://icon.png  �^      i      ����󈘥Ey��
�   res://icon.png.import   �[      �      �����%��(#AB�   res://project.binaryl      �
      '<���p�D�×���            GDSC          	   #      ���ӄ�   ���������ڶ�   �����Ķ�   �������ض���   ����ض��   ��������������Ҷ                   	                              !   	   3YY0�  PQV�  W�  T�  W�  T�  S�  YY0�  PQV�  �  PQSY`       [gd_scene load_steps=4 format=2]

[ext_resource path="res://Main.gd" type="Script" id=1]
[ext_resource path="res://TileSheet/TileSheet.tres" type="TileSet" id=2]
[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=3]

[node name="Main" type="Node2D"]
script = ExtResource( 1 )

[node name="Environment" type="TileMap" parent="."]
tile_set = ExtResource( 2 )
cell_quadrant_size = 8
collision_layer = 4
format = 1
tile_data = PoolIntArray( 1, 5, 0, 2, 7, 0, 65537, 5, 0, 65538, 7, 0, 131073, 5, 0, 131074, 7, 0, 196609, 5, 0, 196610, 7, 0, 262145, 5, 0, 262146, 7, 0, 327681, 5, 0, 327682, 7, 0, 393217, 5, 0, 393218, 8, 0, 393219, 6, 0, 393220, 6, 0, 393221, 6, 0, 393222, 6, 0, 393223, 6, 0, 393224, 6, 0, 393225, 6, 0, 458753, 5, 0, 458754, 5, 0, 458755, 5, 0, 458756, 5, 0, 458757, 5, 0, 458758, 5, 0, 458759, 5, 0, 458760, 5, 0, 458761, 5, 0, 458762, 5, 0, 458763, 5, 0, 458764, 5, 0, 458765, 5, 0 )

[node name="Hazards" type="TileMap" parent="." groups=[
"Hazard",
]]
tile_set = ExtResource( 2 )
format = 1
tile_data = PoolIntArray( 393226, 9, 0, 393227, 9, 0, 393228, 9, 0, 393229, 9, 0 )

[node name="Player" parent="." instance=ExtResource( 3 )]
position = Vector2( 236, 300 )

[node name="Spawn" type="Node2D" parent="."]
position = Vector2( 236, 300 )
[connection signal="died" from="Player" to="." method="_on_Player_died"]
         GDSC   *      Y   i     ������������τ�   ������϶   ��������Ҷ��   �������϶���   ��������   �������ƶ���   ����������ڶ   ����Ҷ��   ���Ҷ���   �����϶�   �������޶���   ���������������Ŷ���   ߶��   ��������������¶   ��������ض��   ������������������ض   �������Ķ���   ����������ƶ   ����������ڶ   ����������������ض��   ���������Ӷ�   �����������¶���   ���������������¶���   ���Ӷ���   �������ض���   ζ��   ϶��   ����������¶   ����¶��   ����������������Ҷ��   ��Ѷ   �����޶�   ��Ķ   ������Ҷ   �������Ӷ���   �����������Ķ���   ������¶   ���������������Ŷ���   ����׶��   ����������Ķ   �������������Ӷ�   �涶   �     ,                  d         Hazard        died          	   move_left      
   move_right        special             jump        �������?      timeout       dampDash  {�G�zt?  �������?                                                  &      ,   	   2   
   3      7      8      >      A      B      H      S      X      Y      _      g      p      {      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /   &  0   /  1   6  2   ?  3   F  4   O  5   V  6   ^  7   l  8   q  9   |  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H     I     J     K     L     M     N   "  O   0  P   ;  Q   E  R   H  S   M  T   N  U   S  V   T  W   ^  X   c  Y   3YY8P�  Q;�  SY8P�  Q;�  �  SYY;�  �  T�  SY;�  �  SY;�  �  SY;�  �  SYYB�  SYY0�	  PQV�  -SYY0�
  PQV�  �  P�  �  Q�  S�  �  �  SYY0�  PQV�  )�  �  PQV�  ;�  �  P�  QS�  &�  T�  T�  P�  QV�  �  P�  QSYY0�  PQV�  ;�  �  PQT�  PQT�  S�  �  &�  T�  �  T�  V�  �  T�  �  S�  &�  T�  �  T�  V�  �  T�  �  S�  &�  T�  	�  V�  �  T�  �  T�  S�  &�  T�  	�  V�  �  T�  �  T�  SYY0�  PQV�  &�  T�  P�  QV�  �  T�  �  S�  '�  T�  P�	  QV�  �  T�  �  S�  �  &�  T�  P�
  Q�  V�  �8  P�
  QS�  ;�  �  T�  PQS�  ;�   �  T�  S�  &�  T�  P�  QV�  �   T�  �  S�  &�  T�  P�	  QV�  �   T�  �  S�  &�  T�  P�  QV�  �   T�  �  S�  &�   �  T�  V�  �  �  P�   T�!  P�  QQS�  �  �  S�  &�  P�  T�  Q�  V�  �  �  P�  T�  QS�  �  �  S�  )�  �D  P�  QV�  �"  PQT�#  P�  �  QT�$  P�  RR�  QS�  �  &�  T�  P�  Q�  V�  �  T�  S�  �  �  SYY0�%  P�&  QV�  �  T�  �  P�  R�&  Q�  T�  S�  &�'  PQV�  &�  T�  	�  V�  �  T�  �  P�  R�&  Q�  T�  S�  �  T�  �  �&  S�  (V�  �  T�  �  S�  �  �  S�  �  �  S�  �  &�  P�  T�  Q�  V�  �  T�  �  �  P�  T�  QS�  '�  P�  T�  Q�  V�  �  �  P�  T�  QS�  (V�  �  �  S�  �  �  PQS�  �  �(  P�  R�  T�)  QS�  �  PQS�  �  PQS`GDST               �   PNG �PNG

   IHDR         ��a   OIDAT8�cd��#�	�ū�$�8řH1�� |��0 ��^�a��0��,|�R��P��N瓔�5�ⓤ�8 FM 1�m;    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Player.png-3d0801c65bdfc563657cfa304115f1c7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Player/Player.png"
dest_files=[ "res://.import/Player.png-3d0801c65bdfc563657cfa304115f1c7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [gd_scene load_steps=4 format=2]

[ext_resource path="res://Player/Player.gd" type="Script" id=1]
[ext_resource path="res://Player/Player.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 4.35927, 8.57666 )

[node name="Player" type="KinematicBody2D"]
position = Vector2( 456.587, 279.956 )
scale = Vector2( 10, 10 )
collision_mask = 6
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.299782, -0.149891 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
          GDST   �            w  PNG �PNG

   IHDR      �   䵷
  :IDATx����G��[3_��tX>	�$�i��O�7ٓaO�l�>B�`�u��e��a����&::"#"3�+�+>luWe�Y�U�xww��}����5  ܮ�В���-�ݛ��"{���r��~� �K�ʰ�+ScG;/{q���n�~�9*�����zx�s ��:M]? ��~�����QX��  `�'R%q#��v���R�v����Ӂ�'ڹG�3�Iv�:�����K��4���tI�98�߼x_�|�Ż��=��8m/�"O����&�-���X��9{�"X 3���v�|~xP��li�P{9-�����v�>:'C���'�������kV�n�����',�N�VY��mr�kް�S
w��w�=>^:~���_��!wN�۹]��/�~{�`��_z����{���� x�����Z�B��;�Ւ�L������h �����O�������V�{~:�בڢ�K�\B�o�ۓv~��equ)aL�߼xq�T��x���|��k�u�#A�R��<�Zn�������v���J��^8�A뇑.:s�����l�`� �,�x��ui  ��駟�5�<ֵXMG���zW�����z'�w���i����?�� �X��v�����i�?)�����~|<wN� �x�Łp�֫$H55� ��i	0�����Ӏ��l�ٳg�����8�ҐZy\�>�wͅ��Ҕ�� O+����j��p;�htj\�d7WGi�s�xڪ����{���j;��H�|�>~� ?|�� �������mmy/oGn=��%Ww��~K����R���IuDS����`*��z��@"��@2��-T� �\�^<������X�v^-�:r{�R������?��O�I���ɿ }65����R �.8�Z��nKqh���X]_EO���i�iߕ�o��;�.�e$z�ܾ�8�@�ҳ��/A����p�  l�rkP7Bi�T�h�8���b_0�]M���]c����_:X�L���bB&��ʸ�R<�Kb��M��utꜻ����$6 ���2p�@�F˶�3��s���	��]9�_�v�p�׿y`ݻ���|���u�[#r�����ո���e��K��X�o V$�b=7qI��`�*>w��shyC�t[4r��\�4㌛�i���ޥub��k���?�Rb��k���t��-�^�� �U�D˼�O(zh�}*�����]�N��.Qz���߹T�����_r�/ʼ_��-f\��7��������N;/����(L����|nK�q�[�I����^#��\��{	�'�@׍ҝS�+>����%�`[�W�t|*J�O��r����q�?�_z*]:�᦮�l�v�F���er�gI5��&��R����x��/�I������p���^���[_��="�i�e �ְV����z7}�`/ڞ�管m;J�J��S�Z:��r)�k;�)���7kR��w����O��j��S}����A�^�ߋ�M�Y�r/����]� ��K�r�k���޵�:�̕�y�`H�)q�{�O�rn�룠��N@=�o}�/�{�F͇�(}H��(I�����pu�觝Q���hA��c�-�`��������I��ݧO�����5��e���wSn:'M�j���R=8��m�����7��j�2�q\��_� ����7%����?�~-И������K�kn�sE3�^���*Њ��[C�!9Z7r+��}�t�Ĺ�1C������鿇����~�)%�L�ޜ�jﾆ��K��4k�����j�d&����ᗁr�d�Qj��%������>2�=�k�S�ϡ���+�$C9��F�5�u˓&K�>Z)��ԟ��fæ KeX�&�^�S���: �Ը�!�<�s�h�w��B��S?���:j�F �N@�^�sX���E^��ĕo�"����O��fC���)��� ��"K�:޵瑵��fʅ���k3 �I���g}�/S���ipa�7l�eQ�=��вB�eꗞ|bp���������?�x@���%OF%,�گ�h�P�-gS�C�_?7�҅`��۷ �`j�sh��� ,�Pz�H�㕘$Xz��7�5�F���ҿ��)�Mx��������%zҟC�v@+��&Ǽ���׵��j�lC���qy�< �a�޾������x�\E$<k&M��z}�����A���\yڻ��s�������,�.1�:e�:���~��C[���g0w��<`a���v ����-�;cI���?�~i��{`j�׎s��2v�g�VPm$q<��*Y"����C��̆z�߲���ՋX�ӵI�X���[<��ϫ�������:����$z�ߺ������-LVVSj��Fː����^}���l`����?�X~ͦU*��Ԡ�S.ߺtj�����E��w�m
�[��!�U����T�z�\�g�_IN|��G?g�>!(��~����d�������D)i��*��Z��ߟ~j;� 8�t��R���'�5�/�x�(V��sk#X�LCFx���������@��o
�5�oz%X³�Ѣ�%{�/\�p�F��S?G.��W�5�/: �SF%�ʓ3<A�aB����ꇟ a'`��5R��a��^�Юj������������ �6Fm #��"���?Յk<PɝZ8 ���]x
�!5�K�ZK���՟����p��)p��UP2d�ZѨ��~%B_�� OQu� jc ���E��w$õ��B|iB�4��D���[o��&��E�< o�pp�{�.Jh�������ۀ�	���~o����,�Ɇǎfw�)Y�G?�-��f Z�z�������X�3r�N�<v�TM/��k� 9���;���v ����9񞀖���B��K�f�?&��ږ��� ś��*by��Y�i��jj����Џ����|*k��3�+��O���C�m���Џbh� �]�^����n?�E�U@�"ޒie� ��֯��.�|� �Y_�G�@C7�7z��A.�:�����/=헋 �L]�����޼��m��)�D.���%�_�~�6_n�0e�	k�/�����$"Hx�V��|�I��%�tI�=寮�a	_�A�?�0�(O?�8�����K�s�2����5�_sM��^���쏃b�����1]�@��Ⱦ��A�f � ���oW��Ǐpuu��Z�?�7�J����:8��
�)�xww�='N,����ף�������/��B���=�h��`�� %X�� �2��7�Ƕ�������2�����G���2����� ��� �����<���Ķ��ߓ���1-�@������{ rN�b��,�����u�<g�R���A�= ��?���Ѳ���1' s��d�@�_q���9�� N��Ap����	���'��n!fM�%@�����t�\=4���`n`��yt���1�0�`
� ,��
��|LɃ�̘� Z ��cDGs���\1 :P񿯮��|����;A�0X���	�ܚ��y�Œ {'��֏H����a��2��Ap&�%�uP2[x||T��ܪ@d̑%�Ҍ�~.B�sk��j�!fA �}!�	n91�K9]�#�̈%@��5�	3�;� 脋r ()�� Ȱ�4ûn���C;��~ �~�
A��e���{�	�܃�˹A0g.j	��p A0c���98 �+M���2��� ��&i�y�K�xvj�G 0���� ����	3��� ^�{c>�� �"�H�,G���V�#�:�� f̉{���`��#i�r�� 2K�Rg�*8�� �1� �1� �`Ƅ��f��<�� �;��6�V�;�� b	�&@̘p A0c�w���~̙�@� Zi ���`�� fL8� �1� �`�d�����~̕��`-o���E 0�� fL8� �1� �`�,� �����`���.�3�(    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/TileSheet.png-e71adf112a59e53a454931a1e788a46c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TileSheet/TileSheet.png"
dest_files=[ "res://.import/TileSheet.png-e71adf112a59e53a454931a1e788a46c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_resource type="TileSet" load_steps=9 format=2]

[ext_resource path="res://TileSheet/TileSheet.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 7.99661, 7.98401 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="RectangleShape2D" id=7]
extents = Vector2( 32, 32 )

[resource]
0/name = "Sprite"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 8, 8 )
0/navigation_offset = Vector2( 8, 8 )
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 8, 8 )
}, {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
1/name = "TileSheet.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 64, 0, 64, 64 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0
2/name = "TileSheet.png 2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 128, 0, 64, 64 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 0
3/name = "TileSheet.png 3"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 192, 0, 64, 64 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
3/z_index = 0
4/name = "TileSheet.png 4"
4/texture = ExtResource( 1 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 0, 64, 64, 64 )
4/tile_mode = 0
4/occluder_offset = Vector2( 0, 0 )
4/navigation_offset = Vector2( 0, 0 )
4/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
4/z_index = 0
5/name = "Rock"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 0, 0, 64, 64 )
5/tile_mode = 0
5/occluder_offset = Vector2( 32, 32 )
5/navigation_offset = Vector2( 32, 32 )
5/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 32, 32 )
} ]
5/z_index = 0
6/name = "Rock Floor"
6/texture = ExtResource( 1 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 64, 0, 64, 64 )
6/tile_mode = 0
6/occluder_offset = Vector2( 32, 32 )
6/navigation_offset = Vector2( 32, 32 )
6/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 32, 32 )
} ]
6/z_index = 0
7/name = "Rock Wall"
7/texture = ExtResource( 1 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 128, 0, 64, 64 )
7/tile_mode = 0
7/occluder_offset = Vector2( 32, 32 )
7/navigation_offset = Vector2( 32, 32 )
7/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 32, 32 )
} ]
7/z_index = 0
8/name = "Rock Corner"
8/texture = ExtResource( 1 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 192, 0, 64, 64 )
8/tile_mode = 0
8/occluder_offset = Vector2( 32, 32 )
8/navigation_offset = Vector2( 32, 32 )
8/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 32, 32 )
} ]
8/z_index = 0
9/name = "Rock Spike"
9/texture = ExtResource( 1 )
9/tex_offset = Vector2( 0, 0 )
9/modulate = Color( 1, 1, 1, 1 )
9/region = Rect2( 0, 64, 64, 64 )
9/tile_mode = 0
9/occluder_offset = Vector2( 32, 32 )
9/navigation_offset = Vector2( 32, 32 )
9/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 32, 32 )
} ]
9/z_index = 0
  [gd_scene load_steps=3 format=2]

[ext_resource path="res://TileSheet/TileSheet.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=7]
extents = Vector2( 32, 32 )

[node name="TileSheet" type="Node2D"]

[node name="Rock" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 0, 64, 64 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="Rock"]
collision_layer = 4

[node name="CollisionShape2D" type="CollisionShape2D" parent="Rock/StaticBody2D"]
shape = SubResource( 7 )

[node name="Rock Floor" type="Sprite" parent="."]
position = Vector2( 64, 0 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 64, 0, 64, 64 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="Rock Floor"]
collision_layer = 4

[node name="CollisionShape2D" type="CollisionShape2D" parent="Rock Floor/StaticBody2D"]
shape = SubResource( 7 )

[node name="Rock Wall" type="Sprite" parent="."]
position = Vector2( 128, 0 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 128, 0, 64, 64 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="Rock Wall"]
collision_layer = 4

[node name="CollisionShape2D" type="CollisionShape2D" parent="Rock Wall/StaticBody2D"]
shape = SubResource( 7 )

[node name="Rock Corner" type="Sprite" parent="."]
position = Vector2( 192, 0 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 192, 0, 64, 64 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="Rock Corner"]
collision_layer = 4

[node name="CollisionShape2D" type="CollisionShape2D" parent="Rock Corner/StaticBody2D"]
shape = SubResource( 7 )

[node name="Rock Spike" type="Sprite" parent="." groups=[
"Hazard",
]]
position = Vector2( 0, 64 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 64, 64, 64 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="Rock Spike"]
collision_layer = 4

[node name="CollisionShape2D" type="CollisionShape2D" parent="Rock Spike/StaticBody2D"]
shape = SubResource( 7 )
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Main.gdc"
 [remap]

path="res://Player/Player.gdc"
        �PNG
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
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      
   Platformer     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     importer_defaults/texture\              compress/bptc_ldr                compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d               flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/invert_color             process/premult_alpha             
   size_limit               stream            	   svg/scale        �?
   input/jumpd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/move_leftd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/move_rightd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/speciald              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            layer_names/2d_physics/layer_1         Player     layer_names/2d_physics/layer_2         Enemies    layer_names/2d_physics/layer_3         Environment #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres         GDPC