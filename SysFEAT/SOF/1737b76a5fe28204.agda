{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Activity: 
A Governance Activity is an action done by one or several Stakeholders as part of the governance of an Enduring Initiative.Governance Activity(ies) range from assessments, audit, workflows to remediation plans.

Documentation : https://framework.sysfeat.com/pages/1737b76a5fe28204.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1737b76a5fe28204 where -- ========== GovernanceActivity

open import Agda.Primitive
open import SysFEAT.UpperOntology.342f74b166156e02 public -- WholeLifeIndividual
open import SysFEAT.SOF.6662916b68dd5f84 public -- GovernanceInstrument

GovernanceActivity : ClassOfBoundedIndividual
GovernanceActivity = BoundedIndividual


--  GovernanceActivity is subTypeOf WholeLifeIndividual
st-1737b76a5fe28204-342f74b166156e02 : GovernanceActivity ⊏ₑ WholeLifeIndividual
st-1737b76a5fe28204-342f74b166156e02 = polySubTypeOf-identity

--  GovernanceActivity withAspect GovernanceInstrument
st-1737b76a5fe28204-6662916b68dd5f84 : GovernanceActivity ⊏ₐₑ (GovernanceInstrument lzero)
st-1737b76a5fe28204-6662916b68dd5f84 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Governance Activity Part: -}
-- Aggregate Member : Governance Activity Part
GovernanceActivityPart : ClassOfBoundedIndividual
GovernanceActivityPart = BoundedIndividual



--  GovernanceActivityPart is subTypeOf AggregateHolonymy
st-fee30a85695d0bb0-c2f2c9a166ea50e2 : GovernanceActivityPart ⊏ₑ AggregateHolonymy
st-fee30a85695d0bb0-c2f2c9a166ea50e2 = polySubTypeOf-identity

--  GovernanceActivityPart is subTypeOf GovernanceActivity
st-fee30a85695d0bb0-1737b76a5fe28204 : GovernanceActivityPart ⊏ₑ GovernanceActivity
st-fee30a85695d0bb0-1737b76a5fe28204 = polySubTypeOf-identity

-- Membership relation
membershipOfGovernanceActivityPart :  Linkage GovernanceActivity GovernanceActivityPart
membershipOfGovernanceActivityPart = make_upwardNestingRelation "governanceActivityPart membership" "nested governanceActivityPart"

-- Aggregation relation
aggregationOfGovernanceActivityGovernanceActivityPart :  Linkage GovernanceActivityPart GovernanceActivity
aggregationOfGovernanceActivityGovernanceActivityPart = make_Relation "GovernanceActivity aggregation" "aggregated GovernanceActivity"

{- governanceActivityPart : derived relation obtained by composing
   membershipOfGovernanceActivityPart and aggregationOfGovernanceActivityGovernanceActivityPart
   It directly links an Governance Activity to the final aggregated GovernanceActivity
   hiding the reifying GovernanceActivityPart
-}
governanceActivityPart : Linkage GovernanceActivity GovernanceActivity
governanceActivityPart = membershipOfGovernanceActivityPart  ∘  aggregationOfGovernanceActivityGovernanceActivityPart


