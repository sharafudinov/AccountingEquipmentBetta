   M S B A M L   `   `   `  ���� U  QHitcom-AccountingEquipment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Hitcom_AccountingEquipment.PageFolder%Hitcom_AccountingEquipment.PageFolder  G(clr-namespace:Hitcom_AccountingEquipmentHitcom_AccountingEquipment  ?    9Hitcom_AccountingEquipment.PageFolder.InventarizationPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Elocal3clr-namespace:Hitcom_AccountingEquipment.PageFolder     <local21(clr-namespace:Hitcom_AccountingEquipment       N� Title$  InventarizationPage��.���  � RowDefinitions �� $	��45* ��� $
��377* �.+��� ���#f18e57$��1q� �� CornerRadius$ 5��$��1��._�&   System.Windows.Controls.DataGrid  -     Name$ DgridMyPage��$��1��   AutoGenerateColumns .     
IsReadOnly . $��5q� � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� BasedOn �� 
TargetType	 �� Property
 �� Value��%�   '        7 �� 8   "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��$
 Center=��� 	 � ��$

 auto���� 	 � ��$
 Center=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Номенклатура��   
Foreground �#a961a0   
FontFamily$ Moloto)�   FontSize$ 20Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *97EquipmentCard.Equipment.Nomenclature.NameOfNomenclature+  $  Производитель�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *75EquipmentCard.Equipment.Manufacturer.ManufacturerName+  $ Модель�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EquipmentCard.Equipment.Model+  $' !Инвентарный номер�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EquipmentCard.InventNumber+  $ Помещение�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *Room.NameOfRoom+  $ Фамилия. И. О.�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *
Worker.FIO+  $ Статус�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *#!StatusOfInventory.InventoryStatus+4  .System.Windows.Controls.DataGridTemplateColumn  $# Дата проведения��$
 auto    CellTemplate �� .R��� $ 10�����#f18e57$��1q�$��Center=� � UseLayoutRounding . $
��auto��$��5q�._�(  "System.Windows.Controls.DatePicker  
������ ���#a961a0$��0q�$��Moloto)�$��20(�$��Center=�$
��auto��$��5q�   SelectedDate �� *InventoryDate+ ��%c   '        �� "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(�  $
 auto  �� .R��� $��BtnEdit��-   $ ��Редактировать�����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�
������ $��Center=�$	��150��$��35��$��5q���  �� Orientation$ 
Horizontal=�.+��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $��35��$	��160��$��5q�._�-	   'Hitcom_AccountingEquipment.PlaceTextBox	  -    	 Name$ 	SearchTxt��-
   'Hitcom_AccountingEquipment.PlaceTextBox 
  TextChanged$ SearchTxt_TextChanged�� 	  
PlaceBrush �#a961a0 	  	PlaceText$ 
Поиск�����#a961a0$��Moloto)�$��20(�$��0q�
������  �� 	MaxLength$ 17��$	��150��$��25��$��5q��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $��35��$	��160��$��5q�._��� -    ��Name$ FilteCmb�� �� SelectedIndex$ 0�� �� DisplayMemberPath$ InventoryStatus��
����������#a961a0$��0q�$��Moloto)�$��20(�$	��150��$��25��$��5q�$��Center=�$��Center=� ��%�   '��       �� " ��.��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��
 �	#FF232D3E�� -   $��BtnAdd��$��Добавить��$��Center=����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�$	��125��$��35��$��5q�
������ �� -   $��BtnDel��$��Удалить��$��Center=����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�$	��125��$��35��$��5q�
������ �� $ 10�����#f18e57$��1q�$��Center=�$��Center=� . $��35��$	��160��$��5q�._��� -   $ InventarizationOfReport��$��1��
����������#a961a0$��0q�$��Moloto)�$��20(�$	��150��$��25��$��5q�$��Center=�$��Center=� ��%�   '��       �� " ��.��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��
 �	#FF232D3E.@��� .��Приказ�� .��Акт