{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity: 
A Conceptual Entity is the representation of any tangible or intanglible resource or state of such resource that is of interest to understand the enterprises, its data, resources and activities.A Conceptual Entity is either a Concept or a State Concept.Example:-  Person  is a Conceptual Entity of type Concept, Its temporal boundaries are is birth and its death (see Event Concept).-  Employee  is a Conceptual Entity of type State Concept: it is a state of a  person . Its temporal boundaries are its hiring and its departure.

Documentation : https://framework.sysfeat.com/pages/229b34eb5b3f79d2.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
  OMG - UAF - OperationalInformation: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalInformation
  Russell Ackoff - Choice & Communication - Concept: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Concept
  OMG - BACM - Business Object: https://www.omg.org/spec/BACM/1.0/PDF#page=47
  OMG - SBVR - Concept: https://www.omg.org/spec/SBVR/1.5/PDF#page=38
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.229b34eb5b3f79d2 where -- ========== ConceptualEntity

open import Agda.Primitive
open import SysFEAT.EA.2c9c86dc6adb8147 public -- ConceptualEntityAsset
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- InformationEntity
open import SysFEAT.C-SOF.190c2cd368965534 public -- ConceptProperty
open import SysFEAT.C-SOF.362ff4b55b3c45e6 public -- EventConcept

ConceptualEntity : ClassOfElement
ConceptualEntity = Element


--  ConceptualEntity withAspect ConceptualEntityAsset
st-229b34eb5b3f79d2-2c9c86dc6adb8147 : ConceptualEntity ⊏ₐₑ (ConceptualEntityAsset (lsuc(lzero)))
st-229b34eb5b3f79d2-2c9c86dc6adb8147 = polySubTypeOf-identity

--  ConceptualEntity is subTypeOf InformationEntity
st-229b34eb5b3f79d2-d6cd2cea5ab98e5f : ConceptualEntity ⊏ₑ InformationEntity
st-229b34eb5b3f79d2-d6cd2cea5ab98e5f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Conceptual Entity: -}
specializedConceptualEntity :  Linkage ConceptualEntity ConceptualEntity
specializedConceptualEntity = make_subTypeOf "Specialized Conceptual Entity" "Specialized Conceptual Entity"

postulate -- specializedConceptualEntity is subTypeOf specializedInformationEntity
  st-325a344766f33adf-325a37b966f34da2  : specializedConceptualEntity  ⊏⋆ᵣ  specializedInformationEntity

-- -------------------------------------------------------------------------------------------- 
{- Concept Attribute: 
Immutable characteristics of a Conceptual Entity.The default cardinality is [0..1] which means that Concept Property optional.
-}
-- Aggregate Member : Concept Attribute
ConceptAttribute : ClassOfClassOfIndividual
ConceptAttribute = ClassOfIndividual


-- Membership relation
membershipOfConceptAttribute :  Linkage ConceptualEntity ConceptAttribute
membershipOfConceptAttribute = make_upwardNestingRelation "conceptAttribute membership" "nested conceptAttribute"

-- Aggregation relation
aggregationOfConceptPropertyConceptAttribute :  Linkage ConceptAttribute ConceptProperty
aggregationOfConceptPropertyConceptAttribute = make_Relation "ConceptProperty aggregation" "aggregated ConceptProperty"

{- conceptAttribute : derived relation obtained by composing
   membershipOfConceptAttribute and aggregationOfConceptPropertyConceptAttribute
   It directly links an Conceptual Entity to the final aggregated ConceptProperty
   hiding the reifying ConceptAttribute
-}
conceptAttribute : Linkage ConceptualEntity ConceptProperty
conceptAttribute = membershipOfConceptAttribute  ∘  aggregationOfConceptPropertyConceptAttribute



-- -------------------------------------------------------------------------------------------- 
{- End Event: -}
-- Aggregate Member : End Event
EndEvent : ClassOfClassOfIndividual
EndEvent = ClassOfIndividual


-- Membership relation
membershipOfEndEvent :  Linkage ConceptualEntity EndEvent
membershipOfEndEvent = make_upwardNestingRelation "endEvent membership" "nested endEvent"

