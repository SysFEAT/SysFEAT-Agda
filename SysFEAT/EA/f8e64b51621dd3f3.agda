{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Ecosystem: 
An Resource Operating Ecosystem is an operating context in which a Resource Agent Type exists or lives for a specific purpose.For instance, the operating context of an enterprise includes its Suppliers (customers and suppliers).

Documentation : https://framework.sysfeat.com/pages/f8e64b51621dd3f3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e64b51621dd3f3 where -- ========== ResourceOperatingEcosystem

open import Agda.Primitive
open import SysFEAT.SOF.21c5276e655759fb public -- OperatingConnection
open import SysFEAT.EA.e2ef091962147ad7 public -- ResourceAgentType

ResourceOperatingEcosystem : ClassOfClassOfBoundedIndividual
ResourceOperatingEcosystem = ClassOfBoundedIndividual


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Resource Ecosystem Connection: -}
-- Aggregate Member : Resource Ecosystem Connection
ResourceEcosystemConnection : ClassOfClassOfIndividual
ResourceEcosystemConnection = ClassOfIndividual


-- Membership relation
membershipOfResourceEcosystemConnection :  Linkage ResourceOperatingEcosystem ResourceEcosystemConnection
membershipOfResourceEcosystemConnection = make_upwardNestingRelation "resourceEcosystemConnection membership" "nested resourceEcosystemConnection"

-- Aggregation relation
aggregationOfOperatingConnectionResourceEcosystemConnection :  Linkage ResourceEcosystemConnection OperatingConnection
aggregationOfOperatingConnectionResourceEcosystemConnection = make_Relation "OperatingConnection aggregation" "aggregated OperatingConnection"

{- resourceEcosystemConnection : derived relation obtained by composing
   membershipOfResourceEcosystemConnection and aggregationOfOperatingConnectionResourceEcosystemConnection
   It directly links an Resource Operating Ecosystem to the final aggregated OperatingConnection
   hiding the reifying ResourceEcosystemConnection
-}
resourceEcosystemConnection : Linkage ResourceOperatingEcosystem OperatingConnection
resourceEcosystemConnection = membershipOfResourceEcosystemConnection  ∘  aggregationOfOperatingConnectionResourceEcosystemConnection



-- -------------------------------------------------------------------------------------------- 
{- Resource Ecosystem Part: -}
-- Aggregate Member : Resource Ecosystem Part
ResourceEcosystemPart : ClassOfClassOfIndividual
ResourceEcosystemPart = ClassOfIndividual


-- Membership relation
membershipOfResourceEcosystemPart :  Linkage ResourceOperatingEcosystem ResourceEcosystemPart
membershipOfResourceEcosystemPart = make_upwardNestingRelation "resourceEcosystemPart membership" "nested resourceEcosystemPart"

-- Aggregation relation
aggregationOfResourceAgentTypeResourceEcosystemPart :  Linkage ResourceEcosystemPart ResourceAgentType
aggregationOfResourceAgentTypeResourceEcosystemPart = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- resourceEcosystemPart : derived relation obtained by composing
   membershipOfResourceEcosystemPart and aggregationOfResourceAgentTypeResourceEcosystemPart
   It directly links an Resource Operating Ecosystem to the final aggregated ResourceAgentType
   hiding the reifying ResourceEcosystemPart
-}
resourceEcosystemPart : Linkage ResourceOperatingEcosystem ResourceAgentType
resourceEcosystemPart = membershipOfResourceEcosystemPart  ∘  aggregationOfResourceAgentTypeResourceEcosystemPart


