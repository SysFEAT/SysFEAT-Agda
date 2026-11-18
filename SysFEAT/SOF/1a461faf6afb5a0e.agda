{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Level: 


Documentation : https://framework.sysfeat.com/pages/1a461faf6afb5a0e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a461faf6afb5a0e where -- ========== LogicalLevel

open import Agda.Primitive
open import SysFEAT.SOF.1a461f766afb5920 public -- ResourceLevel

LogicalLevel : ∀ (u : Level) → AbstractionCategoryType u
LogicalLevel u = AbstractionCategory u


--  LogicalLevel is subTypeOf ResourceLevel
st-1a461faf6afb5a0e-1a461f766afb5920 : ∀ {u v} → LogicalLevel u ⊏⋆ₑ ResourceLevel v
st-1a461faf6afb5a0e-1a461f766afb5920 = trivialPolySubTypeOfEntity


