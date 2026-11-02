{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Resource: 


Documentation : https://framework.sysfeat.com/pages/828885fa6ae86b23.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.828885fa6ae86b23 where -- ========== PhysicalResource

open import Agda.Primitive
open import SysFEAT.SOF.a04ea6866ae7465e public -- ResourceLevel

PhysicalResource : ∀ (u : Level) → ClassOfMixedOrderEntity u
PhysicalResource u = MixedOrderEntity u

--  PhysicalResource is subTypeOf ResourceLevel
st-828885fa6ae86b23-a04ea6866ae7465e : ∀ {u v} → (PhysicalResource u) ⊏⋆ₑ (ResourceLevel v)
st-828885fa6ae86b23-a04ea6866ae7465e = trivialPolySubTypeOfEntity


