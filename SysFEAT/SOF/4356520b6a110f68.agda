{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Category Family: 
A Data Category Family is a classification or division of Information Assets regarded as having particular shared characteristics.Examples:. Health data, . Financial data, . Contact data.

Documentation : https://framework.sysfeat.com/pages/4356520b6a110f68.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4356520b6a110f68 where -- ========== DataCategoryFamily

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategoryFamily

DataCategoryFamily : ∀ (u : Level) → ClassOfMixedOrderEntity (lsuc u) 
DataCategoryFamily u  = MixedOrderEntity (lsuc u) 


--  DataCategoryFamily is subTypeOf AssetCategoryFamily
st-4356520b6a110f68-f69620466a0f9c2f : ∀ {u v} → DataCategoryFamily u ⊏⋆ₑ AssetCategoryFamily v
st-4356520b6a110f68-f69620466a0f9c2f = trivialPolySubTypeOfEntity


