{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstraction Category: 


Documentation : https://framework.sysfeat.com/pages/1a4645156afb79dd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a4645156afb79dd where -- ========== AbstractionCategory

open import Agda.Primitive
open import SysFEAT.SOF.1a461b676afb4ec5 public -- AssetCategory
open import SysFEAT.SOF.1a4643fa6afb786e public -- AbstractionCategoryType

AbstractionCategory : ∀ (u : Level) → AbstractionCategoryType u
AbstractionCategory u = AssetCategory u


--  AbstractionCategory is subTypeOf AssetCategory
st-1a4645156afb79dd-1a461b676afb4ec5 : ∀ {u v} → AbstractionCategory u ⊏⋆ₑ AssetCategory v
st-1a4645156afb79dd-1a461b676afb4ec5 = trivialPolySubTypeOfEntity

postulate -- AbstractionCategory is PowerInstanceOf Abstraction Category Type
  pi-1a4645946afb7aa6 : ∀ {u} → AbstractionCategory u  ∷ₚₑ AbstractionCategoryType u 

-- == Relations =======================
