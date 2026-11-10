{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Capability Map: 
Top level assembly of Capabilitys and their dependencies which, together, provide a scope of added value (Outcome Events) pursued by Operational Transformations.

Documentation : https://framework.sysfeat.com/pages/01f12127689b6de2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.01f12127689b6de2 where -- ========== CapabilityMap

open import Agda.Primitive
open import SysFEAT.UpperOntology.8cfa942f68527849 public -- UnboundedAggregate
open import SysFEAT.SOF.515c13db68953887 public -- Capability

CapabilityMap : ClassOfMixedOrderEntity
CapabilityMap = MixedOrderEntity


--  CapabilityMap withAspect UnboundedAggregate
st-01f12127689b6de2-8cfa942f68527849 : CapabilityMap ⊏ₐₑ UnboundedAggregate (lsuc( lzero))
st-01f12127689b6de2-8cfa942f68527849 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Capability Member: 
Aggregate Composition of a Capability.
-}
-- Aggregate Member : Capability Member
CapabilityMember : ClassOfMixedOrderEntity
CapabilityMember = MixedOrderEntity



--  CapabilityMember withAspect UnboundedMember
st-01f12228689b6efa-8cfaf71a6852b042 : CapabilityMember ⊏ₐₑ UnboundedMember (lsuc( lzero))
st-01f12228689b6efa-8cfaf71a6852b042 = polySubTypeOf-identity

-- Membership relation
membershipOfCapabilityMember :  Linkage CapabilityMap CapabilityMember
membershipOfCapabilityMember = make_upwardNestingRelation "capabilityMember membership" "nested capabilityMember"

-- Aggregation relation
aggregationOfCapabilityCapabilityMember :  Linkage CapabilityMember Capability
aggregationOfCapabilityCapabilityMember = make_Relation "Capability aggregation" "aggregated Capability"

{- capabilityMember : derived relation obtained by composing
   membershipOfCapabilityMember and aggregationOfCapabilityCapabilityMember
   It directly links an Capability Map to the final aggregated Capability
   hiding the reifying CapabilityMember
-}
capabilityMember : Linkage CapabilityMap Capability
capabilityMember = membershipOfCapabilityMember  ∘  aggregationOfCapabilityCapabilityMember


