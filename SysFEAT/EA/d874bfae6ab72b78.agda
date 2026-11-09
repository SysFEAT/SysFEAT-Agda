{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Dictionary: 


Documentation : https://framework.sysfeat.com/pages/d874bfae6ab72b78.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d874bfae6ab72b78 where -- ========== NoSQLDictionary

open import Agda.Primitive
open import SysFEAT.EA.d874bc056ab7254a public -- PhysicalDataDictionary
open import SysFEAT.EA.d874be1f6ab728a2 public -- NoSQLDataAsset
open import SysFEAT.EA.d5e6ddd05c46547c public -- SOftwareTechnology

NoSQLDictionary : ClassOfMixedOrderEntity
NoSQLDictionary = MixedOrderEntity


--  NoSQLDictionary is subTypeOf PhysicalDataDictionary
st-d874bfae6ab72b78-d874bc056ab7254a : NoSQLDictionary ⊏ₑ PhysicalDataDictionary
st-d874bfae6ab72b78-d874bc056ab7254a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged NoSQL Block: -}
packagedNoSQLBlock : ∀ {u} →  Linkage NoSQLDictionary (NoSQLDataAsset u)
packagedNoSQLBlock = make_nestingRelation "Packaged NoSQL Block" "Packaged NoSQL Block"


-- -------------------------------------------------------------------------------------------- 
{- Required Software Technology: -}
requiredSOftwareTechnology :  Linkage NoSQLDictionary SOftwareTechnology
requiredSOftwareTechnology = make_Relation "Required Software Technology" "Required Software Technology"

