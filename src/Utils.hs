module Utils
    ( newKeyPair
    ) where

-- import Crypto.PubKey.ECC.ECDSA (KeyPair (KeyPair), toPrivateKey, sign, Signature)
-- import Crypto.PubKey.ECC.Types (Curve (CurveF2m), Point (Point), CurveCommon (CurveCommon), CurveBinary (CurveBinary)) --, PublicPoint, PrivateNumber, CurveBinary, CurveCommon)
-- import Data.ByteArray (convert, Bytes)
-- import Data.ByteString.Char8 (pack)
-- import Crypto.Hash (SHA256 (SHA256))
-- import Crypto.Random.Types (MonadRandom)
import Network.Haskoin.Crypto as CR
-- 
-- point = Point 1 2
-- curveCom = CurveCommon 6720 9823 point 2323 3448
-- curveBin = CurveBinary 9872 curveCom
-- curve = CurveF2m curveBin
-- publicPoint = Point 8 3
-- privateNumber = 93843
-- keyPair = KeyPair curve publicPoint privateNumber
-- privateKey = toPrivateKey keyPair
-- message = pack "ciao ciao ciao"
-- messageConverted :: Bytes
-- messageConverted = convert message
-- signedM :: (MonadRandom m) => m Signature
-- signedM = sign privateKey SHA256 message
-- 
-- 
newKeyPair = CR.getEntropy 45
