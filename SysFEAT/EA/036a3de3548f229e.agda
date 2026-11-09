{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enterprise Initiative: 
An Enterprise Initiative is a past, current or future state of the enterprise. Each stage represents an initiative comprising a purposeful set of activities whose primary purpose is focused on achieving a set of clearly defined objectives that may transcend organisational boundaries and consequently require integrated team working under the direction of an Architecture Governance Committee.

Documentation : https://framework.sysfeat.com/pages/036a3de3548f229e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.036a3de3548f229e where -- ========== EnterpriseInitiative

open import Agda.Primitive
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.EA.c189f8c868ae5b73 public -- BusinessCapabilityMap
open import SysFEAT.EA.25c0a25061e2fd5a public -- SOftwareSystemEnvironment
open import SysFEAT.C-SOF.7c4097c855271c8e public -- ConceptualEnvironment
open import SysFEAT.C-SOF.622b76b06ae334e6 public -- ConceptDomainMap
open import SysFEAT.EA.21ed240a689c08df public -- ValueProposition
open import SysFEAT.EA.fe1c250d678803b6 public -- IndividualResourceBehavior
open import SysFEAT.EA.56ea5ff966047632 public -- Product

EnterpriseInitiative : ClassOfBoundedIndividual
EnterpriseInitiative = BoundedIndividual


--  EnterpriseInitiative is subTypeOf Initiative
st-036a3de3548f229e-0ffeec41600be08a : EnterpriseInitiative ⊏ₑ Initiative
st-036a3de3548f229e-0ffeec41600be08a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Enterprise Capability Map: -}
enterpriseCapabilityMap :  Linkage EnterpriseInitiative BusinessCapabilityMap
enterpriseCapabilityMap = make_Relation "Enterprise Capability Map" "Enterprise Capability Map"

postulate -- enterpriseCapabilityMap is subTypeOf functionalScope
  st-c189f8fd68ae5ba0-01f1214c689b6e0f  : enterpriseCapabilityMap  ⊏⋆ᵣ  functionalScope

-- -------------------------------------------------------------------------------------------- 
{- Enterprise IT Ecosystem: 
Software System Environment of the enterprise or of one of its transformation stage.
-}
enterpriseITEcosystem :  Linkage EnterpriseInitiative SOftwareSystemEnvironment
enterpriseITEcosystem = make_Relation "Enterprise IT Ecosystem" "Enterprise IT Ecosystem"


-- -------------------------------------------------------------------------------------------- 
{- Enterprise Conceptual Environment: 
Conceptual Environment of the enterprise or of one of its transformation stages.This Conceptual Environment defines the enterprise Conceptual Environments ()
-}
enterpriseConceptualEnvironment :  Linkage EnterpriseInitiative ConceptualEnvironment
enterpriseConceptualEnvironment = make_Relation "Enterprise Conceptual Environment" "Enterprise Conceptual Environment"


-- -------------------------------------------------------------------------------------------- 
{- Enterprise Concept Map: -}
enterpriseConceptMap : ∀ {u} →  Linkage EnterpriseInitiative (ConceptDomainMap u)
enterpriseConceptMap = make_Relation "Enterprise Concept Map" "Enterprise Concept Map"


-- -------------------------------------------------------------------------------------------- 
{- Enterprise Desired Result: -}
-- Aggregate Member : Enterprise Desired Result
EnterpriseDesiredResult : ClassOfMixedOrderEntity
EnterpriseDesiredResult = MixedOrderEntity



--  EnterpriseDesiredResult is subTypeOf DesiredResult
st-dd26979d68a1d56f-a56ba5d1689c4ba1 : EnterpriseDesiredResult ⊏⋆ₑ DesiredResult
st-dd26979d68a1d56f-a56ba5d1689c4ba1 = polySubTypeOf-identity

