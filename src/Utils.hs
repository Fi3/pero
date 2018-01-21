module Utils
( makePrvKey
, signMessage
,verifySig
) where

import qualified Network.Haskoin.Crypto as CR
import Data.ByteString (ByteString)
import Data.ByteString.Char8 (pack)
import Data.Maybe (fromMaybe)

makePrvKey :: [Char] -> Maybe CR.PrvKey
makePrvKey wif =
  CR.fromWif (pack wif)

-- | Signa a message and check that the signature is valid
--
-- Examples:
--
-- >>> let message = "CIAOCIAO"
-- >>> let prvK = makePrvKey "5HxWvvfubhXpYYpS3tJkw6fq9jE9j18THftkZjHHfmFiWtmAbrj"
-- >>> let signedMessage = signMessage message prvK
-- >>> verifySig message signedMessage (CR.derivePubKey <$> prvK)
-- Just True
--
signMessage :: [Char] -> Maybe CR.PrvKey -> Maybe CR.Signature
signMessage msg prvK =
  let hash = CR.hash256 (pack msg)
        in fmap (CR.signMsg hash) prvK

verifySig :: [Char] ->  Maybe CR.Signature -> Maybe CR.PubKey -> Maybe Bool
verifySig _ Nothing _ = Nothing
verifySig _ _ Nothing = Nothing
verifySig msg sig pubK =
  let hash = CR.hash256 (pack msg)
  in (CR.verifySig hash) <$> sig <*> pubK
