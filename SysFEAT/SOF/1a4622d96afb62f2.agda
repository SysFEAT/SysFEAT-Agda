{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Level: 


Documentation : https://framework.sysfeat.com/pages/1a4622d96afb62f2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a4622d96afb62f2 where -- ========== PhysicalLevel

open import Agda.Primitive
open import SysFEAT.SOF.1a461f766afb5920 public -- ResourceLevel

PhysicalLevel : ∀ (u : Level) → AbstractionCategoryType u 
PhysicalLevel u  = AbstractionCategory u 


--  PhysicalLevel is subTypeOf ResourceLevel
st-1a4622d96afb62f2-1a461f766afb5920 : ∀ {u v} → PhysicalLevel u ⊏⋆ₑ ResourceLevel v
st-1a4622d96afb62f2-1a461f766afb5920 = trivialPolySubTypeOfEntity


-- == Relations =======================
