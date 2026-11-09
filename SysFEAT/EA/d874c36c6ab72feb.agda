{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Library: 


Documentation : https://framework.sysfeat.com/pages/d874c36c6ab72feb.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d874c36c6ab72feb where -- ========== NoSQLLibrary

open import Agda.Primitive
open import SysFEAT.EA.d874bfae6ab72b78 public -- NoSQLDictionary
open import SysFEAT.SOF.3aca50c46aa63f3b public -- ReferenceDictionary

NoSQLLibrary : ClassOfMixedOrderEntity
NoSQLLibrary = MixedOrderEntity


--  NoSQLLibrary is subTypeOf NoSQLDictionary
st-d874c36c6ab72feb-d874bfae6ab72b78 : NoSQLLibrary ⊏ₑ NoSQLDictionary
st-d874c36c6ab72feb-d874bfae6ab72b78 = polySubTypeOf-identity

--  NoSQLLibrary is subTypeOf ReferenceDictionary
st-d874c36c6ab72feb-3aca50c46aa63f3b : NoSQLLibrary ⊏ₑ ReferenceDictionary
st-d874c36c6ab72feb-3aca50c46aa63f3b = polySubTypeOf-identity


-- == Relations =======================
