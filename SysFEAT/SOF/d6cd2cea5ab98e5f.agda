{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Entity: 
An Information Entity is an Information Asset that is not fundamentally defined by its attributes, but rather by its continuity.An Information Entity evolves over time and has states.For instance a person is an Information Entity. Employe is a state of a person.An Information Entity has relationships to other Information Entitys and can have Information Propertys.

Documentation : https://framework.sysfeat.com/pages/d6cd2cea5ab98e5f.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d6cd2cea5ab98e5f where -- ========== InformationEntity

open import Agda.Primitive
open import SysFEAT.SOF.e6f250185f772ee1 public -- InformationAsset
open import SysFEAT.UpperOntology.3492c53e619642ed public -- ClassOfBoundedIndividual
open import SysFEAT.SOF.c189d5f068ae4d75 public -- InformationProperty

InformationEntity : BoundedIndividualMetaClass
InformationEntity = ClassOfBoundedIndividual


--  InformationEntity is subTypeOf InformationAsset
st-d6cd2cea5ab98e5f-e6f250185f772ee1 : InformationEntity ⊏ₑ InformationAsset
st-d6cd2cea5ab98e5f-e6f250185f772ee1 = polySubTypeOf-identity

--  InformationEntity is subTypeOf ClassOfBoundedIndividual
st-d6cd2cea5ab98e5f-3492c53e619642ed : InformationEntity ⊏ₑ ClassOfBoundedIndividual
st-d6cd2cea5ab98e5f-3492c53e619642ed = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Information Entity: 
Generalization relationship between a sub-Information Entity and its super-Information Entity.
-}
specializedInformationEntity :  Linkage InformationEntity InformationEntity
specializedInformationEntity = make_subTypeOf "Specialized Information Entity" "Specialized Information Entity"

postulate -- specializedInformationEntity is subTypeOf specializedInformationAsset
  st-325a37b966f34da2-325a372e66f33bca  : specializedInformationEntity    ⊏⋆ᵣ  specializedInformationAsset  

-- -------------------------------------------------------------------------------------------- 
{- Qualifying Information Property: -}
-- Aggregate Member : Qualifying Information Property
QualifyingInformationProperty : ClassOfMixedOrderEntity
QualifyingInformationProperty = MixedOrderEntity



--  QualifyingInformationProperty is subTypeOf InformationAssetRelationship
st-c189d89268ae51cd-18eb1f335fdb6e7f : QualifyingInformationProperty ⊏ₑ InformationAssetRelationship
st-c189d89268ae51cd-18eb1f335fdb6e7f = polySubTypeOf-identity

-- Membership relation
membershipOfQualifyingInformationProperty :  Linkage InformationEntity QualifyingInformationProperty
membershipOfQualifyingInformationProperty = make_upwardNestingRelation "qualifyingInformationProperty membership" "nested qualifyingInformationProperty"

-- Aggregation relation
aggregationOfInformationPropertyQualifyingInformationProperty :  Linkage QualifyingInformationProperty InformationProperty
aggregationOfInformationPropertyQualifyingInformationProperty = make_Relation "InformationProperty aggregation" "aggregated InformationProperty"

{- qualifyingInformationProperty : derived relation obtained by composing
   membershipOfQualifyingInformationProperty and aggregationOfInformationPropertyQualifyingInformationProperty
   It directly links an Information Entity to the final aggregated InformationProperty
   hiding the reifying QualifyingInformationProperty
-}
qualifyingInformationProperty : Linkage InformationEntity InformationProperty
qualifyingInformationProperty = membershipOfQualifyingInformationProperty  ∘  aggregationOfInformationPropertyQualifyingInformationProperty



-- -------------------------------------------------------------------------------------------- 
{- Information Relation: 
An Information Relation is a characteristic of an Information Entity that represents a relationships to other Information Entity(ies).
-}
-- Aggregate Member : Information Relation
InformationRelation : ClassOfMixedOrderEntity
InformationRelation = MixedOrderEntity



--  InformationRelation is subTypeOf InformationAssetRelationship
st-dfa4e2305ebb4d2b-18eb1f335fdb6e7f : InformationRelation ⊏ₑ InformationAssetRelationship
st-dfa4e2305ebb4d2b-18eb1f335fdb6e7f = polySubTypeOf-identity

--  InformationRelation is subTypeOf AggregateHolonymyType
st-dfa4e2305ebb4d2b-c2f2c83b66ea4d78 : InformationRelation ⊏ₑ AggregateHolonymyType
st-dfa4e2305ebb4d2b-c2f2c83b66ea4d78 = polySubTypeOf-identity

-- Membership relation
membershipOfInformationRelation :  Linkage InformationEntity InformationRelation
membershipOfInformationRelation = make_upwardNestingRelation "informationRelation membership" "nested informationRelation"

-- Aggregation relation
aggregationOfInformationEntityInformationRelation :  Linkage InformationRelation InformationEntity
aggregationOfInformationEntityInformationRelation = make_Relation "InformationEntity aggregation" "aggregated InformationEntity"

{- informationRelation : derived relation obtained by composing
   membershipOfInformationRelation and aggregationOfInformationEntityInformationRelation
   It directly links an Information Entity to the final aggregated InformationEntity
   hiding the reifying InformationRelation
-}
informationRelation : Linkage InformationEntity InformationEntity
informationRelation = membershipOfInformationRelation  ∘  aggregationOfInformationEntityInformationRelation


