{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Concept: 
An Individual Concept is an instance of a Concept.For example,  John Doe  is an instance of the  Person  Concept.

Documentation : https://framework.sysfeat.com/pages/362ff6c05b3c47a3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.362ff6c05b3c47a3 where -- ========== IndividualConcept

open import Agda.Primitive
open import SysFEAT.C-SOF.346a3677655b5325 public -- ConceptualIndividual
open import SysFEAT.C-SOF.362fc4365b3c39b8 public -- Concept

IndividualConcept : Concept
IndividualConcept = IndividualAsset

--  IndividualConcept is subTypeOf ConceptualIndividual
st-362ff6c05b3c47a3-346a3677655b5325 : IndividualConcept ⊏ₑ ConceptualIndividual
st-362ff6c05b3c47a3-346a3677655b5325 = polySubTypeOf-identity

postulate -- IndividualConcept is PowerInstanceOf Concept
  pi-40cd53006ade2aee : IndividualConcept ∷ₚₑ Concept

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Individual Relationship: -}
individualRelationship :  Linkage IndividualConcept IndividualConcept
individualRelationship = make_holonymyRelation "Individual Relationship" "Individual Relationship"

