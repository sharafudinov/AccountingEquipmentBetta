   M S B A M L   `   `   `  ����h  dSyncfusion.SfSkinManager.WPF, Version=18.4400.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89iLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPFSyncfusion.SfSkinManager  5      a ]Syncfusion.Shared.Wpf, Version=18.4400.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89dFclr-namespace:Syncfusion.Windows.Shared;assembly=Syncfusion.Shared.WPFSyncfusion.Windows.Shared 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries9    3Syncfusion.SfSkinManager.ResourceDictionaryProvider    DictionaryName    	ThemeName �� Source   WPFDatepickerCalendarStyle  WPFCalendarStyle �� BasedOn �� 
TargetType&   System.Windows.Controls.Calendar �� Property / +Office2019HighContrastWhite.BorderThickness �� Value �� 
TargetType	 ��Name  Default.ShadowDepth3
 J� Effect 0 ,Office2019HighContrastWhite.BorderThickness15  /System.Windows.Controls.Primitives.CalendarItem  Name   CalendarItemStyle  WPFDatePickerTextBoxStyle:  4System.Windows.Controls.Primitives.DatePickerTextBox - )Office2019HighContrastWhite.BodyTextStyle / +Office2019HighContrastWhite.ThemeFontFamily 0 ,Office2019HighContrastWhite.FontWeightNormal 	 ContentForeground 
 PrimaryColorLight3'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   States   System.Windows.VisualState   
Storyboard g� Duration	 W� To �� TargetProperty �� 
TargetName ��Name �� CornerRadius J� Opacity �� Padding �Name ��Name  PlaceholderForeground J� IsHitTestVisible ��Name � 	Resources  WPFDatePickerStyle(  "System.Windows.Controls.DatePicker  ContentBackground 
 Border < 8Office2019HighContrastWhite.ThemeBorderThicknessVariant1  � ColumnDefinitions  Key  WPFGlyphButtonStyle! F�Name" �� Stretch# �� RelativeSource$ �� AncestorType% �� Path& ��Name  WPFDatePickerButtonStyle'  Name( �� RadiusY) �� RadiusX* �Name+ � AllowsTransparency, � 	StaysOpen- � PlacementTarget. �� ElementName/ �� Triggers0 �� Value1 �� Binding2 �� Source3 �� 
TargetName4 P� Property5 P� Value  PrimaryBackground  	BorderAlt  DisabledForeground6 P� 
SourceName < 8Office2019HighContrastWhite.ThemeBorderThicknessVariant2�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      YproviderLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPF  5      QsharedFclr-namespace:Syncfusion.Windows.Shared;assembly=Syncfusion.Shared.WPF  5      .sys&clr-namespace:System;assembly=mscorlib  5        5         5	   
   $ Common��6.   $! Office2019HighContrastWhite��6F      5
   
   $ Brushes��6.   $! Office2019HighContrastWhite��6G   �� 5   
   $Z T/Syncfusion.Themes.Office2019HighContrastWhite.WPF;component/MSControl/Calendar.xaml?�6   �� 5   
   $] W/Syncfusion.Themes.Office2019HighContrastWhite.WPF;component/MSControl/GlyphButton.xaml?�6   %  &	        7  7  7  7  &	 |    7  7  7  7 	 7 
 7 	 7  7  '  	    7  &	 )	    7   7 	 7  7  7  7  7  7  7  7  7  7  7 	 7 	 7  7  7  7  7  7 	 7  7  7 	 '  #    7  �� 5      8   "  6[   .�5   
   ��  � ��8  6,   �� 5   
    � �� 5      �� 5      "  6"   .R�5      �� $	 	PART_Root��6!   $��Center=�64   .+�5      �� $��6,0,3,6q�6!   8
  8�� ._�5        $ PART_CalendarItem��6+   #��z��5   '   #��z��5   '   #��z��5   '   #��z 5   '   5      5      5      5      5       �� 5"      "  6.   .�5#   
   ��  �@�FocusVisualStyle 6-   Z� �� 5$   
    � ��8   6%   �� 5%   
    � ��8  6'   �� 5&   
    � ��8  6'   �� 5'   
    � ��8  6'   �� 5(   
    � ��
 ���� 6'   �� 5)   
    � ��
 ���� 6(   �� 5*   
    �@��SelectionBrush8  6+   �� 5+   
    �@��PanningMode$ VerticalFirst=�65   �� 5,   
    �@��IsFlicksEnabled .  63   �� 5-   
    �@��
CaretBrush8  6'   �� 5.   
    � �� 5/      �� 50      "  6"   .R�51      �  52        53      CommonStates�� 54   "     55   &   $ 0D�67     56   &   $ 0:0:0.1D�67   $ 	MouseOver��6S   . 58   "     
Normal��6.     59   "   Disabled��5:   #     5;   "   	MouseOver��5<   #   5=        5>      WatermarkStates�� 5?   "     5@   &   $ 0D�67   . 5B   "     Unwatermarked��6.     5C   "   Watermarked��. 5D   &   �� .��5E   *   W� $ 0D�6:   $ 0X�6G   $ Opacity�6N   $ ContentElement��6r   W� 5F   *   $ 0D�6:   $ 1X�6G   $ Opacity�6N   $ PART_Watermark��6r   5G   '   5H   #   5I        5J      FocusStates�� 5K   "     5L   &   $ 0D�67   . 5N   "     	Unfocused��6.     5O   "   Focused��5P   #   5Q      .+�5S      �� $ Border��6!   #��z��61   #��z��6]   #��z��6�   $ 1��6�   $ 1Q�6�   # z��6�   ._�5T      � $ WatermarkContent��6#   #��z��6=   #��z��6�   .+�5U   "   �� $ ContentElement��6)   �� 5V   "   $ watermark_decorator��6)   # z��6F   ._�5W   &   �� $ PART_Watermark��65   8�� 8�� |�.   .  $ 0Q�6  $��2q�6  5X   #   �� 5Y   "   $ PART_ContentHost��6/   
������ #��z��6b   $��0q�6�   #��z��6�    5Z   &   ���� 5[   *   '��       " ��6C    60   Z� 6C   5\   '   5]   #   5^      5_      5`      5a      5c      5d      �� 5f      8   "  6A   �� 5h      "  6'   .�5i   
   ��  �@ IsTodayHighlighted . 6/   �� 5j   
    �@ CalendarStyle8   6*   �� 5k   
    � ��8  6'   �� 5l   
    �@ SelectedDateFormat$ Short=�6/   �� 5m   
    � ��8  6'   �� 5n   
    � ��$ 0q�6$   �� 5o   
    � ��8  6(   �� 5p   
    � ��8  6,   �� 5q   
    � ��$ Stretch=�67   �� 5r   
    � �� 5s      �� 5t      "  6"   .R�5u      �� $ PART_Border��6   #��z��62   #��z��6^   #��z��6�   # z��6�    5v        5w      CommonStates��. 5x   "     
Normal��6.     5y   "   Disabled��5z   #   5{      ._�5}      � $ 	PART_Root��6   #��z��62   #��z��6u     5~      �� 5   "   $��* �63   �� 5�   "   $
��Auto �63    5�      ���� 5�   "   WPFDatePickerButtonStyle 8  " ��5�   -   .�5�   &   ��  � �� 5�   *   F� 5�   .   $! Date_Picker��63   ����� z @T� ��ا @T� ��ا  � � z  � �@]� ��[ р� ��[ р� ��� �(a� ��� ��� T�@    �����&@    �[u��@"N����?�[u��@��[u��@�� ��ا �� ��ا @B S�ا "N����?���  � �@��     @]� "N����?@]� �@]� �� ��5� �� ��� ���+@���  	= ���� ��� ����  x� �5�  $� @]�  $� р�  $� ��BA��? $�  x� ��� �     	= S    ���+@�BA��?�� �� �� �d�:T�@�� �d�:T�@@B �� T�@"N����?.�7&�x@�� T�@	$��Center=�5�   /   $��Center=�5�   /   $��12��5�   /   $��13��5�   /   $
" Fill=�5�   /   ��5�   /   �� # �� $$ ButtonL�$% 
Foreground�5�   /   5�   '   5�   #   5�      .+�5�      �� $& PART_Button��6%   $��1��6:   |�.  $��Center=�6\   8�� $��0��6�   $��Center=�6�   $��3q�6�   5�        5�      $' PART_TextBox��60   $��0��6F   #|�z|�6V   $��2q�6~   #��z��6�   $��Center=�6�   $��Stretch=�6�   8�� $��0��6'  $��Stretch=�64  .��6W  5�      � 5�      $ PART_DisabledVisual��6#   $��2��6@   $��0��6T    .  $ 0Q�6}   $��0��6�     5�   "   �� 5�   &   $��* �67   �� 5�   &   $
��Auto �67   .+�5�   "   �� $��0��6,   8�� $( 1��6f   $��0��6r   $) 1��6   �� 5�   "   $��1��6,   8��	 $��18��6f   $��3,0,3,0q�6r   $( 1��6�   $��0��6�   $) 1��6�   $��19��6�   � 5�   "   $* 
PART_Popup��6(   + . $��Bottom=�6V   , .  - 6i   �� $. PART_Border��5�   #   5�      5�      5�      / 5�      �� 5�      $0 false��6j   1 6&   �� #2 Zr�.a�5�      �� $3 PART_TextBox��6;    6U   �� *
Foreground+# �� *TemplatedParent+ � ��5�      P� 5�      4 �@J�IsMouseOver5 . . �5�      �� $3 PART_Border��6<   8 
  � ��6U   �� 5�      $3 PART_Border��6;   8   � ��6T   �� 5�      $3 PART_TextBox��6;   8   � ��6U   �� 5�      $3 PART_TextBox��6;   8   �@��
CaretBrush6U   5�      P� 5�      4 � {�5 .  . �5�      �� $3 PART_Border��6<   8   � ��6U   �� 5�      $3 PART_Border��6;   8   � ��6T   �� 5�      $3 PART_TextBox��6;   8   � ��6U   5�      P� 5�      $6 
PART_Popup��64   4 � ��5 . . �5�      �� $3 PART_Border��6<   8   � ��6U   �� 5�      $3 PART_Border��6@   8   � ��6Y   �� 5�      $3 PART_TextBox��6;   8   � ��6U   5�      P� 5�      $6 PART_TextBox��67   4 �@J�	IsFocused5 . . �5�      �� $3 PART_Border��6<   8   � ��6U   �� 5�      $3 PART_Border��6@   8   � ��6Y   �� 5�      $3 PART_TextBox��6;   8   � ��6U   5�      5�      5�      5�      �� 5�      8   "  6:   5�      