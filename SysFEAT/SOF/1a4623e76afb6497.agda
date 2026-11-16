{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstraction Family: 
Abstraction Familys are Asset Category Familys that depict a abstraction categorization of Operating Assets.

Documentation : https://framework.sysfeat.com/pages/1a4623e76afb6497.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a4623e76afb6497 where -- ========== AbstractionFamily

open import Agda.Primitive
open import SysFEAT.SOF.0e0c15616afb4b13 public -- AssetCategoryFamily
open import SysFEAT.SOF.1a4623c86afb6437 public -- AbstractionSchema

AbstractionFamily : AbstractionSchema
AbstractionFamily = AssetCategoryFamily

--  AbstractionFamily is subTypeOf AssetCategoryFamily
st-1a4623e76afb6497-0e0c15616afb4b13 : ∀ {u v} → AbstractionFamily u ⊏⋆ₑ AssetCategoryFamily v
st-1a4623e76afb6497-0e0c15616afb4b13 = trivialPolySubTypeOfEntity

postulate -- AbstractionFamily is PowerInstanceOf Abstraction Schema
  pi-1a4624766afb65f7 : AbstractionFamily ∷ₚₑ AbstractionSchema

-- == Relations =======================
