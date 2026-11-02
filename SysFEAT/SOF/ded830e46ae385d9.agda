{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Catagory: 
A Data Catagory is a classification or division of Information Assets regarded as having particular shared characteristics.Examples:. Health data, . Financial data, . Contact data.

Documentation : https://framework.sysfeat.com/pages/ded830e46ae385d9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ded830e46ae385d9 where -- ========== DataCatagory

open import Agda.Primitive
open import SysFEAT.UpperOntology.629565166ad71b60 public -- CategoryOfEntity
open import SysFEAT.SOF.4356520b6a110f68 public -- DataCategoryFamily

DataCatagory : ∀ (u : Level) → ClassOfMixedOrderEntity u
DataCatagory u = MixedOrderEntity u

--  DataCatagory is subTypeOf CategoryOfEntity
st-ded830e46ae385d9-629565166ad71b60 : ∀ {u v} → (DataCatagory u) ⊏⋆ₑ (CategoryOfEntity v)
st-ded830e46ae385d9-629565166ad71b60 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Data Category Family: -}
dataCategoryFamily : ∀ {u v} →  Linkage (DataCatagory u) (DataCategoryFamily v)
dataCategoryFamily = make_classOfRelation "Data Category Family" "Data Category Family"

