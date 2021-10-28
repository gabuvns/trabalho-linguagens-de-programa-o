-- Haskell data types for the abstract syntax.
-- Generated by the BNF converter.

{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module AbsLI where

import Prelude (Char, Double, Integer, String)
import qualified Prelude as C (Eq, Ord, Show, Read)
import qualified Data.String

newtype Ident = Ident String
  deriving (C.Eq, C.Ord, C.Show, C.Read, Data.String.IsString)

data Program = Prog Stm
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Stm = SAss Ident Exp | SBlock [Stm] | SWhile Exp Stm
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Exp
    = EOr Exp Exp    -- representa expressao Or
    | EAnd Exp Exp   -- representa expressao And
    | ENot Exp       -- representa expressao Not
    | ECon Exp Exp   -- representa expressao concatenacao de strings
    | EAdd Exp Exp
    | ESub Exp Exp
    | EMul Exp Exp
    | EDiv Exp Exp
    | EInt Integer
    | EVar Ident
    | EStr String    -- representa string 
    | ETrue          -- representa literal True 
    | EFalse         -- representa literal False
  deriving (C.Eq, C.Ord, C.Show, C.Read)

