{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Systemic Family: 
The Systemic Family is an Asset Category Family than categorizes Operating Assets by Systemic Levels.

Documentation : https://framework.sysfeat.com/pages/0e0c12ee6afb4347.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0e0c12ee6afb4347 where -- ========== SystemicFamily

open import Agda.Primitive
open import SysFEAT.SOF.1a4623e76afb6497 public -- AbstractionFamily

SystemicFamily : ∀ (u : Level) → AbstractionSchema (lsuc u) 
SystemicFamily u  = AbstractionFamily (lsuc u) 


--  SystemicFamily is subTypeOf AbstractionFamily
st-0e0c12ee6afb4347-1a4623e76afb6497 : ∀ {u v} → SystemicFamily u ⊏⋆ₑ AbstractionFamily v
st-0e0c12ee6afb4347-1a4623e76afb6497 = trivialPolySubTypeOfEntity


