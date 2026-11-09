{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Data Asset: 


Documentation : https://framework.sysfeat.com/pages/d874be1f6ab728a2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d874be1f6ab728a2 where -- ========== NoSQLDataAsset

open import Agda.Primitive
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- PhysicalDataBlock

NoSQLDataAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u 
NoSQLDataAsset u  = MixedOrderEntity u 


--  NoSQLDataAsset is subTypeOf PhysicalDataBlock
st-d874be1f6ab728a2-8f1cad7d68ca9df0 : ∀ {u v} → (NoSQLDataAsset u) ⊏⋆ₑ (PhysicalDataBlock v)
st-d874be1f6ab728a2-8f1cad7d68ca9df0 = trivialPolySubTypeOfEntity


-- == Relations =======================
