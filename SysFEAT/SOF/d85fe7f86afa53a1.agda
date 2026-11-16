{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Systemic Level: 
A Systemic Level is a category that defined the system granularity of an Operating Asset.

Documentation : https://framework.sysfeat.com/pages/d85fe7f86afa53a1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d85fe7f86afa53a1 where -- ========== SystemicLevel

open import Agda.Primitive
open import SysFEAT.SOF.1a4645156afb79dd public -- AbstractionCategory
open import SysFEAT.SOF.0e0c12ee6afb4347 public -- SystemicFamily

SystemicLevel : ∀ (u : Level) → AbstractionCategoryType u 
SystemicLevel u  = AbstractionCategory u 


--  SystemicLevel is subTypeOf AbstractionCategory
st-d85fe7f86afa53a1-1a4645156afb79dd : ∀ {u v} → SystemicLevel u ⊏⋆ₑ AbstractionCategory v
st-d85fe7f86afa53a1-1a4645156afb79dd = trivialPolySubTypeOfEntity


-- == Relations =======================
