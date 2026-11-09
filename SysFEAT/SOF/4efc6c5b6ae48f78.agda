{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Condition Category: 
A Condition Category is a class of  Condition Property Type.Example: Measurement Types (Performance, Security, Cost), PESTEL (political, economic, social, environmental, legal)It is used to group Condition Property Type(ies) by domain of concerns represented by Family of Measurement.

Documentation : https://framework.sysfeat.com/pages/4efc6c5b6ae48f78.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4efc6c5b6ae48f78 where -- ========== ConditionCategory

open import Agda.Primitive
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategory
open import SysFEAT.SOF.6f9c71356a0f3116 public -- FamilyOfMeasurement

ConditionCategory : ∀ (u : Level) → MetaClass u 
ConditionCategory u  = ClassOfEntity u 


--  ConditionCategory is subTypeOf ConceptCategory
st-4efc6c5b6ae48f78-629565166ad71b60 : ∀ {u v} → (ConditionCategory u) ⊏⋆ₑ (ConceptCategory v)
st-4efc6c5b6ae48f78-629565166ad71b60 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Condition Category Family: -}
conditionCategoryFamily : ∀ {u v} →  Linkage (ConditionCategory u) (FamilyOfMeasurement v)
conditionCategoryFamily = make_instanceOf "Condition Category Family" "Condition Category Family"

postulate -- conditionCategoryFamily is subTypeOf parentFamily
  st-051d13656ae96f13-890a8a9e6ae8578e  : ∀ {u v} → conditionCategoryFamily {u} {u ⊔ v}  ⊏⋆ᵣ  parentFamily {lsuc u} {lsuc(u ⊔ v)}

  --8d1fa37b6ae82572 :                    ∀ {u v} → parentFamily {u} {u ⊔ v} ⊏⋆ᵣ instanceOfEntity {lsuc u} {lsuc (u ⊔ v)}
