   M S B A M L   `   `   `  ����A  =Tetris, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TetrisTetris  5   	       Tetris.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Tetris     5   	   -   5          � Title$  Tetris��5   	   $	��600��6   $	��800��6%   $	��600��5	   	   $	��600��6   
�������$��Segoe UI Light)�5   	   $��28(�6%   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $�� * �6   �� 5      $�� auto �6   �� 5      $�� * �6   ��5   
   �� 5       �� ImageSource$ Assets/Background.png��6   .+�5   
   (� $��1��6   $��1��5       $��	 0,0,0,20q�5!      .��5#      �� -   5         ��Name$ 
GameCanvas��5#      $��1��5$      $��1��5%      ���#101010$	��250��5'      $	��510��5(      $
}�True��5)      5*      5+      �� 5-   
   -   5         ��Name$ 	ScoreText��5-      $��0��5.      $��1��5/      $��Score: ��50      $��0, 10q�51       �� TextAlignment$ Center=�52      �� 54   
   $��1��6   $��0��55      $��Center=�56      $��Right=�57      .+�59      �� $��Stored��6   $ Center=�5:      �� 5<      -   5         ��Name$ 	HoldImage��5<      $��20q�5=      $	��125��5>      5A      �� 5C   
   $��1��6   $��2��5D      $��Center=�5E      $
��Left=�5F      .+�5H      �� $��
Next Block��6   $��20q�5I      $	��125��5J      �� 5K      -   5        $ 	NextImage��5K      $��20q�5L      $	��125��5M      5N      � 5P   
   -   5         �Name$ GameOverMenu��5P      ���	#CC000000$��2��5R      $��3��5S      $y�Hidden=�5T      .+�5V      �� $��Center=�6   $��Center=�5W      .+�5Y      �� $��	Game Over��5Z      $��48(�5[      $ Center=�5\      �� 5^      -   5        $ FinalScoreText��5^      $��Score��5_      $��36(�5`      $ Center=�5a      �� 5c      -   5        $��
Play Again��5c      
������$��0,20,0,0q�5e      $��5q�5f      5g      5h      5l      5p      5q      