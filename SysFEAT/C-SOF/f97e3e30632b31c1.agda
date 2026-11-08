{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Ecosystem: 
A Conceptual Ecosystem is an operating context in which a Conceptual Agent exists or lives for a specific purpose.For instance, the operating context of a Conceptual Ecosystem includes its Suppliers (customers and suppliers).

Documentation : https://framework.sysfeat.com/pages/f97e3e30632b31c1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.f97e3e30632b31c1 where -- ========== ConceptualEcosystem

open import Agda.Primitive
open import SysFEAT.SOF.ca35f48a5fc48686 public -- OperatingEcoSystem
open import SysFEAT.C-SOF.7c40987055271d04 public -- ConceptualAgent

ConceptualEcosystem : BoundedIndividualMetaClass
ConceptualEcosystem = AssetType


--  ConceptualEcosystem is subTypeOf OperatingEcoSystem
st-f97e3e30632b31c1-ca35f48a5fc48686 : ConceptualEcosystem ⊏ₑ OperatingEcoSystem
st-f97e3e30632b31c1-ca35f48a5fc48686 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Ecosystem Member: -}
-- Aggregate Member : Conceptual Ecosystem Member
ConceptualEcosystemMember : ClassOfClassOfIndividual
ConceptualEcosystemMember = ClassOfIndividual


--  ConceptualEcosystemMember is subTypeOf ResourceEcosystemPart
st-f97e3fde632b3462-f8e6b83c621fffe6 : ConceptualEcosystemMember ⊏ₑ ResourceEcosystemPart
st-f97e3fde632b3462-f8e6b83c621fffe6 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualEcosystemMember :  Linkage ConceptualEcosystem ConceptualEcosystemMember
membershipOfConceptualEcosystemMember = make_upwardNestingRelation "conceptualEcosystemMember membership" "nested conceptualEcosystemMember"

-- Aggregation relation
aggregationOfConceptualAgentConceptualEcosystemMember :  Linkage ConceptualEcosystemMember ConceptualAgent
aggregationOfConceptualAgentConceptualEcosystemMember = make_Relation "ConceptualAgent aggregation" "aggregated ConceptualAgent"

{- conceptualEcosystemMember : derived relation obtained by composing
   membershipOfConceptualEcosystemMember and aggregationOfConceptualAgentConceptualEcosystemMember
   It directly links an Conceptual Ecosystem to the final aggregated ConceptualAgent
   hiding the reifying ConceptualEcosystemMember
-}
conceptualEcosystemMember : Linkage ConceptualEcosystem ConceptualAgent
conceptualEcosystemMember = membershipOfConceptualEcosystemMember  ∘  aggregationOfConceptualAgentConceptualEcosystemMember


