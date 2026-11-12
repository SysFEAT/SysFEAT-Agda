{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Transformation: 
An Operational Transformation is an Initiative that creates or transform, and maintain Operating Asset Types, based on a Capability Maps functional scope.Its Goal is to deliver new or improved Capabilitys, with measurable qualitative properties, to well identified beneficiary stakholders. 

Documentation : https://framework.sysfeat.com/pages/299e882b68488d2c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.299e882b68488d2c where -- ========== OperationalTransformation

open import Agda.Primitive
open import SysFEAT.SOF.d321c226601262ae public -- EnduringInitiative
open import SysFEAT.SOF.01f12127689b6de2 public -- CapabilityMap
open import SysFEAT.SOF.0eb95f356855bf94 public -- AssetBlock

OperationalTransformation : WholeLifeClass
OperationalTransformation = WholeLifeIndividual


--  OperationalTransformation is subTypeOf EnduringInitiative
st-299e882b68488d2c-d321c226601262ae : OperationalTransformation ⊏ₑ EnduringInitiative
st-299e882b68488d2c-d321c226601262ae = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Functional Scope: 
The defining set of  Capabilitys establishing the functional characteriscs required for Assets subject to the Operational Transformation.
-}
functionalScope :  Linkage OperationalTransformation CapabilityMap
functionalScope = make_instanceOf "Functional Scope" "Functional Scope"

postulate -- functionalScope is subTypeOf propertyOfIndividual
  st-01f1214c689b6e0f-19763dbb68926a48  : functionalScope  ⊏⋆ᵣ  propertyOfIndividual

-- -------------------------------------------------------------------------------------------- 
{- Subject Operating Asset: -}
-- Aggregate Member : Subject Operating Asset
SubjectOperatingAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u 
SubjectOperatingAsset u  = MixedOrderEntity u 



--  SubjectOperatingAsset is subTypeOf InitiativeSubject
st-26cb447b69611509-0f642fd06859b0d5 : ∀ {u v} → SubjectOperatingAsset u ⊏⋆ₑ InitiativeSubject v
st-26cb447b69611509-0f642fd06859b0d5 = trivialPolySubTypeOfEntity

-- Membership relation
membershipOfSubjectOperatingAsset : ∀ {u} →  Linkage OperationalTransformation (SubjectOperatingAsset u)
membershipOfSubjectOperatingAsset = make_upwardNestingRelation "subjectOperatingAsset membership" "nested subjectOperatingAsset"

-- Aggregation relation
aggregationOfAssetBlockSubjectOperatingAsset : ∀ {u v} →  Linkage (SubjectOperatingAsset u) (AssetBlock v)
aggregationOfAssetBlockSubjectOperatingAsset = make_Relation "AssetBlock aggregation" "aggregated AssetBlock"

{- subjectOperatingAsset : derived relation obtained by composing
   membershipOfSubjectOperatingAsset and aggregationOfAssetBlockSubjectOperatingAsset
   It directly links an Operational Transformation to the final aggregated AssetBlock
   hiding the reifying SubjectOperatingAsset
-}
subjectOperatingAsset : ∀ {u w} → Linkage OperationalTransformation (AssetBlock w)
subjectOperatingAsset {u} {w}  = membershipOfSubjectOperatingAsset {u}   ∘  aggregationOfAssetBlockSubjectOperatingAsset {w} 


