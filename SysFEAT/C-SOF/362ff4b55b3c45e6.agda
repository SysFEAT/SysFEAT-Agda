{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Event Concept: 
 An Event Concept is a Conceptual Object that represents a type of change used to draw the temporal boundaries of Conceptual Entitys.Examples:- order placing- order delivery- birth- death

Documentation : https://framework.sysfeat.com/pages/362ff4b55b3c45e6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.362ff4b55b3c45e6 where -- ========== EventConcept

open import Agda.Primitive
open import SysFEAT.EA.2c9c86dc6adb8147 public -- ConceptualEntityAsset
open import SysFEAT.C-SOF.40cd59906ade3231 public -- EventConceptType
open import SysFEAT.SOF.31cf367c6ad16c33 public -- PeriodType

EventConcept : EventConceptType
EventConcept = Element

--  EventConcept withAspect ConceptualEntityAsset
st-362ff4b55b3c45e6-2c9c86dc6adb8147 : EventConcept ⊏ₐₑ (ConceptualEntityAsset (lsuc(lzero)))
st-362ff4b55b3c45e6-2c9c86dc6adb8147 = polySubTypeOf-identity

postulate -- EventConcept is PowerInstanceOf Event Concept Type
  pi-40cd5a026ade3324 : EventConcept ∷ₚₑ EventConceptType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Event: -}
specializedEvent :  Linkage EventConcept EventConcept
specializedEvent = make_subTypeOf "Specialized Event" "Specialized Event"


-- -------------------------------------------------------------------------------------------- 
{- Period Type: -}
periodType :  Linkage EventConcept PeriodType
periodType = make_classOfMeronymy "Period Type" "Period Type"


-- -------------------------------------------------------------------------------------------- 
{- Event Part: -}
-- Aggregate Member : Event Part
EventPart : ClassOfClassOfIndividual
EventPart = ClassOfIndividual


-- Membership relation
membershipOfEventPart :  Linkage EventConcept EventPart
membershipOfEventPart = make_upwardNestingRelation "eventPart membership" "nested eventPart"

-- Aggregation relation
aggregationOfEventConceptEventPart :  Linkage EventPart EventConcept
aggregationOfEventConceptEventPart = make_Relation "EventConcept aggregation" "aggregated EventConcept"

{- eventPart : derived relation obtained by composing
   membershipOfEventPart and aggregationOfEventConceptEventPart
   It directly links an Event Concept to the final aggregated EventConcept
   hiding the reifying EventPart
-}
eventPart : Linkage EventConcept EventConcept
eventPart = membershipOfEventPart  ∘  aggregationOfEventConceptEventPart


