data Devise = Euro Double
	| Dollar Double
	deriving (Eq, Show)

cde :: Devise -> Devise
cde a = case a of
	Euro a -> Dollar $ a * devise
	Dollar a -> Euro $ a / devise
	where devise = 1.3383
