   M S B A M L   `   `   `  ����L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:StudentManagementStudentManagement  5   	   "    StudentManagement.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:StudentManagement     5   	   ` \MaterialDesignThemes.Wpf, Version=4.3.0.53, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      SecondaryHueMidBrush#���   5	   
   $��Regular"�5
   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
   #���   5   
     MaterialDesignFont#���  5   
    � Title$ Hutech Management��5   	   $	��550��6#   $	��800��60    � DataContext 5      .   (StudentManagement.SearchStudentViewModel  5   
   6)    � 	Resources 5        styleTextBox �� 
TargetType �� Property �� Value  StyleComboBox  styleTextBlock  LableContent  StyleButton  StylelistBox  myTaskTemplate �� Padding	 � RowDefinitions
 � ColumnDefinitions �� Path��%�  &	       &	     &	 �    &	 �    &	 �    &	 �    &	 �    7  7  7  7  7  7  �� 5   
   " ��6%   .�5      ��  �@��TextWrapping$
 Wrap=�6-   �� 5       � ��$ 27��6'   �� 5       � ��$ 2q�60   �� 5       � ��$ TimeNewRoman)�6+   �� 5       � ��$ 15(�6)   �� 5       � ��$ 5q�6'   5!      �� 5#   
   " ��6&   .�5$      ��  � ��$ TimeNewRoman)�6+   �� 5%       � ��$ 15(�6)   �� 5&       � ��$ 5q�6'   �� 5'       � ��$ 27��6'   �� 5(       � ��$ 2q�60   5)      �� 5+   
   " ��6'   .�5,      ��  � ��$ Center=�62   �� 5-       � ��$
 Wrap=�6-   �� 5.       � ��$ 23��6'   �� 5/       � ��$ TimeNewRoman)�6+   �� 50       � ��$ 15(�6)   51      �� 53   
   " ��6%   .�54      ��  � ��$ TimeNewRoman)�6+   �� 55       � ��$ Oblique$�6*   �� 56       � ��$ 30(�6)   �� 57       � ��$ Center=�64   �� 58       � ��
 �**��6+   �� 59       � ��$
 Bold"�6+   5<      �� 5>   
   " ��6$   .�5?      ��  � ��$ 5q�6'   �� 5@       � ��$ 15(�6)   �� 5A       � ��$ TimeNewRoman)�6+   �� 5B       � ��$ 27��6'   �� 5C       � ��$ 1q�60   �� 5D       � ��
 �z���6+   5E      �� 5G   
   " ��6%   .�5H      ��  � ��$ TimeNewRoman)�6+   �� 5I       � ��$ 15(�6)   �� 5J       � ��$ 5q�6'   5K      �� 5M   
   .R�5N      �� $��border��6   
���  ��$��1q�65   $ 5q�5O      $��5q�6   ._�5P      � 	 5Q      �� 5R      �� 5S      �� 5T      
 5V      �� 5W      �� 5X      6.   .+�5Z      �� $��0��6    $��0��6-   8��  $��
StudentId:��6e   �� 5[      $��0��6    $��1��6-   8�� ��6f   �� $ 	studentId��� 5\      $��1��6    $��0��6-   8�� $��
Firstname:��6f   �� 5]      $��1��6    $��1��6-   8�� ��6f   �� $ 	firstname��� 5^      $��2��6    $��0��6-   8�� $��	Lastname:��6f   �� 5_      $��2��6    $��1��6-   8�� ��6f   �� $ lastname�5a      5b      5c      5e      .��5g      �� $��5q�6   .@�5h   
   �� $��Student��6   .��5i      � 	 5j      �� 5k      $
��Auto �6$   64   �� 5l      $
��Auto �6$   64   �� 5m      6'   �� 5n      $
��Auto �6$   64   .+�5q      � $��0��6   .+�5r      �� $��Search Student��6   #��[ 65   6]   �� 5s      6"   5t      � 5v      $��1��6   
 5w      �� 5x      6-   �� 5y      6-   �� 5z      6-   �� 5{      6-   �� 5|      6-   �� 5}      6-   �� 5~      6-   	 5�      �� 5�      6*   .+�5�      �� $��0��6   $��3��6.   #��[ 6B    � ToolTip$. (Input name of Student you want to search��6�   ��6i   �� $ Searchkeyword�6�   �� 5�      $��3��6   $��2��6/   #��[ 6C    �� SelectedValuePath$ Content��6�   $$ Input Class you want to search��6�    �� SelectedValue 6j   �� *Selectedclass+.@�5�      ��  �� 
IsSelected$
 True��6'   6;   �� 5�      .��6'   
19DTHQA161   �� 5�      .��6'   
19DTHQA261   �� 5�      .��6'   
19DTHQA361   5�      �� 5�      $��5��6   $��Search��6-   #��[ 6>   ��6c   �� *SearchCommand+6�   �� 5�      $��6��6   $��Reset��6-   #��[ 6=   ��6b   �� *ResetCommand+6�   5�      � 5�      $��2��6   .+�5�      �� $��0��6   $��Stretch=�6.   $��3q�6S   #��[ 6�   ��6g   �� *
Students+ �� SelectedItem 6�   �� *Selectedstudent+6�   5�      � 5�      $��3��6   .+�5�      �� -   5        $
��Left=�5�      $
��Exit��68   ���	#FF98C70E
���  ��$��20(�6o   6�   �� 5�      $��30��6   $��Right=�6*   $��Open Student Detail��6F     	 MaterialDesignSnackbarRipple#��� 	 6�   ���	#FF98C70E��6d   �� *OpenDetailCommand+6�   5�      5�      5�      5�      5�      