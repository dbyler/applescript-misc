FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 growlappname growlAppName  m        � 	 	  D a n ' s   S c r i p t s   
  
 j    �� �� $0 allnotifications allNotifications  J           m       �    G e n e r a l   ��  m       �   
 E r r o r��        j   	 �� �� ,0 enablednotifications enabledNotifications  J   	        m   	 
   �    G e n e r a l   ��  m   
    �   
 E r r o r��       !   j    �� "�� "0 iconapplication iconApplication " m     # # � $ $  O m n i F o c u s . a p p !  % & % l     ��������  ��  ��   &  ' ( ' l      �� ) *��   )   Begin notification code     * � + + 2   B e g i n   n o t i f i c a t i o n   c o d e   (  , - , i     . / . I      �� 0���� 
0 notify   0  1 2 1 o      ���� 0 	alertname 	alertName 2  3 4 3 o      ���� 0 
alerttitle 
alertTitle 4  5�� 5 o      ���� 0 	alerttext 	alertText��  ��   / k     	 6 6  7 8 7 l     �� 9 :��   9 - 'Call this to show a normal notification    : � ; ; N C a l l   t h i s   t o   s h o w   a   n o r m a l   n o t i f i c a t i o n 8  <�� < n    	 = > = I    	�� ?���� 0 
notifymain 
notifyMain ?  @ A @ o    ���� 0 	alertname 	alertName A  B C B o    ���� 0 
alerttitle 
alertTitle C  D E D o    ���� 0 	alerttext 	alertText E  F�� F m    ��
�� boovfals��  ��   >  f     ��   -  G H G l     ��������  ��  ��   H  I J I i     K L K I      �� M���� $0 notifywithsticky notifyWithSticky M  N O N o      ���� 0 	alertname 	alertName O  P Q P o      ���� 0 
alerttitle 
alertTitle Q  R�� R o      ���� 0 	alerttext 	alertText��  ��   L k     	 S S  T U T l     �� V W��   V &  Show a sticky Growl notification    W � X X @ S h o w   a   s t i c k y   G r o w l   n o t i f i c a t i o n U  Y�� Y n    	 Z [ Z I    	�� \���� 0 
notifymain 
notifyMain \  ] ^ ] o    ���� 0 	alertname 	alertName ^  _ ` _ o    ���� 0 
alerttitle 
alertTitle `  a b a o    ���� 0 	alerttext 	alertText b  c�� c m    ��
�� boovtrue��  ��   [  f     ��   J  d e d l     ��������  ��  ��   e  f g f i     h i h I      ��������  0 isgrowlrunning IsGrowlRunning��  ��   i k      j j  k l k O     m n m r     o p o ?     q r q l    s���� s I   �� t��
�� .corecnte****       **** t l    u���� u 6   v w v 2    ��
�� 
prcs w =    x y x 1   	 ��
�� 
fcrt y m     z z � { {  G R R R��  ��  ��  ��  ��   r m    ����   p o      ���� 0 growlrunning GrowlRunning n m      | |�                                                                                  sevs  alis    �  
Hypersolid                 �%��H+   ��System Events.app                                               ��L���        ����  	                CoreServices    �&W      � PB     �� ��	 ��  ;Hypersolid:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 H y p e r s o l i d  -System/Library/CoreServices/System Events.app   / ��   l  }�� } L     ~ ~ o    ���� 0 growlrunning GrowlRunning��   g   �  l     ��������  ��  ��   �  � � � i    ! � � � I      �� ����� 0 dicttostring dictToString �  ��� � o      ���� 0 dict  ��  ��   � l    = � � � � k     = � �  � � � r      � � � m      � � � � �  { � o      ���� 0 
dictstring 
dictString �  � � � X    4 ��� � � k    / � �  � � � Z   % � ����� � l    ����� � ?     � � � n     � � � 1    ��
�� 
leng � o    ���� 0 
dictstring 
dictString � m    ���� ��  ��   � r    ! � � � b     � � � o    ���� 0 
dictstring 
dictString � m     � � � � �  ,   � o      ���� 0 
dictstring 
dictString��  ��   �  ��� � r   & / � � � b   & - � � � b   & + � � � b   & ) � � � o   & '���� 0 
dictstring 
dictString � m   ' ( � � � � �  " � o   ) *���� 0 i   � m   + , � � � � �  " � o      ���� 0 
dictstring 
dictString��  �� 0 i   � o    ���� 0 dict   �  � � � r   5 : � � � b   5 8 � � � o   5 6���� 0 
dictstring 
dictString � m   6 7 � � � � �  } � o      ���� 0 
dictstring 
dictString �  ��� � L   ; = � � o   ; <���� 0 
dictstring 
dictString��   � 5 /needed to encapsulate dictionaries in osascript    � � � � ^ n e e d e d   t o   e n c a p s u l a t e   d i c t i o n a r i e s   i n   o s a s c r i p t �  � � � l     ��������  ��  ��   �  � � � i   " % � � � I      �� ����� "0 notifywithgrowl notifyWithGrowl �  � � � o      ���� 0 	alertname 	alertName �  � � � o      ���� 0 
alerttitle 
alertTitle �  � � � o      ���� 0 	alerttext 	alertText �  ��� � o      ���� 0 	usesticky 	useSticky��  ��   � k     � � �  � � � Z     { � ��� � � o     ���� 0 	usesticky 	useSticky � r    = � � � b    ; � � � b    9 � � � b    7 � � � b    5 � � � b    3 � � � b    1 � � � b    / � � � b    - � � � b    ' � � � b    % � � � b     � � � b     � � � b     � � � b     � � � m     � � � � � 2 p r o p e r t y   g r o w l A p p N a m e   :   " � o    
���� 0 growlappname growlAppName � m     � � � � � < "  p r o p e r t y   a l l N o t i f i c a t i o n s   :   � I    �� ����� 0 dicttostring dictToString �  ��� � o    ���� $0 allnotifications allNotifications��  ��   � m     � � � � � B  p r o p e r t y   e n a b l e d N o t i f i c a t i o n s   :   � I    $�� ����� 0 dicttostring dictToString �  ��� � o     ���� ,0 enablednotifications enabledNotifications��  ��   � m   % & � � � � � :  p r o p e r t y   i c o n A p p l i c a t i o n   :   " � o   ' ,���� "0 iconapplication iconApplication � m   - . � � � � �� "   t e l l   a p p l i c a t i o n   " G r o w l H e l p e r A p p "  	 r e g i s t e r   a s   a p p l i c a t i o n   g r o w l A p p N a m e   a l l   n o t i f i c a t i o n s   a l l N o t i f i c a t i o n s   d e f a u l t   n o t i f i c a t i o n s   e n a b l e d N o t i f i c a t i o n s   i c o n   o f   a p p l i c a t i o n   i c o n A p p l i c a t i o n  	 n o t i f y   w i t h   n a m e   " � o   / 0���� 0 	alertname 	alertName � m   1 2 � � � � �  "   t i t l e   " � o   3 4���� 0 
alerttitle 
alertTitle � m   5 6 � � �   Z "   a p p l i c a t i o n   n a m e   g r o w l A p p N a m e   d e s c r i p t i o n   " � o   7 8���� 0 	alerttext 	alertText � m   9 : � . "   w i t h   s t i c k y  e n d   t e l l  � o      ���� 0 	osascript  ��   � r   @ { b   @ y b   @ u b   @ s	
	 b   @ q b   @ o b   @ m b   @ k b   @ i b   @ c b   @ a b   @ V b   @ T b   @ I b   @ G  m   @ A!! �"" 2 p r o p e r t y   g r o w l A p p N a m e   :   "  o   A F���� 0 growlappname growlAppName m   G H## �$$ < "  p r o p e r t y   a l l N o t i f i c a t i o n s   :   I   I S��%���� 0 dicttostring dictToString% &��& o   J O���� $0 allnotifications allNotifications��  ��   m   T U'' �(( B  p r o p e r t y   e n a b l e d N o t i f i c a t i o n s   :   I   V `��)���� 0 dicttostring dictToString) *��* o   W \���� ,0 enablednotifications enabledNotifications��  ��   m   a b++ �,, :  p r o p e r t y   i c o n A p p l i c a t i o n   :   " o   c h���� "0 iconapplication iconApplication m   i j-- �..� "   t e l l   a p p l i c a t i o n   " G r o w l H e l p e r A p p "  	 r e g i s t e r   a s   a p p l i c a t i o n   g r o w l A p p N a m e   a l l   n o t i f i c a t i o n s   a l l N o t i f i c a t i o n s   d e f a u l t   n o t i f i c a t i o n s   e n a b l e d N o t i f i c a t i o n s   i c o n   o f   a p p l i c a t i o n   i c o n A p p l i c a t i o n  	 n o t i f y   w i t h   n a m e   " o   k l���� 0 	alertname 	alertName m   m n// �00  "   t i t l e   " o   o p���� 0 
alerttitle 
alertTitle
 m   q r11 �22 Z "   a p p l i c a t i o n   n a m e   g r o w l A p p N a m e   d e s c r i p t i o n   " o   s t���� 0 	alerttext 	alertText m   u x33 �44  "  e n d   t e l l  o      �� 0 	osascript   � 565 r   | �787 b   | �9:9 b   | �;<; m   | == �>>  o s a s c r i p t   - e  < n    �?@? 1   � ��~
�~ 
strq@ o    ��}�} 0 	osascript  : m   � �AA �BB    & >   / d e v / n u l l   &8 o      �|�| 0 shellscript shellScript6 C�{C P   � �D�zED I  � ��yF�x
�y .sysoexecTEXT���     TEXTF o   � ��w�w 0 shellscript shellScript�x  �z  E �v�u
�v consrmte�u  �{   � GHG l     �t�s�r�t  �s  �r  H IJI i   & )KLK I      �qM�p�q (0 notifywithoutgrowl NotifyWithoutGrowlM N�oN o      �n�n 0 	alerttext 	alertText�o  �p  L O    OPO I   �mQR
�m .sysodlogaskr        TEXTQ o    �l�l 0 	alerttext 	alertTextR �kST
�k 
dispS m    �j�j T �iUV
�i 
btnsU J    WW X�hX m    	YY �ZZ  O K�h  V �g[�f
�g 
dflt[ m    \\ �]]  O K�f  P m     ^^�                                                                                  OFOC  alis    X  
Hypersolid                 �%��H+   
��OmniFocus.app                                                   ����|0        ����  	                Applications2     �&W      �|��     
��  'Hypersolid:Applications2: OmniFocus.app     O m n i F o c u s . a p p   
 H y p e r s o l i d  Applications2/OmniFocus.app   / ��  J _`_ l     �e�d�c�e  �d  �c  ` aba i   * -cdc I      �be�a�b 0 
notifymain 
notifyMaine fgf o      �`�` 0 	alertname 	alertNameg hih o      �_�_ 0 
alerttitle 
alertTitlei jkj o      �^�^ 0 	alerttext 	alertTextk l�]l o      �\�\ 0 	usesticky 	useSticky�]  �a  d k     ymm non l    pqrp r     sts n    uvu I    �[�Z�Y�[  0 isgrowlrunning IsGrowlRunning�Z  �Y  v  f     t o      �X�X 0 growlrunning GrowlRunningq " check if Growl is running...   r �ww 8 c h e c k   i f   G r o w l   i s   r u n n i n g . . .o xyx Z    `z{�W�Vz H    
|| o    	�U�U 0 growlrunning GrowlRunning{ l   \}~} k    \�� ��� l   ���� r    ��� m    �� ���  � o      �T�T 0 	growlpath 	GrowlPath� + %check to see if Growl is installed...   � ��� J c h e c k   t o   s e e   i f   G r o w l   i s   i n s t a l l e d . . .� ��� Q    8���S� O   /��� O   .��� r     -��� b     +��� n     '��� 1   % '�R
�R 
psxp� l    %��Q�P� c     %��� n    #��� m   ! #�O
�O 
ctnr�  g     !� m   # $�N
�N 
alis�Q  �P  � 1   ' *�M
�M 
pnam� o      �L�L 0 strgrowlpath strGrowlPath� l   ��K�J� 5    �I��H
�I 
appf� m    �� ���  G R R R
�H kfrmID  �K  �J  � m    ���                                                                                  MACS  alis    n  
Hypersolid                 �%��H+   ��
Finder.app                                                      �QI�(JG        ����  	                CoreServices    �&W      �(��     �� ��	 ��  4Hypersolid:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p   
 H y p e r s o l i d  &System/Library/CoreServices/Finder.app  / ��  � R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �S  � ��D� Z   9 \���C�B� >  9 <��� o   9 :�A�A 0 	growlpath 	GrowlPath� m   : ;�� ���  � l  ? X���� k   ? X�� ��� I  ? H�@��?
�@ .sysoexecTEXT���     TEXT� b   ? D��� b   ? B��� m   ? @�� ��� 
 o p e n  � o   @ A�>�> 0 strgrowlpath strGrowlPath� m   B C�� ��� &   >   / d e v / n u l l   2 > & 1   &�?  � ��� I  I P�=��<
�= .sysodelanull��� ��� nmbr� m   I L�� ?�      �<  � ��;� r   Q X��� n  Q V��� I   R V�:�9�8�:  0 isgrowlrunning IsGrowlRunning�9  �8  �  f   Q R� o      �7�7 0 growlrunning GrowlRunning�;  �  ...try to launch if so...   � ��� 2 . . . t r y   t o   l a u n c h   i f   s o . . .�C  �B  �D  ~  if Growl isn't running...    ��� 2 i f   G r o w l   i s n ' t   r u n n i n g . . .�W  �V  y ��6� Z   a y���5�� o   a b�4�4 0 growlrunning GrowlRunning� I   e p�3��2�3 "0 notifywithgrowl notifyWithGrowl� ��� o   f g�1�1 0 	alertname 	alertName� ��� o   g h�0�0 0 
alerttitle 
alertTitle� ��� o   h i�/�/ 0 	alerttext 	alertText� ��.� o   i j�-�- 0 	usesticky 	useSticky�.  �2  �5  � I   s y�,��+�, (0 notifywithoutgrowl NotifyWithoutGrowl� ��*� o   t u�)�) 0 	alerttext 	alertText�*  �+  �6  b ��� l      �(���(  �   end notification code    � ��� .   e n d   n o t i f i c a t i o n   c o d e  � ��� l     �'�&�%�'  �&  �%  � ��� l     �$�#�"�$  �#  �"  � ��� l    ��!� � n    ��� I    ���� 
0 notify  � ��� m    �� ���  G e n e r a l� ��� m    �� ��� 
 T i t l e� ��� m    �� ���  B o d y�  �  �  f     �!  �   � ��� l     ����  �  �  �       �� �� #���������  � ������������� 0 growlappname growlAppName� $0 allnotifications allNotifications� ,0 enablednotifications enabledNotifications� "0 iconapplication iconApplication� 
0 notify  � $0 notifywithsticky notifyWithSticky�  0 isgrowlrunning IsGrowlRunning� 0 dicttostring dictToString� "0 notifywithgrowl notifyWithGrowl� (0 notifywithoutgrowl NotifyWithoutGrowl� 0 
notifymain 
notifyMain
� .aevtoappnull  �   � ****� ��� �    � �
��
 �    � �	 /������	 
0 notify  � ��� �  ���� 0 	alertname 	alertName� 0 
alerttitle 
alertTitle� 0 	alerttext 	alertText�  � �� ��� 0 	alertname 	alertName�  0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText� ������ �� 0 
notifymain 
notifyMain� 
)���f�+ � �� L���������� $0 notifywithsticky notifyWithSticky�� ����� �  �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText��  � �������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText� ������ �� 0 
notifymain 
notifyMain�� 
)���e�+ � �� i���� ����  0 isgrowlrunning IsGrowlRunning��  ��    ���� 0 growlrunning GrowlRunning  |���� z��
�� 
prcs  
�� 
fcrt
�� .corecnte****       ****�� � *�-�[�,\Z�81j jE�UO�� �� ��������� 0 dicttostring dictToString�� ����   ���� 0 dict  ��   �������� 0 dict  �� 0 
dictstring 
dictString�� 0 i   	 ��������� � � � �
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
leng�� >�E�O /�[��l kh ��,k 
��%E�Y hO��%�%�%E�[OY��O��%E�O�� �� ��������� "0 notifywithgrowl notifyWithGrowl�� ����   ���������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText�� 0 	usesticky 	useSticky��   �������������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText�� 0 	usesticky 	useSticky�� 0 	osascript  �� 0 shellscript shellScript  � ��� � � � � �!#'+-/13=��AE���� 0 dicttostring dictToString
�� 
strq
�� .sysoexecTEXT���     TEXT�� �� >�b   %�%*b  k+ %�%*b  k+ %�%b  %�%�%�%�%�%�%�%E�Y =�b   %�%*b  k+ %�%*b  k+ %�%b  %�%�%�%�%�%�%a %E�Oa �a ,%a %E�Oga  �j V� ��L����	
���� (0 notifywithoutgrowl NotifyWithoutGrowl�� ����   ���� 0 	alerttext 	alertText��  	 ���� 0 	alerttext 	alertText
 ^����Y��\����
�� 
disp
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� � ��k��kv��� U� ��d�������� 0 
notifymain 
notifyMain�� ����   ���������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText�� 0 	usesticky 	useSticky��   ���������������� 0 	alertname 	alertName�� 0 
alerttitle 
alertTitle�� 0 	alerttext 	alertText�� 0 	usesticky 	useSticky�� 0 growlrunning GrowlRunning�� 0 	growlpath 	GrowlPath�� 0 strgrowlpath strGrowlPath �������������������������������������  0 isgrowlrunning IsGrowlRunning
�� 
appf
�� kfrmID  
�� 
ctnr
�� 
alis
�� 
psxp
�� 
pnam��  ��  
�� .sysoexecTEXT���     TEXT
�� .sysodelanull��� ��� nmbr�� �� "0 notifywithgrowl notifyWithGrowl�� (0 notifywithoutgrowl NotifyWithoutGrowl�� z)j+  E�O� T�E�O  � *���0 *�,�&�,*�,%E�UUW X 
 hO�� ��%�%j Oa j O)j+  E�Y hY hO� *����a + Y *�k+ � ��������
�� .aevtoappnull  �   � **** k      �����  ��  ��     ������� 
0 notify  �� 	)���m+  ascr  ��ޭ