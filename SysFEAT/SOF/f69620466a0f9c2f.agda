{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category Family: 
An Asset Category Family is a Category used to classify Asset Types.There are different kinds of Asset Category Family that applies only to certain subtypes of Asset Types.For instance:. Data Category applies to Information Assets.. Process Family applies to Resource Operating Assets.. Risk Type applies to Functional Assets.

Documentation : https://framework.sysfeat.com/pages/f69620466a0f9c2f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f69620466a0f9c2f where -- ========== AssetCategoryFamily

open import Agda.Primitive

AssetCategoryFamily : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
AssetCategoryFamily u = Category u


