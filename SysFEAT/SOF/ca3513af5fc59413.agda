{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Interaction Process Type Environment: 
An Interaction Process Type Environment is a story that describes how an Agent Type interacts with its partners (Partner Agent) to achieve Outcome Events in a specific Operating Eco-System (Agent Type Environment).This includes:1) A course of events represented by Object Flows depicting the succession of intermediate Outcome Events towards the production and consumption of final Outcome Events.2) Interacting partners who participate to the story in the considered Operating Eco-System.

Documentation : https://framework.sysfeat.com/pages/ca3513af5fc59413.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ca3513af5fc59413 where -- ========== InteractionProcessTypeEnvironment

open import Agda.Primitive
open import SysFEAT.SOF.ca35f48a5fc48686 public -- OperatingEcoSystem
open import SysFEAT.SOF.30223b5c5ec90c01 public -- OutcomeEvent
open import SysFEAT.SOF.79368381561716a6 public -- AgentType

InteractionProcessTypeEnvironment : ClassOfClassOfBoundedIndividual
InteractionProcessTypeEnvironment = ClassOfBoundedIndividual

--  InteractionProcessTypeEnvironment is subTypeOf OperatingEcoSystem
st-ca3513af5fc59413-ca35f48a5fc48686 : InteractionProcessTypeEnvironment ⊏ₑ OperatingEcoSystem
st-ca3513af5fc59413-ca35f48a5fc48686 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Object Flow: -}
-- Aggregate Member : Object Flow
ObjectFlow : ClassOfClassOfIndividual
ObjectFlow = ClassOfIndividual


--  ObjectFlow is subTypeOf OperatingConnector
st-ca3519b05fc5a0b2-3d3f4b4062013550 : ObjectFlow ⊏ₑ OperatingConnector
st-ca3519b05fc5a0b2-3d3f4b4062013550 = polySubTypeOf-identity

-- Membership relation
membershipOfObjectFlow :  Linkage InteractionProcessTypeEnvironment ObjectFlow
membershipOfObjectFlow = make_upwardNestingRelation "objectFlow membership" "nested objectFlow"

-- Aggregation relation
aggregationOfOutcomeEventObjectFlow :  Linkage ObjectFlow OutcomeEvent
aggregationOfOutcomeEventObjectFlow = make_Relation "OutcomeEvent aggregation" "aggregated OutcomeEvent"

{- objectFlow : derived relation obtained by composing
   membershipOfObjectFlow and aggregationOfOutcomeEventObjectFlow
   It directly links an Interaction Process Type Environment to the final aggregated OutcomeEvent
   hiding the reifying ObjectFlow
-}
objectFlow : Linkage InteractionProcessTypeEnvironment OutcomeEvent
objectFlow = membershipOfObjectFlow  ∘  aggregationOfOutcomeEventObjectFlow



-- -------------------------------------------------------------------------------------------- 
{- Subject Agent: 
Agent Type that is the subject of the Interaction Process Type Environment.
-}
-- Aggregate Member : Subject Agent
SubjectAgent : ClassOfClassOfIndividual
SubjectAgent = ClassOfIndividual


--  SubjectAgent is subTypeOf ScenarioParticipant
st-ca3514125fc59538-ca3518a45fc59e76 : SubjectAgent ⊏ₑ ScenarioParticipant
st-ca3514125fc59538-ca3518a45fc59e76 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectAgent :  Linkage InteractionProcessTypeEnvironment SubjectAgent
membershipOfSubjectAgent = make_upwardNestingRelation "subjectAgent membership" "nested subjectAgent"

-- Aggregation relation
aggregationOfAgentTypeSubjectAgent :  Linkage SubjectAgent AgentType
aggregationOfAgentTypeSubjectAgent = make_Relation "AgentType aggregation" "aggregated AgentType"

{- subjectAgent : derived relation obtained by composing
   membershipOfSubjectAgent and aggregationOfAgentTypeSubjectAgent
   It directly links an Interaction Process Type Environment to the final aggregated AgentType
   hiding the reifying SubjectAgent
-}
subjectAgent : Linkage InteractionProcessTypeEnvironment AgentType
subjectAgent = membershipOfSubjectAgent  ∘  aggregationOfAgentTypeSubjectAgent



-- -------------------------------------------------------------------------------------------- 
{- Partner Agent: 
Agent Types which are partners of the Subject Agent of an Interaction Process Type Environment.
-}
-- Aggregate Member : Partner Agent
PartnerAgent : ClassOfClassOfIndividual
PartnerAgent = ClassOfIndividual


--  PartnerAgent is subTypeOf ScenarioParticipant
st-ca35159e5fc5978d-ca3518a45fc59e76 : PartnerAgent ⊏ₑ ScenarioParticipant
st-ca35159e5fc5978d-ca3518a45fc59e76 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerAgent :  Linkage InteractionProcessTypeEnvironment PartnerAgent
membershipOfPartnerAgent = make_upwardNestingRelation "partnerAgent membership" "nested partnerAgent"

-- Aggregation relation
aggregationOfAgentTypePartnerAgent :  Linkage PartnerAgent AgentType
aggregationOfAgentTypePartnerAgent = make_Relation "AgentType aggregation" "aggregated AgentType"

{- partnerAgent : derived relation obtained by composing
   membershipOfPartnerAgent and aggregationOfAgentTypePartnerAgent
   It directly links an Interaction Process Type Environment to the final aggregated AgentType
   hiding the reifying PartnerAgent
-}
partnerAgent : Linkage InteractionProcessTypeEnvironment AgentType
partnerAgent = membershipOfPartnerAgent  ∘  aggregationOfAgentTypePartnerAgent



-- -------------------------------------------------------------------------------------------- 
{- Scenario Participant: -}
-- Aggregate Member : Scenario Participant
ScenarioParticipant : ClassOfClassOfIndividual
ScenarioParticipant = ClassOfIndividual


--  ScenarioParticipant is subTypeOf EcosystemMember
st-ca3518a45fc59e76-3d3f4aed6201346c : ScenarioParticipant ⊏ₑ EcosystemMember
st-ca3518a45fc59e76-3d3f4aed6201346c = polySubTypeOf-identity

-- Membership relation
membershipOfScenarioParticipant :  Linkage InteractionProcessTypeEnvironment ScenarioParticipant
membershipOfScenarioParticipant = make_upwardNestingRelation "scenarioParticipant membership" "nested scenarioParticipant"

-- Aggregation relation
aggregationOfAgentTypeScenarioParticipant :  Linkage ScenarioParticipant AgentType
aggregationOfAgentTypeScenarioParticipant = make_Relation "AgentType aggregation" "aggregated AgentType"

{- scenarioParticipant : derived relation obtained by composing
   membershipOfScenarioParticipant and aggregationOfAgentTypeScenarioParticipant
   It directly links an Interaction Process Type Environment to the final aggregated AgentType
   hiding the reifying ScenarioParticipant
-}
scenarioParticipant : Linkage InteractionProcessTypeEnvironment AgentType
scenarioParticipant = membershipOfScenarioParticipant  ∘  aggregationOfAgentTypeScenarioParticipant


