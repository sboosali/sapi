{-# LANGUAGE ForeignFunctionInterface, CPP #-}
module SAPI.Bindings where

import Foreign()
import Foreign.C.String

#include "calling_convention.h"


example :: IO String
example = c_example >>= peekCString

foreign import CALLING_CONVENTION safe "recognition.h example"
 c_example :: IO CString
