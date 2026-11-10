{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Resource: 


Documentation : https://framework.sysfeat.com/pages/828885ab6ae86a83.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.828885ab6ae86a83 where -- ========== LogicalResource

open import Agda.Primitive
open import SysFEAT.SOF.a04ea6866ae7465e public -- ResourceLevel

LogicalResource : ∀ (u : Level) → ConceptualizationLevel u 
LogicalResource u  = ResourceLevel u 


--  LogicalResource is subTypeOf ResourceLevel
st-828885ab6ae86a83-a04ea6866ae7465e : ∀ {u v} → LogicalResource u ⊏⋆ₑ ResourceLevel (lsuc(lsuc(lsuc( v))))
st-828885ab6ae86a83-a04ea6866ae7465e = trivialPolySubTypeOfEntity