-- Aggregation relation
aggregationOfEventConceptEndEvent :  Linkage EndEvent EventConcept
aggregationOfEventConceptEndEvent = make_Relation "EventConcept aggregation" "aggregated EventConcept"

{- endEvent : derived relation obtained by composing
   membershipOfEndEvent and aggregationOfEventConceptEndEvent
   It directly links an Conceptual Entity to the final aggregated EventConcept
   hiding the reifying EndEvent
-}
endEvent : Linkage ConceptualEntity EventConcept
endEvent = membershipOfEndEvent  ∘  aggregationOfEventConceptEndEvent



-- -------------------------------------------------------------------------------------------- 
{- Intermediate Event: -}
-- Aggregate Member : Intermediate Event
IntermediateEvent : ClassOfClassOfIndividual
IntermediateEvent = ClassOfIndividual


-- Membership relation
membershipOfIntermediateEvent :  Linkage ConceptualEntity IntermediateEvent
membershipOfIntermediateEvent = make_upwardNestingRelation "intermediateEvent membership" "nested intermediateEvent"

-- Aggregation relation
aggregationOfEventConceptIntermediateEvent :  Linkage IntermediateEvent EventConcept
aggregationOfEventConceptIntermediateEvent = make_Relation "EventConcept aggregation" "aggregated EventConcept"

{- intermediateEvent : derived relation obtained by composing
   membershipOfIntermediateEvent and aggregationOfEventConceptIntermediateEvent
   It directly links an Conceptual Entity to the final aggregated EventConcept
   hiding the reifying IntermediateEvent
-}
intermediateEvent : Linkage ConceptualEntity EventConcept
intermediateEvent = membershipOfIntermediateEvent  ∘  aggregationOfEventConceptIntermediateEvent



-- -------------------------------------------------------------------------------------------- 
{- Start Event: -}
-- Aggregate Member : Start Event
StartEvent : ClassOfClassOfIndividual
StartEvent = ClassOfIndividual


-- Membership relation
membershipOfStartEvent :  Linkage ConceptualEntity StartEvent
membershipOfStartEvent = make_upwardNestingRelation "startEvent membership" "nested startEvent"

-- Aggregation relation
aggregationOfEventConceptStartEvent :  Linkage StartEvent EventConcept
aggregationOfEventConceptStartEvent = make_Relation "EventConcept aggregation" "aggregated EventConcept"

{- startEvent : derived relation obtained by composing
   membershipOfStartEvent and aggregationOfEventConceptStartEvent
   It directly links an Conceptual Entity to the final aggregated EventConcept
   hiding the reifying StartEvent
-}
startEvent : Linkage ConceptualEntity EventConcept
startEvent = membershipOfStartEvent  ∘  aggregationOfEventConceptStartEvent



-- -------------------------------------------------------------------------------------------- 
{- Concept Relation: 
Relationship between a source Conceptual Entity and a target Conceptual Entity.Relationsnhips can be between Concepts, between State Concepts or between Concepts and State Concepts.For instance, the  Butterfly  State Concept has a relationship with the  Wing  Concept.
-}
-- Aggregate Member : Concept Relation
ConceptRelation : ClassOfMixedOrderEntity
ConceptRelation = MixedOrderEntity



--  ConceptRelation is subTypeOf InformationRelation
st-f654f7e85ebb76fa-dfa4e2305ebb4d2b : ConceptRelation ⊏ₑ InformationRelation
st-f654f7e85ebb76fa-dfa4e2305ebb4d2b = polySubTypeOf-identity

-- Membership relation
membershipOfConceptRelation :  Linkage ConceptualEntity ConceptRelation
membershipOfConceptRelation = make_upwardNestingRelation "conceptRelation membership" "nested conceptRelation"

-- Aggregation relation
aggregationOfConceptualEntityConceptRelation :  Linkage ConceptRelation ConceptualEntity
aggregationOfConceptualEntityConceptRelation = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- conceptRelation : derived relation obtained by composing
   membershipOfConceptRelation and aggregationOfConceptualEntityConceptRelation
   It directly links an Conceptual Entity to the final aggregated ConceptualEntity
   hiding the reifying ConceptRelation
-}
conceptRelation : Linkage ConceptualEntity ConceptualEntity
conceptRelation = membershipOfConceptRelation  ∘  aggregationOfConceptualEntityConceptRelation


