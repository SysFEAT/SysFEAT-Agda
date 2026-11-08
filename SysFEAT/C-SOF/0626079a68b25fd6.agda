{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual State Concept: 
An Individual State Concept is an instance of a State Concept.Example:-  John Doe employe at Concoso Corporation in 2010  is a state of the  John Doe  Individual Concept.

Documentation : https://framework.sysfeat.com/pages/0626079a68b25fd6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.0626079a68b25fd6 where -- ========== IndividualStateConcept

open import Agda.Primitive
open import SysFEAT.C-SOF.0626070868b25f1d public -- StateConcept
open import SysFEAT.C-SOF.346a3677655b5325 public -- ConceptualIndividual

IndividualStateConcept : StateConcept
IndividualStateConcept = Unknown

postulate -- IndividualStateConcept is PowerInstanceOf State Concept
  pi-062607d368b2606e : IndividualStateConcept ∷ₚₑ StateConcept

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Conceptual Individual: -}
stateOfConceptualIndividual :  Linkage IndividualStateConcept ConceptualIndividual
stateOfConceptualIndividual = make_meronymyRelation "State of Conceptual Individual" "State of Conceptual Individual"

