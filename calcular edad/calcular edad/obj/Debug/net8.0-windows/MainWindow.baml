   M S B A M L   `   `   `  ����  calcular edad    calcular_edad.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Calculadora de Edad��5   	   $	��250��6%   $	��400��62    � 
ResizeMode$ NoResize=�5   	   .��5      � $��15q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Fecha de nacimiento:��6   $��0��6/   $��0��6<   $��Center=�6L   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ datePickerNacimiento��5      $��0��63   $��1��6@   6P   �� 5   
   $��Fecha actual:��6   $��1��6(   $��0��65   $��Center=�6E     5   
   -   5        $ datePickerActual��5      $��1��6/   $��1��6<   6L   �� 5   
   -   5         ��Name$ btnCalcular��5      $��Calcular Edad��6&   $��2��6>   $��2��6K   $��0,10,0,0q�5      $��30��6#   ${�False��6J   �� 5    
   -   5         ��Name$ textBoxResultado��5       $��3��6,   $��2��69   $��16(�6M   $
��Bold"�5!      $��0,10,0,0q�6$    �� 
IsReadOnly$
 True��66    �� TextAlignment$ Center=�6H   5"      5#      