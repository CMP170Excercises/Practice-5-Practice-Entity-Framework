   M S B A M L   `   `   `  ����L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:StudentManagementStudentManagement  5   	   +    %StudentManagement.StudentDetailWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:StudentManagement     5   	   ` \MaterialDesignThemes.Wpf, Version=4.3.0.53, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5	   
   $��Regular"�5
   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     PrimaryHueDarkBrush#���  5   
     MaterialDesignFont#���  5   
    � Title$ Student Detail��5   	   $	��350��6    $	��400��6-    � 	Resources 5        LableContent �� 
TargetType �� Property �� Value  StyleButton  styleTextBox  styleRadioBnt  StyleComboBoxItem��%�  &	       &	 �     &	 2    &	 J    &	 �    �� 5   
   " ��6%   .�5      ��  � ��$ TimeNewRoman)�6+   �� 5       � ��$ 15(�6)   �� 5       � ��$ 5q�6'   5      �� 5   
   " ��6$   .�5      ��  � ��$ 5q�6'   �� 5       � ��$ 15(�6)   �� 5        � ��$ TimeNewRoman)�6+   5#      �� 5%   
   " ��6%   .�5&      ��  � ��$ Center=�62   �� 5'       �@��TextWrapping$
 Wrap=�6-   �� 5(       � ��$ 20��6'   �� 5)       � ��$ 2q�60   �� 5*       � ��$ TimeNewRoman)�6+   �� 5+       � ��$ 15(�6)   5-      �� 5/   
   " 	�6&   .�51      ��  � ��$ Center=�62   �� 52       � ��$ Center=�64   54      �� 56   
   " ��6*   .�57      ��  � ��$ TimeNewRoman)�6+   �� 58       � ��$ 15(�6)   �� 59       � ��$ 25��6'   5:      5;      .��5=      �� 
������� �� CornerRadius$ 10��6   $��20q�61   ._�5>   
   �� .+�5?      �  � ColumnDefinitions 5@      �� 5A      6*   �� 5B      6*   �� 5C      6*   �� 5D      6*   �� 5E      6*   �� 5F      6*   �� 5G      $
��0.1* �6'   66   	 � RowDefinitions	 5J      �� 5K      6&   �� 5L      6&   �� 5M      6&   �� 5N      6&   �� 5O      6&   �� 5P      6&   �� 5Q      6&   .+�5U      �� $��Student ID:��6   #��[ 6.   $��3��6U   6k   �� 5V      $��First Name:��6   #��[ 6.   $��1��6U   $��3��6b   6x   �� 5W      $��
Last Name:��6   #��[ 6-   $��2��6T   $��3��6a   6w   �� 5X      $��Gender:��6   #��[ 6*   $��3��6Q   $��3��6^   6t   �� 5Y      $��Class:��6   #��[ 6)   $��4��6P   $��3��6]   6s   �� 5Z      $��Email:��6   #��[ 6)   $��5��6P   $��3��6]   6s   �� 5[      $��Email:��6   #��[ 6*   $��6��6P   $��2��6]   6p   �� 5\      $
��Save��6   #��[ 6(   $��6��6N   $��2��6[   
����� ���6k   �� *SaveCommand+6�   �� 5]      $��Cancle��6   #��[ 6*   $��6��6P   $��3��6]   
���\\����6m   �� *CanCleCommand+6�   �� 5_      #��[ 6   $��0��6@   $��3��6M   $��3��6]   ��6q   �� 
 �� Path$
 StudentIddetail�6�   �� 5`      #��[ 6   $��1��6@   $��3��6M   $��3��6]   ��6q   �� $
 Firstnamedetail�6�   �� 5a      #��[ 6   $��2��6@   $��3��6M   $��3��6]   ��6q   �� $
 Lastnamedetail�6�   �� 5b      #��[ 6   $��5��6@   $��3��6M   $��3��6]   ��6q   �� $
 Emaildetail�6�   	� 5d       	� 	GroupName$ gender��6   #��[ 61   $��3��6Y   $��3��6f    d� 	IsChecked 6v   �� *Ismale+.��6�   Male6�   	� 5e      $ gender��6   #��[ 61   $��3��6Y   $��4��6f    6v   �� *
IsFemale+.��6�   FeMale6�   �� 5f      $��4��6   $��3��6(   $��3��68   $��25��6L   $��Center=�6X    �� Text 6s   �� $
 Classdetail�.@�5g      ��  �� 
IsSelected$
 True��6#   .��65   
19DTHQA16?   �� 5h      .��6#   
19DTHQA26-   �� 5i      .��6#   
19DTHQA36-   5j      5l      5m      5n      5p      