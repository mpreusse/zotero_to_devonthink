FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  4     �� 

�� 
psxf 
 m       �   . / p a t h / t o / z o t e r o / s t o r a g e 	 o      ���� 0 zoterofolder ZoteroFolder��  ��        l   
 ����  r    
    m       �   & y o u r _ p a p e r _ d a t a b a s e  o      ���� (0 comparisondatabase ComparisonDatabase��  ��        l     ��������  ��  ��        l   � ����  O    �    k    �       l   ��������  ��  ��        l   ��   !��     2 , iterate over all subfolders of ZoteroFolder    ! � " " X   i t e r a t e   o v e r   a l l   s u b f o l d e r s   o f   Z o t e r o F o l d e r   #�� # X    � $�� % $ k   % � & &  ' ( ' l  % %�� ) *��   ) 2 , iterate over all files within the subfolder    * � + + X   i t e r a t e   o v e r   a l l   f i l e s   w i t h i n   t h e   s u b f o l d e r (  , - , X   % � .�� / . k   = � 0 0  1 2 1 l  = =��������  ��  ��   2  3 4 3 l  = =�� 5 6��   5 E ? store the Posix path of the file for import with Devonthink			    6 � 7 7 ~   s t o r e   t h e   P o s i x   p a t h   o f   t h e   f i l e   f o r   i m p o r t   w i t h   D e v o n t h i n k 	 	 	 4  8 9 8 r   = D : ; : n   = B < = < 1   @ B��
�� 
psxp = l  = @ >���� > c   = @ ? @ ? o   = >���� 0 	paperfile 	PaperFile @ m   > ?��
�� 
alis��  ��   ; o      ����  0 posixpaperfile PosixPaperFile 9  A B A l  E E��������  ��  ��   B  C D C l  E E�� E F��   E ( " check if the file contains '.pdf'    F � G G D   c h e c k   i f   t h e   f i l e   c o n t a i n s   ' . p d f ' D  H I H Z   E � J K���� J E   E J L M L l  E H N���� N c   E H O P O o   E F���� 0 	paperfile 	PaperFile P m   F G��
�� 
TEXT��  ��   M m   H I Q Q � R R  . p d f K k   M � S S  T U T l  M M��������  ��  ��   U  V W V O   M � X Y X k   S � Z Z  [ \ [ l  S S�� ] ^��   ] "  import file from Posix path    ^ � _ _ 8   i m p o r t   f i l e   f r o m   P o s i x   p a t h \  ` a ` r   S d b c b l  S ` d���� d I  S `�� e f
�� .DTpacd01DTrc       utxt e o   S T����  0 posixpaperfile PosixPaperFile f �� g��
�� 
DTto g 1   W \��
�� 
DTcg��  ��  ��   c o      ���� 0 importedfile ImportedFile a  h i h l  e e��������  ��  ��   i  j k j l  e e�� l m��   l    get list of similar files    m � n n 4   g e t   l i s t   o f   s i m i l a r   f i l e s k  o p o r   e t q r q I  e p���� s
�� .DTpacd14list    ��� null��   s �� t��
�� 
DTrc t o   i l���� 0 importedfile ImportedFile��   r o      ���� 0 similarfiles SimilarFiles p  u v u l  u u��������  ��  ��   v  w x w l  u u�� y z��   y !  iterate over similar files    z � { { 6   i t e r a t e   o v e r   s i m i l a r   f i l e s x  | } | X   u � ~��  ~ k   � � � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � A ; SimilarFiles contains the added file itself (score is 1.0)    � � � � v   S i m i l a r F i l e s   c o n t a i n s   t h e   a d d e d   f i l e   i t s e l f   ( s c o r e   i s   1 . 0 ) �  � � � l  � ��� � ���   � ? 9 skip the added file itself (identified by the record ID)    � � � � r   s k i p   t h e   a d d e d   f i l e   i t s e l f   ( i d e n t i f i e d   b y   t h e   r e c o r d   I D ) �  ��� � Z   � � � ����� � >  � � � � � n   � � � � � 1   � ���
�� 
ID   � o   � ����� 0 similar Similar � n   � � � � � 1   � ���
�� 
ID   � o   � ����� 0 importedfile ImportedFile � k   � � � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � @ : if there is at least one record with very high similarity    � � � � t   i f   t h e r e   i s   a t   l e a s t   o n e   r e c o r d   w i t h   v e r y   h i g h   s i m i l a r i t y �  � � � l  � ��� � ���   � 1 + we delete the file we just added and break    � � � � V   w e   d e l e t e   t h e   f i l e   w e   j u s t   a d d e d   a n d   b r e a k �  ��� � Z   � � � ����� � ?  � � � � � n   � � � � � 1   � ���
�� 
DTso � o   � ����� 0 similar Similar � m   � � � � ?�ffffff � k   � � � �  � � � I  � ����� �
�� .coredelobool       null��   � �� ���
�� 
DTrc � o   � ����� 0 importedfile ImportedFile��   �  ��� �  S   � ���  ��  ��  ��  ��  ��  ��  �� 0 similar Similar  o   x {���� 0 similarfiles SimilarFiles }  ��� � l  � ���������  ��  ��  ��   Y m   M P � ��                                                                                  DNtp  alis    :  Macintosh HD                   BD ����DEVONthink 3.app                                               ����            ����  
 cu             Applications   /:Applications:DEVONthink 3.app/  "  D E V O N t h i n k   3 . a p p    M a c i n t o s h   H D  Applications/DEVONthink 3.app   / ��   W  ��� � l  � ���������  ��  ��  ��  ��  ��   I  ��� � l  � ���������  ��  ��  ��  �� 0 	paperfile 	PaperFile / l  ( 1 ����� � e   ( 1 � � n   ( 1 � � � 2   . 0��
�� 
file � 4   ( .�� �
�� 
cfol � l  * - ����� � c   * - � � � o   * +���� 0 randomfolder RandomFolder � m   + ,��
�� 
alis��  ��  ��  ��   -  ��� � l  � ���������  ��  ��  ��  �� 0 randomfolder RandomFolder % l    ����� � e     � � n     � � � 2    ��
�� 
cfol � 4    �� �
�� 
cfol � o    ���� 0 zoterofolder ZoteroFolder��  ��  ��    m     � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��     ��� � l     ����~��  �  �~  ��       �} � ��}   � �|
�| .aevtoappnull  �   � **** � �{ ��z�y � ��x
�{ .aevtoappnull  �   � **** � k     � � �   � �   � �  �w�w  �z  �y   � �v�u�t�v 0 randomfolder RandomFolder�u 0 	paperfile 	PaperFile�t 0 similar Similar � �s �r �q ��p�o�n�m�l�k�j�i�h Q ��g�f�e�d�c�b�a�`�_ ��^
�s 
psxf�r 0 zoterofolder ZoteroFolder�q (0 comparisondatabase ComparisonDatabase
�p 
cfol
�o 
kocl
�n 
cobj
�m .corecnte****       ****
�l 
alis
�k 
file
�j 
psxp�i  0 posixpaperfile PosixPaperFile
�h 
TEXT
�g 
DTto
�f 
DTcg
�e .DTpacd01DTrc       utxt�d 0 importedfile ImportedFile
�c 
DTrc
�b .DTpacd14list    ��� null�a 0 similarfiles SimilarFiles
�` 
ID  
�_ 
DTso
�^ .coredelobool       null�x �)��/E�O�E�O� � �*��/�-E[��l 	kh   �*��&/�-E[��l 	kh ��&�,E�O��&� za  n�a *a ,l E` O*a _ l E` O G_ [��l 	kh �a ,_ a , "�a ,a  *a _ l OY hY h[OY��OPUOPY hOP[OY�oOP[OY�PUascr  ��ޭ