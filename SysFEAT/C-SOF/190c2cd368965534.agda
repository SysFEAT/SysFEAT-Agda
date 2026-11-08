{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Property: 
A Concept Property is an immutable factual characteristic of a Conceptual Entity.Example: names, amounts, etc.

Documentation : https://framework.sysfeat.com/pages/190c2cd368965534.htm

External references:
  DDD - Glossary - Value Object: https://www.dddcommunity.org/resources/ddd_terms?valueobject
  Martin Fowler - Value Object: https://martinfowler.com/bliki/ValueObject.html
  OMG - UAF - OperationalInformation: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalInformation
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.190c2cd368965534 where -- ========== ConceptProperty

open import Agda.Primitive
open import SysFEAT.EA.2c9c86dc6adb8147 public -- ConceptualEntityAsset
open import SysFEAT.SOF.c189d5f068ae4d75 public -- InformationProperty

ConceptProperty : ClassOfElement
ConceptProperty = Element


--  ConceptProperty withAspect ConceptualEntityAsset
st-190c2cd368965534-2c9c86dc6adb8147 : ConceptProperty ⊏ₐₑ (ConceptualEntityAsset (lsuc(lzero)))
st-190c2cd368965534-2c9c86dc6adb8147 = polySubTypeOf-identity

--  ConceptProperty is subTypeOf InformationProperty
st-190c2cd368965534-c189d5f068ae4d75 : ConceptProperty ⊏ₑ InformationProperty
st-190c2cd368965534-c189d5f068ae4d75 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Concept Property: -}
specializedConceptProperty :  Linkage ConceptProperty ConceptProperty
specializedConceptProperty = make_subTypeOf "Specialized Concept Property" "Specialized Concept Property"

postulate -- specializedConceptProperty is subTypeOf specializedInformationProperty
  st-d267030868b2576d-c189dcc568ae56ac  : specializedConceptProperty  ⊏⋆ᵣ  specializedInformationProperty
