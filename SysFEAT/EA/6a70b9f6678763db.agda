{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Functional Asset: 
Business Functional Assets are Resource Functional Assets that define how Business Outcome Events are specified, produced and consumed.

Documentation : https://framework.sysfeat.com/pages/6a70b9f6678763db.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6a70b9f6678763db where -- ========== BusinessFunctionalAsset

open import Agda.Primitive
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- ResourceFunctionalAsset
open import SysFEAT.EA.0e55230266f12252 public -- OperationalRiskType

BusinessFunctionalAsset : BoundedIndividualMetaClass
BusinessFunctionalAsset = AssetType


--  BusinessFunctionalAsset is subTypeOf ResourceFunctionalAsset
st-6a70b9f6678763db-9bec9fbf66fb0d6f : BusinessFunctionalAsset ⊏ₑ ResourceFunctionalAsset
st-6a70b9f6678763db-9bec9fbf66fb0d6f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Operational Risk: 
An Operational Risk is a kind of Risk that refers to the potential for loss resulting from inadequate structure or behavior of a Business Operating Asset.
-}
-- Aggregate Member : Operational Risk
OperationalRisk : ClassOfMixedOrderEntity
OperationalRisk = MixedOrderEntity



--  OperationalRisk is subTypeOf Risk
st-332c41e366f16621-0e55219466f11fd7 : OperationalRisk ⊏⋆ₑ Risk
st-332c41e366f16621-0e55219466f11fd7 = polySubTypeOf-identity

-- Membership relation
membershipOfOperationalRisk :  Linkage BusinessFunctionalAsset OperationalRisk
membershipOfOperationalRisk = make_upwardNestingRelation "operationalRisk membership" "nested operationalRisk"

-- Aggregation relation
aggregationOfOperationalRiskTypeOperationalRisk :  Linkage OperationalRisk OperationalRiskType
aggregationOfOperationalRiskTypeOperationalRisk = make_Relation "OperationalRiskType aggregation" "aggregated OperationalRiskType"

{- operationalRisk : derived relation obtained by composing
   membershipOfOperationalRisk and aggregationOfOperationalRiskTypeOperationalRisk
   It directly links an Business Functional Asset to the final aggregated OperationalRiskType
   hiding the reifying OperationalRisk
-}
operationalRisk : Linkage BusinessFunctionalAsset OperationalRiskType
operationalRisk = membershipOfOperationalRisk  ∘  aggregationOfOperationalRiskTypeOperationalRisk


