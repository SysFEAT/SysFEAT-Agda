{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstraction Schema: 


Documentation : https://framework.sysfeat.com/pages/1a4623c86afb6437.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a4623c86afb6437 where -- ========== AbstractionSchema

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategorizationSchema

AbstractionSchema : ∀ (u : Level) → ClassOfMixedOrderEntity (lsuc u) 
AbstractionSchema u  = MixedOrderEntity (lsuc u) 


--  AbstractionSchema is subTypeOf AssetCategorizationSchema
st-1a4623c86afb6437-f69620466a0f9c2f : ∀ {u v} → AbstractionSchema u ⊏⋆ₑ AssetCategorizationSchema v
st-1a4623c86afb6437-f69620466a0f9c2f = trivialPolySubTypeOfEntity


