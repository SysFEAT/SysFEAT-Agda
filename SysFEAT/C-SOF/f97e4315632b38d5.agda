{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Environment Scenario: 
As part of the enterprise Conceptual Operating Model, a Conceptual Environment Scenario is a story that describes how an Operating Domain interacts with its partners (Business Partner) to achieve Business Outcome Events in a specific Conceptual Environment..This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting partners who participate to the story in the considered Conceptual Environment.

Documentation : https://framework.sysfeat.com/pages/f97e4315632b38d5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.f97e4315632b38d5 where -- ========== ConceptualEnvironmentScenario

open import Agda.Primitive
open import SysFEAT.C-SOF.f97e3e30632b31c1 public -- ConceptualEcosystem
open import SysFEAT.SOF.ca3513af5fc59413 public -- InteractionProcessTypeEnvironment
open import SysFEAT.C-SOF.9810b060551137d0 public -- OperatingDomain
open import SysFEAT.C-SOF.08d17cde678a2b47 public -- Supplier

ConceptualEnvironmentScenario : BoundedIndividualMetaClass
ConceptualEnvironmentScenario = AssetType


--  ConceptualEnvironmentScenario is subTypeOf ConceptualEcosystem
st-f97e4315632b38d5-f97e3e30632b31c1 : ConceptualEnvironmentScenario ⊏ₑ ConceptualEcosystem
st-f97e4315632b38d5-f97e3e30632b31c1 = polySubTypeOf-identity

--  ConceptualEnvironmentScenario is subTypeOf InteractionProcessTypeEnvironment
st-f97e4315632b38d5-ca3513af5fc59413 : ConceptualEnvironmentScenario ⊏ₑ InteractionProcessTypeEnvironment
st-f97e4315632b38d5-ca3513af5fc59413 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Subject Activity Domain: -}
-- Aggregate Member : Subject Activity Domain
SubjectActivityDomain : ClassOfMixedOrderEntity
SubjectActivityDomain = MixedOrderEntity



--  SubjectActivityDomain is subTypeOf SubjectAgent
st-f97e4605632b3b80-ca3514125fc59538 : SubjectActivityDomain ⊏ₑ SubjectAgent
st-f97e4605632b3b80-ca3514125fc59538 = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf ParticipantResourceAgent
st-f97e4605632b3b80-2b6f3bf061baf60a : SubjectActivityDomain ⊏ₑ ParticipantResourceAgent
st-f97e4605632b3b80-2b6f3bf061baf60a = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf ConceptualEcosystemMember
st-f97e4605632b3b80-f97e3fde632b3462 : SubjectActivityDomain ⊏ₑ ConceptualEcosystemMember
st-f97e4605632b3b80-f97e3fde632b3462 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectActivityDomain :  Linkage ConceptualEnvironmentScenario SubjectActivityDomain
membershipOfSubjectActivityDomain = make_upwardNestingRelation "subjectActivityDomain membership" "nested subjectActivityDomain"

-- Aggregation relation
aggregationOfOperatingDomainSubjectActivityDomain :  Linkage SubjectActivityDomain OperatingDomain
aggregationOfOperatingDomainSubjectActivityDomain = make_Relation "OperatingDomain aggregation" "aggregated OperatingDomain"

{- subjectActivityDomain : derived relation obtained by composing
   membershipOfSubjectActivityDomain and aggregationOfOperatingDomainSubjectActivityDomain
   It directly links an Conceptual Environment Scenario to the final aggregated OperatingDomain
   hiding the reifying SubjectActivityDomain
-}
subjectActivityDomain : Linkage ConceptualEnvironmentScenario OperatingDomain
subjectActivityDomain = membershipOfSubjectActivityDomain  ∘  aggregationOfOperatingDomainSubjectActivityDomain



-- -------------------------------------------------------------------------------------------- 
{- Business Partner: -}
-- Aggregate Member : Business Partner
BusinessPartner : ClassOfMixedOrderEntity
BusinessPartner = MixedOrderEntity



--  BusinessPartner is subTypeOf PartnerAgent
st-f97e4689632b3cad-ca35159e5fc5978d : BusinessPartner ⊏ₑ PartnerAgent
st-f97e4689632b3cad-ca35159e5fc5978d = polySubTypeOf-identity

--  BusinessPartner is subTypeOf ParticipantResourceAgent
st-f97e4689632b3cad-2b6f3bf061baf60a : BusinessPartner ⊏ₑ ParticipantResourceAgent
st-f97e4689632b3cad-2b6f3bf061baf60a = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessPartner :  Linkage ConceptualEnvironmentScenario BusinessPartner
membershipOfBusinessPartner = make_upwardNestingRelation "businessPartner membership" "nested businessPartner"

-- Aggregation relation
aggregationOfSupplierBusinessPartner :  Linkage BusinessPartner Supplier
aggregationOfSupplierBusinessPartner = make_Relation "Supplier aggregation" "aggregated Supplier"

{- businessPartner : derived relation obtained by composing
   membershipOfBusinessPartner and aggregationOfSupplierBusinessPartner
   It directly links an Conceptual Environment Scenario to the final aggregated Supplier
   hiding the reifying BusinessPartner
-}
businessPartner : Linkage ConceptualEnvironmentScenario Supplier
businessPartner = membershipOfBusinessPartner  ∘  aggregationOfSupplierBusinessPartner


