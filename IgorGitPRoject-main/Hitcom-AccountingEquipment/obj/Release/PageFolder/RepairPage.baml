   M S B A M L   `   `   `  ���� U  QHitcom-AccountingEquipment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Hitcom_AccountingEquipment.PageFolder%Hitcom_AccountingEquipment.PageFolder  G(clr-namespace:Hitcom_AccountingEquipmentHitcom_AccountingEquipment  6    0Hitcom_AccountingEquipment.PageFolder.RepairPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Elocal3clr-namespace:Hitcom_AccountingEquipment.PageFolder     <local21(clr-namespace:Hitcom_AccountingEquipment     -     N� Title$  
RepairPage��.���  � ColumnDefinitions �� $
��800* ��� $	��250 � � RowDefinitions �� $	��80* ��� $
��700* �.+�&   System.Windows.Controls.DataGrid  -     Name$ DgridMyPage_Copy��$��1��   AutoGenerateColumns .  $y�Hidden=�   
IsReadOnly .  � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� BasedOn �� 
TargetType	 �� Property
 �� Value��%�   '        7 �� 8   "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��$
 Center=��� 	 � ��$

 auto���� 	 � ��$
 Center=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Номер ремонта��   
Foreground �#a961a0   
FontFamily$ Moloto)�   FontSize$ 20Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *NumberOfRepair+  $! Статус ремонта�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� **(StatusEquipInRepair.StatusEquipInRepair1+  $- 'Причина несправности�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *Breakdown.NameOfBreakdown+  $  Производитель�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *75EquipmentCard.Equipment.Manufacturer.ManufacturerName+  $! Серийный номер�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EquipmentCard.SerialNumber+  $ Модель�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EquipmentCard.Equipment.Model+  $/ )Дата передачи в ремонт�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *DateOfDeliveryForRepair+  $5 /Дата получения из ремонта�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *DateOfReceiving+  -   Dy1��$ Продление�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *RenewalsRepair+ �� Mode$ TwoWay=�  $# Сервисный центр�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� */-ServiceOrganization.NameOfServiceOrganization+  $ Фамилия. И. О.�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *
Worker.FIO+�� ���#f18e57$��1q� �� CornerRadius$ 5��$��1��._�  -   $ DgridMyPage��$��1��$��5q� .   .  ��%�   '        7 �� 8   "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��$
 Center=��� 	 � ��$

 auto���� 	 � ��$
 Center=�   $ Номер ремонта�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *NumberOfRepair+  $! Статус ремонта�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� **(StatusEquipInRepair.StatusEquipInRepair1+  $- 'Причина несправности�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *Breakdown.NameOfBreakdown+  $  Производитель�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *75EquipmentCard.Equipment.Manufacturer.ManufacturerName+  $! Серийный номер�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EquipmentCard.SerialNumber+  $ Модель�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EquipmentCard.Equipment.Model+4  .System.Windows.Controls.DataGridTemplateColumn  -   DPicker1��$/ )Дата передачи в ремонт��$
 auto    CellTemplate �� .R��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� � UseLayoutRounding . $
��auto��$��5q�._�(  "System.Windows.Controls.DatePicker  
������ ���#a961a0$��Center=�$��0q�$��Moloto)�$��20(�$
��auto��$��5q�   SelectedDate �� *DateOfDeliveryForRepair+ ��%c   '        �� "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(�  -   DPicker2��$5 /Дата получения из ремонта��$
 auto  �� .R��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $
��auto��$��5q�._�  
������ ���#a961a0$��Center=�$��0q�$��Moloto)�$��20(�$
��auto��$��5q� �� *DateOfReceiving+ ��%c   '        �� "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(�  -   Dy��$ Продление��$
 auto  �� .R��� ���#f18e57 d� 	IsChecked ��  �� Path$ RenewalsRepair�$ TwoWay=�  $# Сервисный центр�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� */-ServiceOrganization.NameOfServiceOrganization+  $ Фамилия. И. О.�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *
Worker.FIO+  $
 auto  �� .R��� $��	BtnReturn��-   $(��"Возврат из ремонта�����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�
������ $��Center=�$	��200��$��35��$��5q�  $
 auto  �� .R��� $��BtnEdit��-	   $ ��Редактировать�����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�
������ $��Center=�$	��150��$��35��$��5q��� $��1��$��1��$��Center=�$ 10�����#f18e57$��1q�._���  �� Orientation$ Vertical=�.+��� $��5q��� $��5q��� $��5q�.+��� $��Экспорт�����#a961a0$��Moloto)�$��20(�$��5q�$��Center=�$��Center=��� -
   $��BtnExcel��$��Excel�����#e5266f$��0q�$��Moloto)�$��20(�$	��125��$��35��$��10q�
������ $��1��$��Bottom=��� $��5q��� $��5q�.+��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $��35��$	��155��$��5q�._��� -    ��Name$	 Cmb��$��Center=�
����������#a961a0$��Center=�$��0q�$��Moloto)�$��20(�$	��150��$��25��$��5q� ��%�   '��       �� " ��.��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��
 �	#FF232D3E.@��� .��Акт утилизации�� .��Акт ремонта�� .��&$Акт приёма-передачи�� .��Акт возврата�� -    ��Name$ BtnExcel_Copy��$
��Word�����#e5266f$��0q�$��Moloto)�$��20(�$	��125��$��35��$��10q�
������ �� $��0��$��0��$ 
Horizontal=�.+��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $��35��$	��160��$��5q�._�-	   'Hitcom_AccountingEquipment.PlaceTextBox	  -    	 Name$ SrchTxt��-
   'Hitcom_AccountingEquipment.PlaceTextBox 
  TextChanged$ TextBox_TextChanged��{�.  	  
PlaceBrush �#a961a0 	  	PlaceText$ 
Поиск�����#a961a0$��Moloto)�$��20(�$��0q�
������   �� 	MaxLength$  17��$	��150��$��25��$��5q�$��Center=�$
��Left=��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $��35��$	��160��$��5q�._��� -   $ ManufacturerCmb��! �� SelectedIndex$! 0��" �� DisplayMemberPath$" ManufacturerName��
����������#a961a0$��0q�$��Moloto)�$��20(�$	��150��$��25��$��5q�$��Center=�$��Center=� ��%�   '��       �� " ��.��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��
 �	#FF232D3E�� -   $ BtnAdd��$��Добавить��$��Center=����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�$	��125��$��35��$��10q�
������ �� -   $ BtnDel��$��Удалить��$��Center=����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�$	��125��$��35��$��10q�
������ 