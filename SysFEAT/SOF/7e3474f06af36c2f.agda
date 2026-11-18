{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Category Type: 
A Policy Category Type is a classification of policies. In regulations, it represents sections of the law.

Documentation : https://framework.sysfeat.com/pages/7e3474f06af36c2f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.7e3474f06af36c2f where -- ========== PolicyCategoryType

open import Agda.Primitive
open import SysFEAT.SOF.9397c3d86877842f public -- PolicyAsset
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategoryType

PolicyCategoryType : ∀ (u : Level) → MetaClass (lsuc u)
PolicyCategoryType u = MetaClass u


--  PolicyCategoryType is subTypeOf PolicyAsset
st-7e3474f06af36c2f-9397c3d86877842f : ∀ {u v} → PolicyCategoryType u ⊏⋆ₑ PolicyAsset (lsuc(lsuc( v)))
st-7e3474f06af36c2f-9397c3d86877842f = trivialPolySubTypeOfEntity

--  PolicyCategoryType is subTypeOf ConceptCategoryType
st-7e3474f06af36c2f-629565166ad71b60 : ∀ {u v} → PolicyCategoryType u ⊏⋆ₑ ConceptCategoryType v
st-7e3474f06af36c2f-629565166ad71b60 = trivialPolySubTypeOfEntity


-- == Relations =======================
