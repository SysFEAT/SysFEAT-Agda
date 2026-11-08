{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Capability: 
A Business Capability is a conceptual Capability that benefits to Customers (internal or external) of the enterprise. It expresses an ability to produce Conceptual Outcome Events.A Business Capability is defined by its intended Enterprise Outcome Events and the conditions (Condition Property) under which the production of the Enterprise Outcome Events shall be proceeded.The actual Condition Scale Values for a given Business Capability at different stages of Enterprise Initiatives is given by their exhibition (Exhibited Capability).

Documentation : https://framework.sysfeat.com/pages/dd268f2868a08150.htm

External references:
  OpenGroup - ArchiMate - Capability: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Strategy-Layer.html#sec-Capability
  OpenGroup - TOGAF - Definition - Business Capability: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_28
  OMG - UAF - Capability: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Capability
  OMG - BACM - Capability: https://www.omg.org/spec/BACM/1.0/PDF#page=48
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.dd268f2868a08150 where -- ========== BusinessCapability

open import Agda.Primitive
open import SysFEAT.SOF.515c13db68953887 public -- Capability
open import SysFEAT.C-SOF.cb94ec53681855c2 public -- ConceptualFunctionalAsset

BusinessCapability : AssetPropertyType
BusinessCapability = AssetProperty


--  BusinessCapability is subTypeOf Capability
st-dd268f2868a08150-515c13db68953887 : BusinessCapability ⊏ₑ Capability
st-dd268f2868a08150-515c13db68953887 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Business Capability: -}
specializedBusinessCapability :  Linkage BusinessCapability BusinessCapability
specializedBusinessCapability = make_subTypeOf "Specialized Business Capability" "Specialized Business Capability"

postulate -- specializedBusinessCapability is subTypeOf specializedCapability
  st-dd268fb668a081e6-01f11e77689b6b10  : specializedBusinessCapability  ⊏⋆ᵣ  specializedCapability

-- -------------------------------------------------------------------------------------------- 
{- Involved Conceptual Object: -}
-- Aggregate Member : Involved Conceptual Object
InvolvedConceptualObject : ClassOfMixedOrderEntity
InvolvedConceptualObject = MixedOrderEntity



--  InvolvedConceptualObject is subTypeOf InvolvedInformation
st-dd2690df68a08308-01f11a37689b6677 : InvolvedConceptualObject ⊏ₑ InvolvedInformation
st-dd2690df68a08308-01f11a37689b6677 = polySubTypeOf-identity

-- Membership relation
membershipOfInvolvedConceptualObject :  Linkage BusinessCapability InvolvedConceptualObject
membershipOfInvolvedConceptualObject = make_upwardNestingRelation "involvedConceptualObject membership" "nested involvedConceptualObject"

-- Aggregation relation
dD2690DF68A08318 :  Linkage InvolvedConceptualObject ConceptualFunctionalAsset
dD2690DF68A08318 = make_Relation "ConceptualFunctionalAsset aggregation" "aggregated ConceptualFunctionalAsset"

{- involvedConceptualObject : derived relation obtained by composing
   membershipOfInvolvedConceptualObject and dD2690DF68A08318
   It directly links an Business Capability to the final aggregated ConceptualFunctionalAsset
   hiding the reifying InvolvedConceptualObject
-}
involvedConceptualObject : Linkage BusinessCapability ConceptualFunctionalAsset
involvedConceptualObject = membershipOfInvolvedConceptualObject  ∘  dD2690DF68A08318


