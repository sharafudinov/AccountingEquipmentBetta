   M S B A M L   `   `   `  ���� U  QHitcom-AccountingEquipment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Hitcom_AccountingEquipment.PageFolder%Hitcom_AccountingEquipment.PageFolder  <    6Hitcom_AccountingEquipment.PageFolder.NomenclaturePage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Elocal3clr-namespace:Hitcom_AccountingEquipment.PageFolder       N� Title$  NomenclaturePage��.���  � RowDefinitions �� $��45 ��� $	��50* �.+��� ���#f18e57$��1q� �� CornerRadius$ 5��$��1��._�&   System.Windows.Controls.DataGrid  -     Name$ DgridMyPage��$��1��   AutoGenerateColumns .     
IsReadOnly . $��5q� � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� BasedOn �� 
TargetType	 �� Property
 �� Value��%�   '        7 �� 8   "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��$
 Center=��� 	 � ��$

 auto���� 	 � ��$
 Center=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$% Вид номенклатуры��   
Foreground �#a961a0   
FontFamily$ Moloto)�   FontSize$ 20Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *(&TypeOfNomenclature.TypeOfNomenclature1+  $ Номенклатура�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *NameOfNomenclature+4  .System.Windows.Controls.DataGridTemplateColumn  $
 auto    CellTemplate �� .R��� $��BtnEdit��-   $ ��Редактировать�����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�
������ $��Center=�$	��150��$��35��$��5q���  �� Orientation$ 
Horizontal=�.+��� -   $��BtnAdd��$��Добавить��$��Center=����#e5266f$��0q�$��10q�$��Moloto)�$��20(�$��Center=�
������ �� -   $��Удалить��$��Center=����#e5266f$��0q�$��10q�$��Moloto)�$��20(�$��Center=�
������ 