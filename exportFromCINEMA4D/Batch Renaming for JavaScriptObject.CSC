XC4Dscrp  + ��     ��              �   ���� DE   �   �   ����      ��   F B a t c h   R e n a m i n g   f o r   J a v a S c r i p t O b j e c t  �   ��  L / * 
 N a m e :               C . O . F . F . E . E .   B a t c h   R e n a m i n g   f o r   J a v a S c r i p t O b j e c t 
 V e r s i o n :         0 . 1   ( J u l y   3 0   2 0 0 9 ) 
 A u t h o r :           F i n n   R u d o l p h 
 S u p p o r t :         h t t p : / / f i n n r u d o l p h . d e / J a v a S c r i p t O b j e c t / C I N E M A _ 4 D 
 
 L i c e n c e :         T h i s   s c r i p t   i s   l i c e n s e d   u n d e r   a   C r e a t i v e   C o m m o n s 
                         A t t r i b u t i o n - N o n c o m m e r c i a l   3 . 0   U n p o r t e d   L i c e n s e 
                         ( h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c / 3 . 0 / ) . 
 
                         Y o u   a r e   f r e e : 
                                 +   t o   S h a r e   -   t o   c o p y ,   d i s t r i b u t e   a n d   t r a n s m i t   t h e   w o r k 
                                 +   t o   R e m i x   -   t o   a d a p t   t h e   w o r k 
 
                         U n d e r   t h e   f o l l o w i n g   c o n d i t i o n s : 
                                 +   A t t r i b u t i o n .   Y o u   m u s t   a t t r i b u t e   t h e   w o r k   i n   t h e   m a n n e r   s p e c i f i e d   b y   t h e   a u t h o r   o r   l i c e n s o r 
                                     ( b u t   n o t   i n   a n y   w a y   t h a t   s u g g e s t s   t h a t   t h e y   e n d o r s e   y o u   o r   y o u r   u s e   o f   t h e   w o r k ) . 
                                 +   N o n c o m m e r c i a l .   Y o u   m a y   n o t   u s e   t h i s   w o r k   f o r   c o m m e r c i a l   p u r p o s e s . 
 
                         +   F o r   a n y   r e u s e   o r   d i s t r i b u t i o n ,   y o u   m u s t   m a k e   c l e a r   t o   o t h e r s   t h e   l i c e n s e   t e r m s   o f   t h i s   w o r k . 
                         +   A n y   o f   t h e   a b o v e   c o n d i t i o n s   c a n   b e   w a i v e d   i f   y o u   g e t   p e r m i s s i o n   f r o m   t h e   c o p y r i g h t   h o l d e r . 
                         +   N o t h i n g   i n   t h i s   l i c e n s e   i m p a i r s   o r   r e s t r i c t s   t h e   a u t h o r ' s   m o r a l   r i g h t s . 
 * / 
 
 
 / *   R e n a m e s   " _ t m p _ [ i m a g e s P e r R e v o l u t i o n ] _ [ f r a m e N u m b e r ] . [ f i l e T y p e ] "   t o   " [ x R o t a t i o n S t e p ] _ [ y R o t a t i o n S t e p ] . [ f i l e T y p e ] "   * / 
 m a i n ( d o c , o p ) 
 { 
 	 / *   L e t   t h e   u s e r   s e l e c t   a   d i r e c t o r y   ( n o   a u t o s e l e c t i o n   t o   s u p p o r t   N E T   r e n d e r i n g )   * / 
 	 v a r   f r a m e D i r e c t o r y   =   n e w ( F i l e n a m e ) ; 	 
 	 v a r   d i a l o g T i t l e   =   " L o c a t e   t h e   d i r e c t o r y   c o n t a i n i n g   t h e   t e m p o r a r y   ( _ t m p _ )   i m a g e s   t o   b a t c h   r e n a m e   t h e m . " ; 
 	 i f ( f r a m e D i r e c t o r y - > P a t h S e l e c t ( d i a l o g T i t l e ) ) 
 	 { 
 	 	 / *   B r o w s e   t h e   d i r e c t o r y   r e n a m i n g   e v e r y t h i n g   t h a t   m a t c h e s   t h e   _ t m p _   p a t t e r n   * / 
 	 	 v a r   b r o w s e F r a m e D i r e c t o r y   =   n e w ( B r o w s e F i l e s ) ; 
 	 	 b r o w s e F r a m e D i r e c t o r y - > I n i t ( f r a m e D i r e c t o r y , F A L S E ) ; 
 	     w h i l e ( b r o w s e F r a m e D i r e c t o r y - > G e t N e x t ( ) ) 
 	     { 
 	 	 	 / *   S e a r c h   f o r   f i l e s   o n l y   * / 
 	         i f ( b r o w s e F r a m e D i r e c t o r y - > I s D i r ( )   ! =   T R U E ) 
 	 	 	 { 
 	 	 	 	 v a r   t e m p F i l e N a m e S t r i n g   =   b r o w s e F r a m e D i r e c t o r y - > G e t N a m e ( ) ; 
 	 	 	 	 
 	 	 	 	 / *   C h e c k   f o r   t m p   f i l e s   * / 
 	 	 	 	 i f ( s t r s t r ( t e m p F i l e N a m e S t r i n g , " _ t m p _ " )   ! =   - 1 ) 
 	 	 	 	 { 	 	 
 	 	 	 	 	 / *   E x t r a c t   i m a g e s P e r R e v o l u t i o n   a n d   f r a m e N u m b e r   f r o m   f i l e n a m e   * / 
 	 	 	 	 	 v a r   i m a g e s P e r R e v o l u t i o n   =   s t r m i d ( t e m p F i l e N a m e S t r i n g , 5 , 3 ) ; 
 	 	 	 	 	 i m a g e s P e r R e v o l u t i o n   =   i n t ( e v a l u a t e ( i m a g e s P e r R e v o l u t i o n ) ) ; 
 	 	 	 	 	 v a r   f r a m e N u m b e r   =   s t r m i d ( t e m p F i l e N a m e S t r i n g , 9 , 4 ) ; 
 	 	 	 	 	 f r a m e N u m b e r   =   i n t ( e v a l u a t e ( f r a m e N u m b e r ) ) ; 
 
 	 	 	 	 	 v a r   f i l e S u f f i x   =   s t r m i d ( t e m p F i l e N a m e S t r i n g , 1 3 , 4 ) ; 
 	 	 	 	 	 
 	 	 	 	 	 v a r   s t e p W i d t h   =   3 6 0 / i m a g e s P e r R e v o l u t i o n ; 
 	 	 	 	 	 v a r   x R e v o l u t i o n C o u n t   =   i n t ( f r a m e N u m b e r   /   i m a g e s P e r R e v o l u t i o n ) ; 
 	 	 	 	 	 v a r   y R e v o l u t i o n C o u n t   =   i n t ( f r a m e N u m b e r )   -   ( x R e v o l u t i o n C o u n t   *   i m a g e s P e r R e v o l u t i o n ) ; 
 	 	 	 	 	 	 	 	 	 	 
 	 	 	 	 	 / *   R e n a m e   t h e   f i l e   * / 
 	 	 	 	 	 v a r   n e w F i l e N a m e   =   s t r a d d ( t o s t r i n g ( x R e v o l u t i o n C o u n t , " . 3 d " ) ,   " _ " ,   t o s t r i n g ( y R e v o l u t i o n C o u n t , " . 3 d " ) ) ; 
 	 	 	 	 	 n e w F i l e N a m e   =   s t r a d d ( n e w F i l e N a m e , f i l e S u f f i x ) ; 
 	 	 	 	 	 	 
 	 	 	 	 	 v a r   o l d F i l e   =   n e w ( F i l e n a m e ) ; 
 	 	 	 	 	 o l d F i l e   =   f r a m e D i r e c t o r y - > A d d ( t e m p F i l e N a m e S t r i n g ) ; 
 
 	 	 	 	 	 v a r   n e w F i l e   =   n e w ( F i l e n a m e ) ; 
 	 	 	 	 	 n e w F i l e   =   f r a m e D i r e c t o r y - > A d d ( n e w F i l e N a m e ) ; 
 	 	 	 	 	 	 
 	 	 	 	 	 v a r   o l d F i l e P a t h   =   f r a m e D i r e c t o r y - > G e t F u l l S t r i n g ( ) ; 
 	 	 	 	 	 o l d F i l e P a t h   =   s t r a d d ( o l d F i l e P a t h , t e m p F i l e N a m e S t r i n g ) ; 
 	 
 	 	 	 	 	 i f ( G e F i l e R e n a m e ( o l d F i l e ,   n e w F i l e ) ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 p r i n t l n ( " R e n a m e d :   " , o l d F i l e - > G e t F u l l S t r i n g ( ) , "   - >   " , n e w F i l e - > G e t F u l l S t r i n g ( ) ) ; 	 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 }  �        �        �   ��    E N A B L E = T R U E ; �   F B a t c h   R e n a m i n g   f o r   J a v a S c r i p t O b j e c t                          �   alias2        �    &�~)	\	C    ��                        ��     F}    �     �    