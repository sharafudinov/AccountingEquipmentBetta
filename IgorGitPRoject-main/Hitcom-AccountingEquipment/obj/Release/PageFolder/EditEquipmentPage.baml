   M S B A M L   `   `   `  ���� U  QHitcom-AccountingEquipment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Hitcom_AccountingEquipment.PageFolder%Hitcom_AccountingEquipment.PageFolder  G(clr-namespace:Hitcom_AccountingEquipmentHitcom_AccountingEquipment  =    7Hitcom_AccountingEquipment.PageFolder.EditEquipmentPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Elocal3clr-namespace:Hitcom_AccountingEquipment.PageFolder     <local21(clr-namespace:Hitcom_AccountingEquipment       N� Title$  EditEquipmentPage��.���  � ColumnDefinitions �� $	��220 ��� $��* � � RowDefinitions �� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* �.+��� $��Номенклатура��$��2�����#a961a0$��Moloto)�$��20(�$��10q�$��Center=�$��Center=��� $ ��Производитель��$��0�����#a961a0$��Moloto)�$��20(�$��10q�$��Center=�$��Center=��� $!��Серийный номер��$��3�����#a961a0$��Moloto)�$��20(�$��10q�$��Center=�$��Center=��� $'��!Инвентарный номер��$��4�����#a961a0$��Moloto)�$��20(�$��10q�$��Center=�$��Center=��� $��Модель��$��1�����#a961a0$��Moloto)�$��20(�$��10q�$��Center=�$��Center=��� $+��%Дата принятия в учёт��$��5�����#a961a0$��Moloto)�$��20(�$��10q�$��Center=�$��Center=���  �� CornerRadius$ 10�����#f18e57$��1q�$��Center=�$��2��$��1��$��Center=� � UseLayoutRounding . $��35��$	��260��$��5q�._��� -    ��Name$ ComboNomenclature��
����������#a961a0$��0q�$��Moloto)�$��20(�$��2��$��1��$	��250��$��25��$��5q� �� DisplayMemberPath$ NameOfNomenclature�� �� SelectedItem �� *Equipment.Nomenclature+ � 	Resources 	 �� 
TargetType
 �� Property �� Value��%�   '��       �� "	 ��.��� 
 � �� �#a961a0�� 
 � ��$ Moloto)��� 
 � ��$ 20(��� 
 � ��$ 35���� 
 � �� �	#FF232D3E�� $ 10�����#f18e57$��1q�$��Center=�$��1��$��1��$��Center=� . $��35��$	��260��$��5q�._��� -   $ 
ComboModel��
����������#a961a0$��0q�$��Moloto)�$��20(�$��1��$��1��$	��250��$��25��$��5q�$ Model�� �� *	Equipment+ ��%�   '��       �� "	 ��.��� 
 � �� �#a961a0�� 
 � ��$ Moloto)��� 
 � ��$ 20(��� 
 � ��$ 35���� 
 � �� �	#FF232D3E�� $ 10�����#f18e57$��1q�$��Center=�$��0��$��1��$��Center=� . $��35��$	��260��$��5q�._��� -   $ ComboManufacturer��
����������#a961a0$��0q�$��Moloto)�$��20(�$��1��$��1��$	��250��$��25��$��5q�$ ManufacturerName�� �� *Equipment.Manufacturer+ ��%�   '��       �� "	 ��.��� 
 � �� �#a961a0�� 
 � ��$ Moloto)��� 
 � ��$ 20(��� 
 � ��$ 35���� 
 � �� �	#FF232D3E�� $ 10�����#f18e57$��1q�$��Center=�$��3��$��1��$��Center=� . $��35��$	��260��$��5q�._��� ���#a961a0$��Moloto)�$��20(�$��0q�
������ $	��250��$��25������ *SerialNumber+�� $ 10�����#f18e57$��1q�$��Center=�$��4��$��1��$��Center=� . $��35��$	��260��$��5q�._��� ���#a961a0$��Moloto)�$��20(�$��0q�
������ $	��250��$��25������ *InventNumber+�� $ 10�����#f18e57$��1q�$��Center=�$��5��$��1��$��Center=� . $��35��$	��260��$��5q�._��� ���#a961a0$��Moloto)�$��20(�$��0q�
������ $	��250��$��25������ *DateOfDelivery+�� -   $��BtnSave��$��Сохранить��$��2�����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�
������ $��Center=�$��5q�$	��160��$��30��$��1��$��10��