   M S B A M L   `   `   `  ���� U  QHitcom-AccountingEquipment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Hitcom_AccountingEquipment.PageFolder%Hitcom_AccountingEquipment.PageFolder  G(clr-namespace:Hitcom_AccountingEquipmentHitcom_AccountingEquipment  6    0Hitcom_AccountingEquipment.PageFolder.WorkerPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Elocal3clr-namespace:Hitcom_AccountingEquipment.PageFolder     <local21(clr-namespace:Hitcom_AccountingEquipment     -     N� Title$  
WorkerPage��.���  � RowDefinitions �� $	��45* ��� $
��377* �.+��� ���#f18e57$��1q� �� CornerRadius$ 5��$��1��._�&   System.Windows.Controls.DataGrid  -     Name$ DgridMyPage��$��1��   AutoGenerateColumns .     
IsReadOnly . $��5q� � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� BasedOn �� 
TargetType	 �� Property
 �� Value��%�   '        7 �� 8   "  .��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��$
 Center=��� 	 � ��$

 auto���� 	 � ��$
 Center=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия. И. О.��   
Foreground �#a961a0   
FontFamily$ Moloto)�   FontSize$ 20Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *FIO+  $ Пол�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *Gender.GenderName+  $! Номер телефона�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *PhoneNumber+  $ Email�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *EmailOfWorker+  $ Должность�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *Position.PostionName+  $ Статус�� �#a961a0$ Moloto)�$ 20Q�$
 auto  �� *StatusOfWorker.NameOfStatus+4  .System.Windows.Controls.DataGridTemplateColumn  $
 auto    CellTemplate �� .R��� $��BtnEdit��-   $ ��Редактировать�����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�
������ $��Center=�$	��150��$��35��$��5q���  �� Orientation$ 
Horizontal=�.+��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� � UseLayoutRounding . $��35��$	��160��$��5q�._�-   'Hitcom_AccountingEquipment.PlaceTextBox  -     Name$ 	SearchTxt��-	   'Hitcom_AccountingEquipment.PlaceTextBox 	  TextChanged$ SearchTxt_TextChanged��   
PlaceBrush �#a961a0   	PlaceText$ 
Поиск�����#a961a0$��Moloto)�$��20(�$��0q�
������ $	��150��$��25��$��5q��� $ 10�����#f18e57$��1q�$
��Left=�$��Center=� . $��35��$	��160��$��5q�._��� -    ��Name$ FilteCmb�� �� SelectedIndex$ 0�� �� DisplayMemberPath$ NameOfStatus��
����������#a961a0$��0q�$��Moloto)�$��20(�$	��150��$��25��$��5q�$��Center=�$��Center=� ��%�   '��       �� " ��.��� 	 � ��
 �#a961a0�� 	 � ��$
 Moloto)��� 	 � ��$
 20(��� 	 � ��$
 35���� 	 � ��
 �	#FF232D3E�� -   $��BtnAdd��$��Добавить��$��Center=����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�$	��125��$��35��$��10q�
������ �� -   $��BtnDel��$��Удалить��$��Center=����#e5266f$��0q�$��Moloto)�$��20(�$��Center=�$	��125��$��35��$��10q�
������ 