-- Membership relation
membershipOfEnterpriseDesiredResult :  Linkage EnterpriseInitiative EnterpriseDesiredResult
membershipOfEnterpriseDesiredResult = make_upwardNestingRelation "enterpriseDesiredResult membership" "nested enterpriseDesiredResult"

-- Aggregation relation
aggregationOfValuePropositionEnterpriseDesiredResult :  Linkage EnterpriseDesiredResult ValueProposition
aggregationOfValuePropositionEnterpriseDesiredResult = make_Relation "ValueProposition aggregation" "aggregated ValueProposition"

{- enterpriseDesiredResult : derived relation obtained by composing
   membershipOfEnterpriseDesiredResult and aggregationOfValuePropositionEnterpriseDesiredResult
   It directly links an Enterprise Initiative to the final aggregated ValueProposition
   hiding the reifying EnterpriseDesiredResult
-}
enterpriseDesiredResult : Linkage EnterpriseInitiative ValueProposition
enterpriseDesiredResult = membershipOfEnterpriseDesiredResult  ∘  aggregationOfValuePropositionEnterpriseDesiredResult



-- -------------------------------------------------------------------------------------------- 
{- Enterprise Course of Action: 
A plan recognized by an enterprise as being essential to achieving its goals - i.e. a strategic specification of what the enterprise does. In other words, a Course of Action channels efforts towards Desired Results.Business Capabilities might be required by an Enterprise to conduct its Courses of Action.
-}
-- Aggregate Member : Enterprise Course of Action
EnterpriseCourseOfAction : AggregateHolonymyType
EnterpriseCourseOfAction = AggregateHolonymy



--  EnterpriseCourseOfAction is subTypeOf CourseOfAction
st-dd2696c768a1d406-a56baa0c689c4e7a : EnterpriseCourseOfAction ⊏ₑ CourseOfAction
st-dd2696c768a1d406-a56baa0c689c4e7a = polySubTypeOf-identity

-- Membership relation
membershipOfEnterpriseCourseOfAction :  Linkage EnterpriseInitiative EnterpriseCourseOfAction
membershipOfEnterpriseCourseOfAction = make_upwardNestingRelation "enterpriseCourseOfAction membership" "nested enterpriseCourseOfAction"

-- Aggregation relation
aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction :  Linkage EnterpriseCourseOfAction IndividualResourceBehavior
aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction = make_Relation "IndividualResourceBehavior aggregation" "aggregated IndividualResourceBehavior"

{- enterpriseCourseOfAction : derived relation obtained by composing
   membershipOfEnterpriseCourseOfAction and aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction
   It directly links an Enterprise Initiative to the final aggregated IndividualResourceBehavior
   hiding the reifying EnterpriseCourseOfAction
-}
enterpriseCourseOfAction : Linkage EnterpriseInitiative IndividualResourceBehavior
enterpriseCourseOfAction = membershipOfEnterpriseCourseOfAction  ∘  aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction



-- -------------------------------------------------------------------------------------------- 
{- Product: -}
-- Aggregate Member : Product
Product : ClassOfMixedOrderEntity
Product = MixedOrderEntity



--  Product withAspect InitiativeSubject
st-dd269ae968a1db15-0f642fd06859b0d5 : Product ⊏ₐₑ (InitiativeSubject (lsuc(lzero)))
st-dd269ae968a1db15-0f642fd06859b0d5 = polySubTypeOf-identity

-- Membership relation
membershipOfProduct :  Linkage EnterpriseInitiative Product
membershipOfProduct = make_upwardNestingRelation "product membership" "nested product"

-- Aggregation relation
aggregationOfProductProduct :  Linkage Product Product
aggregationOfProductProduct = make_Relation "Product aggregation" "aggregated Product"

{- product : derived relation obtained by composing
   membershipOfProduct and aggregationOfProductProduct
   It directly links an Enterprise Initiative to the final aggregated Product
   hiding the reifying Product
-}
product : Linkage EnterpriseInitiative Product
product = membershipOfProduct  ∘  aggregationOfProductProduct


