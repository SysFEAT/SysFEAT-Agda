{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Outcome Event: 
An Conceptual Outcome Event is a conceptual Conceptual Event that signals the happening of a change in the state of a Conceptual Information Asset (Conceptual Outcome), produced by a Conceptual Agent, for the benefits of an internal or external consumer (especially Customers).

Documentation : https://framework.sysfeat.com/pages/21916383678642d1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.21916383678642d1 where -- ========== ConceptualOutcomeEvent

open import Agda.Primitive
open import SysFEAT.SOF.30223b5c5ec90c01 public -- OutcomeEvent
open import SysFEAT.C-SOF.cb94ec53681855c2 public -- ConceptualFunctionalAsset

ConceptualOutcomeEvent : BoundedIndividualMetaClass
ConceptualOutcomeEvent = AssetType


--  ConceptualOutcomeEvent is subTypeOf OutcomeEvent
st-21916383678642d1-30223b5c5ec90c01 : ConceptualOutcomeEvent ⊏ₑ OutcomeEvent
st-21916383678642d1-30223b5c5ec90c01 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Outcome: 
The changed state of a Conceptual Object that is signaled as being an Conceptual Outcome Event.A Conceptual Outcome  is a Conceptual Object or a state of a Conceptual Object that is th subject of a transaction.A Conceptual Outcome is the result of a Conceptual Behavior of a producer Conceptual Agent and is signaled as an Conceptual Outcome Event that benefits (value) to a consumer Conceptual Agent.
-}
-- Aggregate Member : Conceptual Outcome
ConceptualOutcome : ClassOfMixedOrderEntity
ConceptualOutcome = MixedOrderEntity



--  ConceptualOutcome is subTypeOf Outcome
st-a135a5e467863584-af41ed1265ea77e5 : ConceptualOutcome ⊏ₑ Outcome
st-a135a5e467863584-af41ed1265ea77e5 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualOutcome :  Linkage ConceptualOutcomeEvent ConceptualOutcome
membershipOfConceptualOutcome = make_upwardNestingRelation "conceptualOutcome membership" "nested conceptualOutcome"

-- Aggregation relation
a135A5E46786358C :  Linkage ConceptualOutcome ConceptualFunctionalAsset
a135A5E46786358C = make_Relation "ConceptualFunctionalAsset aggregation" "aggregated ConceptualFunctionalAsset"

{- conceptualOutcome : derived relation obtained by composing
   membershipOfConceptualOutcome and a135A5E46786358C
   It directly links an Conceptual Outcome Event to the final aggregated ConceptualFunctionalAsset
   hiding the reifying ConceptualOutcome
-}
conceptualOutcome : Linkage ConceptualOutcomeEvent ConceptualFunctionalAsset
conceptualOutcome = membershipOfConceptualOutcome  ∘  a135A5E46786358C


