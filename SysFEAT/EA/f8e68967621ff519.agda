{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Environment Scenario: 
A Resource Operating Environment Scenario is a story that describes how a Resource Agent Type interacts with its partners (Partner Resource Agent) to achieve Business Outcome Events in a specific Resource Operating Environment.This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting partners who participate to the story in the considered Resource Operating Environment.

Documentation : https://framework.sysfeat.com/pages/f8e68967621ff519.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e68967621ff519 where -- ========== ResourceOperatingEnvironmentScenario

open import Agda.Primitive
open import SysFEAT.SOF.ca3513af5fc59413 public -- InteractionProcessTypeEnvironment
open import SysFEAT.EA.f8e64b51621dd3f3 public -- ResourceOperatingEcosystem
open import SysFEAT.EA.f8e62fc5621fdcf4 public -- ResourceOperatingEnvironment
open import SysFEAT.EA.6a70c0b36787698c public -- ResourceOutcomeEvent
open import SysFEAT.EA.e2ef091962147ad7 public -- ResourceAgentType

ResourceOperatingEnvironmentScenario : BoundedIndividualMetaClass
ResourceOperatingEnvironmentScenario = AssetType


--  ResourceOperatingEnvironmentScenario is subTypeOf InteractionProcessTypeEnvironment
st-f8e68967621ff519-ca3513af5fc59413 : ResourceOperatingEnvironmentScenario ⊏ₑ InteractionProcessTypeEnvironment
st-f8e68967621ff519-ca3513af5fc59413 = polySubTypeOf-identity

--  ResourceOperatingEnvironmentScenario is subTypeOf ResourceOperatingEcosystem
st-f8e68967621ff519-f8e64b51621dd3f3 : ResourceOperatingEnvironmentScenario ⊏ₑ ResourceOperatingEcosystem
st-f8e68967621ff519-f8e64b51621dd3f3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scenarized Operating Environment: -}
scenarizedOperatingEnvironment :  Linkage ResourceOperatingEnvironmentScenario ResourceOperatingEnvironment
scenarizedOperatingEnvironment = make_classOfHolonymy "Scenarized Operating Environment" "Scenarized Operating Environment"

postulate -- scenarizedOperatingEnvironment is subTypeOf performedInteraction
  st-f8e7d8be621f0722-26cb2d5769610945  : scenarizedOperatingEnvironment  ⊏⋆ᵣ  performedInteraction

-- -------------------------------------------------------------------------------------------- 
{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfMixedOrderEntity
ResourceObjectFlow = MixedOrderEntity



--  ResourceObjectFlow is subTypeOf ResourceEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 : ResourceObjectFlow ⊏ₑ ResourceEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf ObjectFlow
st-2b6f41d961baf74b-ca3519b05fc5a0b2 : ResourceObjectFlow ⊏ₑ ObjectFlow
st-2b6f41d961baf74b-ca3519b05fc5a0b2 = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf BusinessEcosystemConnection
st-2b6f41d961baf74b-a813ce0063567e9b : ResourceObjectFlow ⊏ₑ BusinessEcosystemConnection
st-2b6f41d961baf74b-a813ce0063567e9b = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf ResourceEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 : ResourceObjectFlow ⊏ₑ ResourceEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf BusinessEcosystemConnection
st-2b6f41d961baf74b-f8e7db56621f0cef : ResourceObjectFlow ⊏ₑ BusinessEcosystemConnection
st-2b6f41d961baf74b-f8e7db56621f0cef = polySubTypeOf-identity

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceOperatingEnvironmentScenario ResourceObjectFlow
membershipOfResourceObjectFlow = make_upwardNestingRelation "resourceObjectFlow membership" "nested resourceObjectFlow"

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = make_Relation "ResourceOutcomeEvent aggregation" "aggregated ResourceOutcomeEvent"

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceOperatingEnvironmentScenario ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow



-- -------------------------------------------------------------------------------------------- 
{- Participant Resource Agent: -}
-- Aggregate Member : Participant Resource Agent
ParticipantResourceAgent : ClassOfMixedOrderEntity
ParticipantResourceAgent = MixedOrderEntity



--  ParticipantResourceAgent is subTypeOf ScenarioParticipant
st-2b6f3bf061baf60a-ca3518a45fc59e76 : ParticipantResourceAgent ⊏ₑ ScenarioParticipant
st-2b6f3bf061baf60a-ca3518a45fc59e76 = polySubTypeOf-identity

--  ParticipantResourceAgent is subTypeOf ResourceEcosystemPart
st-2b6f3bf061baf60a-f8e6b83c621fffe6 : ParticipantResourceAgent ⊏ₑ ResourceEcosystemPart
st-2b6f3bf061baf60a-f8e6b83c621fffe6 = polySubTypeOf-identity

-- Membership relation
membershipOfParticipantResourceAgent :  Linkage ResourceOperatingEnvironmentScenario ParticipantResourceAgent
membershipOfParticipantResourceAgent = make_upwardNestingRelation "participantResourceAgent membership" "nested participantResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantResourceAgent :  Linkage ParticipantResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- participantResourceAgent : derived relation obtained by composing
   membershipOfParticipantResourceAgent and aggregationOfResourceAgentTypeParticipantResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying ParticipantResourceAgent
-}
participantResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
participantResourceAgent = membershipOfParticipantResourceAgent  ∘  aggregationOfResourceAgentTypeParticipantResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfMixedOrderEntity
SubjectResourceAgent = MixedOrderEntity



--  SubjectResourceAgent is subTypeOf SubjectAgent
st-f8e6b637621ffa9b-ca3514125fc59538 : SubjectResourceAgent ⊏ₑ SubjectAgent
st-f8e6b637621ffa9b-ca3514125fc59538 = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf ParticipantResourceAgent
st-f8e6b637621ffa9b-2b6f3bf061baf60a : SubjectResourceAgent ⊏ₑ ParticipantResourceAgent
st-f8e6b637621ffa9b-2b6f3bf061baf60a = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage ResourceOperatingEnvironmentScenario SubjectResourceAgent
membershipOfSubjectResourceAgent = make_upwardNestingRelation "subjectResourceAgent membership" "nested subjectResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeSubjectResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfResourceAgentTypeSubjectResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfResourceAgentTypeSubjectResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfMixedOrderEntity
PartnerResourceAgent = MixedOrderEntity



--  PartnerResourceAgent is subTypeOf ParticipantResourceAgent
st-f8e6b685621ffb8a-2b6f3bf061baf60a : PartnerResourceAgent ⊏ₑ ParticipantResourceAgent
st-f8e6b685621ffb8a-2b6f3bf061baf60a = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf PartnerAgent
st-f8e6b685621ffb8a-ca35159e5fc5978d : PartnerResourceAgent ⊏ₑ PartnerAgent
st-f8e6b685621ffb8a-ca35159e5fc5978d = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage ResourceOperatingEnvironmentScenario PartnerResourceAgent
membershipOfPartnerResourceAgent = make_upwardNestingRelation "partnerResourceAgent membership" "nested partnerResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent ResourceAgentType
aggregationOfResourceAgentTypePartnerResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfResourceAgentTypePartnerResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfResourceAgentTypePartnerResourceAgent


