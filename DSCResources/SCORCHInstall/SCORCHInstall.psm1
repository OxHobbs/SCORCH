��
 
 I m p o r t - M o d u l e   $ P S S c r i p t R o o t \ . . \ . . \ x P D T . p s m 1 
 
 
 
 f u n c t i o n   G e t - T a r g e t R e s o u r c e 
 
 { 
 
         [ C m d l e t B i n d i n g ( ) ] 
 
         [ O u t p u t T y p e ( [ S y s t e m . C o l l e c t i o n s . H a s h t a b l e ] ) ] 
 
         p a r a m 
 
         ( 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D e s c r i p t i o n , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ P r o d u c t K e y , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ S e r v i c e U s e r C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ S e t u p C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ V a l i d a t e S e t ( " M a n a g e m e n t S e r v e r " , " R u n b o o k S e r v e r " , " W e b C o m p o n e n t s " , " A l l " ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ C o m p o n e n t s , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D a t a b a s e S e r v e r , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ D a t a b a s e U s e r C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ S o u r c e F o l d e r 
 
         ) 
 
 
 
         $ r e t u r n V a l u e   =   @ { 
 
                 D e s c r i p t i o n   =   $ D e s c r i p t i o n 
 
                 E n s u r e   =   $ E n s u r e 
 
                 P r o d u c t K e y   =   $ P r o d u c t K e y 
 
                 C o m p o n e n t s   =   $ C o m p o n e n t s 
 
                 I n s t a l l D i r e c t o r y   =   $ I n s t a l l D i r 
 
                 D a t a b a s e S e r v e r   =   $ D a t a b a s e S e r v e r 
 
                 S o u r c e F o l d e r   =   $ S o u r c e F o l d e r 
 
         } 
 
 
 
         $ r e t u r n V a l u e     
 
 } 
 
 
 
 
 
 f u n c t i o n   S e t - T a r g e t R e s o u r c e 
 
 { 
 
         [ C m d l e t B i n d i n g ( ) ] 
 
         p a r a m 
 
         ( 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D e s c r i p t i o n , 
 
 
 
                 [ V a l i d a t e S e t ( " P r e s e n t " , " A b s e n t " ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ E n s u r e , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ P r o d u c t K e y , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ S e r v i c e U s e r C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ S e t u p C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ V a l i d a t e S e t ( " M a n a g e m e n t S e r v e r " , " R u n b o o k S e r v e r " , " W e b C o m p o n e n t s " , " A l l " ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ C o m p o n e n t s , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ I n s t a l l D i r e c t o r y , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D a t a b a s e S e r v e r , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D a t a b a s e N a m e   =   ' O r c h e s t r a t o r ' , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ D a t a b a s e U s e r C r e d e n t i a l , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ W e b C o n s o l e P o r t   =   ' 8 2 ' , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ W e b S e r v i c e P o r t   =   ' 8 1 ' , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ O r c h e s t r a t o r U s e r G r o u p S I D , 
 
 
 
                 [ S y s t e m . B o o l e a n ] 
 
                 $ R e m o t e A c c e s s , 
 
 
 
                 [ S y s t e m . B o o l e a n ] 
 
                 $ U s e M i c r o s o f t U p d a t e , 
 
 
 
                 [ S y s t e m . B o o l e a n ] 
 
                 $ E n a b l e T e l e m e t r y R e p o r t i n g , 
 
 
 
                 [ V a l i d a t e S e t ( " a l w a y s " ,   " q u e u e d " ,   " n e v e r " ) ]                 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ E r r o r R e p o r t i n g   =   " a l w a y s " , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ S o u r c e F o l d e r 
 
         ) 
 
 
 
         # W r i t e - V e r b o s e   " U s e   t h i s   c m d l e t   t o   d e l i v e r   i n f o r m a t i o n   a b o u t   c o m m a n d   p r o c e s s i n g . " 
 
 
 
         # W r i t e - D e b u g   " U s e   t h i s   c m d l e t   t o   w r i t e   d e b u g   i n f o r m a t i o n   w h i l e   t r o u b l e s h o o t i n g . " 
 
 
 
         # I n c l u d e   t h i s   l i n e   i f   t h e   r e s o u r c e   r e q u i r e s   a   s y s t e m   r e b o o t . 
 
         # $ g l o b a l : D S C M a c h i n e S t a t u s   =   1 
 
 
 
         $ P a t h T o S e t u p   =   J o i n - P a t h   $ S o u r c e F o l d e r   - C h i l d P a t h   ' S e t u p \ S e t u p . e x e ' 
 
         $ I n s t a l l e r   =   R e s o l v e P a t h   $ P a t h T o S e t u p 
 
 
 
         i f   ( $ E n s u r e   - e q   ' P r e s e n t ' ) 
 
         { 
 
                 $ I n s t a l l S t r i n g   =   [ S y s t e m . C o l l e c t i o n s . A r r a y L i s t ] : : n e w ( ) 
 
 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( ' / S i l e n t ' )   
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / K e y : $ P r o d u c t K e y " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / S e r v i c e U s e r N a m e : $ ( $ S e r v i c e U s e r C r e d e n t i a l . U s e r N a m e ) " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / S e r v i c e P a s s w o r d : $ ( $ S e r v i c e U s e r C r e d e n t i a l . G e t N e t w o r k C r e d e n t i a l ( ) . P a s s w o r d ) " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / C o m p o n e n t s : $ C o m p o n e n t s " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / D b S e r v e r : $ D a t a b a s e S e r v e r " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / D b U s e r : $ ( $ D a t a b a s e U s e r C r e d e n t i a l . U s e r N a m e ) " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / D b P a s s w o r d : $ ( $ D a t a b a s e U s e r C r e d e n t i a l . G e t N e t w o r k C r e d e n t i a l ( ) . P a s s w o r d ) " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / D b N a m e N e w : $ D a t a b a s e N a m e " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / W e b S e r v i c e P o r t : $ W e b S e r v i c e P o r t " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / W e b C o n s o l e P o r t : $ W e b C o n s o l e P o r t " ) 
 
                 $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / E n a b l e E r r o r R e p o r t i n g : $ E r r o r R e p o r t i n g " ) 
 
 
 
                 i f   ( $ I n s t a l l D i r e c t o r y ) 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / I n s t a l l D i r : $ I n s t a l l D i r e c t o r y " )                         
 
                 } 
 
 
 
                 i f   ( $ O r c h e s t r a t o r U s e r G r o u p S I D ) 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / O r c h e s t r a t o r U s e r s G r o u p : $ O r c h e s t r a t o r U s e r G r o u p S I D " ) 
 
                 } 
 
 
 
                 i f   ( $ R e m o t e A c c e s s ) 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / O r c h e s t r a t o r R e m o t e " ) 
 
                 } 
 
 
 
                 i f   ( $ U s e M i c r o s o f t U p d a t e ) 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / U s e M i c r o s o f t U p d a t e : 1 " ) 
 
                 } 
 
                 e l s e 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / U s e M i c r o s o f t U p d a t e : 0 " ) 
 
                 } 
 
 
 
                 i f   ( $ E n a b l e T e l e m e t r y R e p o r t i n g ) 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / S e n d C E I P R e p o r t s : 0 " ) 
 
                 } 
 
                 e l s e 
 
                 { 
 
                         $ n u l l   =   $ I n s t a l l S t r i n g . A d d ( " / S e n d C E I P R e p o r t s : 1 " ) 
 
                 } 
 
 
 
                 $ F i n a l I n s t a l l S t r i n g   =   $ I n s t a l l S t r i n g   - j o i n   '   ' 
 
                 W r i t e - V e r b o s e   " I n s t a l l   i s   $ I n s t a l l e r " 
 
                 W r i t e - V e r b o s e   " I n s t a l l i n g   w i t h   t h e   i n s t a l l   s t r i n g :   $ F i n a l I n s t a l l S t r i n g " 
 
                 i f   ( $ P s D s c C o n t e x t . R u n A s U s e r )   
 
                 { 
 
                         W r i t e - V e r b o s e   " U s e r :   $ ( $ P s D s c C o n t e x t . R u n A s U s e r ) " 
 
                         $ P s D s c C o n t e x t 
 
                 } 
 
 
 
                 $ P r o c e s s   =   S t a r t W i n 3 2 P r o c e s s   - P a t h   $ I n s t a l l e r   - A r g u m e n t s   $ F i n a l I n s t a l l S t r i n g   - C r e d e n t i a l   $ S e t u p C r e d e n t i a l   - A s T a s k 
 
                 W r i t e - V e r b o s e   $ P r o c e s s 
 
                 W a i t F o r W i n 3 2 P r o c e s s E n d   - P a t h   $ I n s t a l l e r   - A r g u m e n t s   $ F i n a l I n s t a l l S t r i n g   - C r e d e n t i a l   $ S e t u p C r e d e n t i a l 
 
 
 
         } 
 
         e l s e i f   ( $ E n s u r e   - e q   ' A b s e n t ' ) 
 
         { 
 
                 $ A r g u m e n t s   =   " / S i l e n t   / U n i n s t a l l " 
 
                 $ P r o c e s s   =   S t a r t W i n 3 2 P r o c e s s   - P a t h   $ I n s t a l l e r   - A r g u m e n t s   $ A r g u m e n t s   - C r e d e n t i a l   $ S e t u p C r e d e n t i a l   - A s T a s k 
 
                 W r i t e - V e r b o s e   $ P r o c e s s 
 
                 W a i t F o r W i n 3 2 P r o c e s s E n d   - P a t h   $ I n s t a l l e r   - A r g u m e n t s   $ A r g u m e n t s   - C r e d e n t i a l   $ S e t u p C r e d e n t i a l 
 
         } 
 
 } 
 
 
 
 
 
 f u n c t i o n   T e s t - T a r g e t R e s o u r c e 
 
 { 
 
         [ C m d l e t B i n d i n g ( ) ] 
 
         [ O u t p u t T y p e ( [ S y s t e m . B o o l e a n ] ) ] 
 
         p a r a m 
 
         ( 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D e s c r i p t i o n , 
 
 
 
                 [ V a l i d a t e S e t ( " P r e s e n t " , " A b s e n t " ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ E n s u r e , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ P r o d u c t K e y , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ S e r v i c e U s e r C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ S e t u p C r e d e n t i a l , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ V a l i d a t e S e t ( " M a n a g e m e n t S e r v e r " , " R u n b o o k S e r v e r " , " W e b C o m p o n e n t s " , " A l l " ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ C o m p o n e n t s , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ I n s t a l l D i r e c t o r y , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D a t a b a s e S e r v e r , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ D a t a b a s e N a m e , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] 
 
                 $ D a t a b a s e U s e r C r e d e n t i a l , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ W e b C o n s o l e P o r t , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ W e b S e r v i c e P o r t , 
 
 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ O r c h e s t r a t o r U s e r G r o u p S I D , 
 
 
 
                 [ S y s t e m . B o o l e a n ] 
 
                 $ R e m o t e A c c e s s , 
 
 
 
                 [ S y s t e m . B o o l e a n ] 
 
                 $ U s e M i c r o s o f t U p d a t e , 
 
 
 
                 [ S y s t e m . B o o l e a n ] 
 
                 $ E n a b l e T e l e m e t r y R e p o r t i n g , 
 
 
 
                 [ V a l i d a t e S e t ( " a l w a y s " ,   " q u e u e d " ,   " n e v e r " ) ]                 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ E r r o r R e p o r t i n g   =   ' a l w a y s ' , 
 
 
 
                 [ p a r a m e t e r ( M a n d a t o r y   =   $ t r u e ) ] 
 
                 [ S y s t e m . S t r i n g ] 
 
                 $ S o u r c e F o l d e r 
 
         ) 
 
 
 
         $ O r c h e s t r a t o r C o m p o n e n t s   =   G e t - C i m I n s t a n c e   - C l a s s N a m e   W i n 3 2 _ P r o d u c t   - F i l t e r   " n a m e   l i k e   ' S y s t e m   C e n t e r   2 0 1 2   O r c h e s t r a t o r % ' " 
 
 
 
         $ r o l e s   =   @ { 
 
                 M g m t S e r v e r   =   " S y s t e m   C e n t e r   2 0 1 2   O r c h e s t r a t o r   M a n a g e m e n t   S e r v e r " 
 
                 W e b S e r v e r   =   " S y s t e m   C e n t e r   2 0 1 2   O r c h e s t r a t o r   W e b   F e a t u r e s " 
 
                 R u n b o o k S e r v e r   =   " S y s t e m   C e n t e r   2 0 1 2   O r c h e s t r a t o r   R u n b o o k   S e r v e r " 
 
                 R u n b o o k D e s i g n e r   =   " S y s t e m   C e n t e r   2 0 1 2   O r c h e s t r a t o r   R u n b o o k   D e s i g n e r " 
 
         } 
 
 
 
         #   A l l   |   M a n a g e m e n t S e r v e r   |   R u n b o o k S e r v e r   |   W e b C o m p o n e n t s   ) 
 
         $ I s I n s t a l l e d   =   $ n u l l 
 
 
 
         W r i t e - V e r b o s e   " C h e c k i n g   t o   s e e   i f   c o m p o n t e n t s   ( $ C o m p o n e n t s )   i s   i n s t a l l e d . " 
 
         i f   ( $ C o m p o n e n t s   - e q   ' A l l ' ) 
 
         { 
 
                 $ I s I n s t a l l e d   =   $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . R u n b o o k S e r v e r   - a n d 
 
                                               $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . W e b S e r v e r   - a n d 
 
                                               $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . R u n b o o k D e s i g n e r   - a n d 
 
                                               $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . M g m t S e r v e r 
 
         } 
 
         e l s e i f   ( $ C o m p o n e n t s   - e q   ' M a n a g e m e n t S e r v e r ' ) 
 
         { 
 
                 $ I s I n s t a l l e d   =   $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . M g m t S e r v e r 
 
         } 
 
         e l s e i f   ( $ C o m p o n e n t s   - e q   ' R u n b o o k S e r v e r ' ) 
 
         { 
 
                 $ I s I n s t a l l e d   =   $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . R u n b o o k S e r v e r 
 
         } 
 
         e l s e i f   ( $ C o m p o n e n t s   - e q   ' R u n b o o k D e s i g n e r ' ) 
 
         { 
 
                 $ I s I n s t a l l e d   =   $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . R u n b o o k D e s i g n e r 
 
         } 
 
         e l s e i f   ( $ C o m p o n e n t s   - e q   ' W e b C o m p o n e n t s ' ) 
 
         { 
 
                 $ I s I n s t a l l e d   =   $ O r c h e s t r a t o r C o m p o n e n t s . N a m e   - c o n t a i n s   $ r o l e s . W e b S e r v e r 
 
         } 
 
         
 
         i f   ( $ E n s u r e   - e q   ' P r e s e n t ' ) 
 
         { 
 
                 W r i t e - V e r b o s e   " R e t u r n i n g   r e s u l t   f o r   P r e s e n t   s t a t e   ( $ I s I n s t a l l e d ) " 
 
                 r e t u r n   $ I s I n s t a l l e d 
 
         } 
 
 
 
         W r i t e - V e r b o s e   " R e t u r n i n g   r e s u l t   f o r   A b s e n t   s t a t e   $ ( - n o t   $ I s I n s t a l l e d ) ) " 
 
         r e t u r n   ( - n o t   $ I s I n s t a l l e d ) 
 
 } 
 
 
 
 E x p o r t - M o d u l e M e m b e r   - F u n c t i o n   * - T a r g e t R e s o u r c e 
 
 