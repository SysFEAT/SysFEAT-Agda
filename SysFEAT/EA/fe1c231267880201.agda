{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Agent: 
An Individual Resource Agent is an Individual Operating Asset that exists in space/time and that is able to participate actively to Processes and/or to conduct Processes.

Documentation : https://framework.sysfeat.com/pages/fe1c231267880201.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c231267880201 where -- ========== IndividualResourceAgent

open import Agda.Primitive
open import SysFEAT.EA.fe1c24fa6788036e public -- IndividualResourceAsset
open import SysFEAT.SOF.9e3837e46192fcad public -- IndividualAgent
open import SysFEAT.EA.e2ef091962147ad7 public -- ResourceAgentType

IndividualResourceAgent : AgentType
IndividualResourceAgent = IndividualAgent


--  IndividualResourceAgent is subTypeOf IndividualResourceAsset
st-fe1c231267880201-fe1c24fa6788036e : IndividualResourceAgent ⊏ₑ IndividualResourceAsset
st-fe1c231267880201-fe1c24fa6788036e = polySubTypeOf-identity

--  IndividualResourceAgent is subTypeOf IndividualAgent
st-fe1c231267880201-9e3837e46192fcad : IndividualResourceAgent ⊏ₑ IndividualAgent
st-fe1c231267880201-9e3837e46192fcad = polySubTypeOf-identity

postulate -- IndividualResourceAgent is PowerInstanceOf Resource Agent Type
  pi-3b1b8d8f68cd8006 : IndividualResourceAgent ∷ₚₑ ResourceAgentType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Individual Resource Agent Part: -}
-- Aggregate Member : Individual Resource Agent Part
IndividualResourceAgentPart : AggregateHolonymyType
IndividualResourceAgentPart = AggregateHolonymy



--  IndividualResourceAgentPart is subTypeOf AgentPart
st-fe1c2ae667880c06-9d389f6761c4127d : IndividualResourceAgentPart ⊏ₑ AgentPart
st-fe1c2ae667880c06-9d389f6761c4127d = polySubTypeOf-identity

-- Membership relation
membershipOfIndividualResourceAgentPart :  Linkage IndividualResourceAgent IndividualResourceAgentPart
membershipOfIndividualResourceAgentPart = make_upwardNestingRelation "individualResourceAgentPart membership" "nested individualResourceAgentPart"

-- Aggregation relation
aggregationOfIndividualResourceAgentIndividualResourceAgentPart :  Linkage IndividualResourceAgentPart IndividualResourceAgent
aggregationOfIndividualResourceAgentIndividualResourceAgentPart = make_Relation "IndividualResourceAgent aggregation" "aggregated IndividualResourceAgent"

{- individualResourceAgentPart : derived relation obtained by composing
   membershipOfIndividualResourceAgentPart and aggregationOfIndividualResourceAgentIndividualResourceAgentPart
   It directly links an Individual Resource Agent to the final aggregated IndividualResourceAgent
   hiding the reifying IndividualResourceAgentPart
-}
individualResourceAgentPart : Linkage IndividualResourceAgent IndividualResourceAgent
individualResourceAgentPart = membershipOfIndividualResourceAgentPart  ∘  aggregationOfIndividualResourceAgentIndividualResourceAgentPart


