{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Map: 


Documentation : https://framework.sysfeat.com/pages/325c30de5eb0244c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.325c30de5eb0244c where -- ========== LogicalDataMap

open import Agda.Primitive
open import SysFEAT.EA.6d2b80db5fbb700b public -- DataMap
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- LogicalDataAsset
open import SysFEAT.EA.461950e9560d4461 public -- LogicalDataDomain

LogicalDataMap : MetaClass
LogicalDataMap = ClassOfEntity


--  LogicalDataMap is subTypeOf DataMap
st-325c30de5eb0244c-6d2b80db5fbb700b : LogicalDataMap ⊏ₑ DataMap
st-325c30de5eb0244c-6d2b80db5fbb700b = polySubTypeOf-identity

--  LogicalDataMap is subTypeOf LogicalDataAsset
st-325c30de5eb0244c-fd1bf2a45fbc64fb : LogicalDataMap ⊏ₑ LogicalDataAsset
st-325c30de5eb0244c-fd1bf2a45fbc64fb = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- External Data Domain Part: -}
-- Aggregate Member : External Data Domain Part
ExternalDataDomainPart : ClassOfClassOfIndividual
ExternalDataDomainPart = ClassOfIndividual


--  ExternalDataDomainPart is subTypeOf ExternalDataArea
st-cb08cf795ed040b2-fd1bf5b05fbc6c5a : ExternalDataDomainPart ⊏ₑ ExternalDataArea
st-cb08cf795ed040b2-fd1bf5b05fbc6c5a = polySubTypeOf-identity

-- Membership relation
membershipOfExternalDataDomainPart :  Linkage LogicalDataMap ExternalDataDomainPart
membershipOfExternalDataDomainPart = make_upwardNestingRelation "externalDataDomainPart membership" "nested externalDataDomainPart"

-- Aggregation relation
aggregationOfLogicalDataDomainExternalDataDomainPart :  Linkage ExternalDataDomainPart LogicalDataDomain
aggregationOfLogicalDataDomainExternalDataDomainPart = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- externalDataDomainPart : derived relation obtained by composing
   membershipOfExternalDataDomainPart and aggregationOfLogicalDataDomainExternalDataDomainPart
   It directly links an Logical Data Map to the final aggregated LogicalDataDomain
   hiding the reifying ExternalDataDomainPart
-}
externalDataDomainPart : Linkage LogicalDataMap LogicalDataDomain
externalDataDomainPart = membershipOfExternalDataDomainPart  ∘  aggregationOfLogicalDataDomainExternalDataDomainPart



-- -------------------------------------------------------------------------------------------- 
{- Logical Data Area Member: -}
-- Aggregate Member : Logical Data Area Member
LogicalDataAreaMember : ClassOfClassOfIndividual
LogicalDataAreaMember = ClassOfIndividual


--  LogicalDataAreaMember is subTypeOf DataDomainMember
st-fd1bf4d65fbc69be-6d2b81965fbb71ad : LogicalDataAreaMember ⊏ₑ DataDomainMember
st-fd1bf4d65fbc69be-6d2b81965fbb71ad = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalDataAreaMember :  Linkage LogicalDataMap LogicalDataAreaMember
membershipOfLogicalDataAreaMember = make_upwardNestingRelation "logicalDataAreaMember membership" "nested logicalDataAreaMember"

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataAreaMember :  Linkage LogicalDataAreaMember LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataAreaMember = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- logicalDataAreaMember : derived relation obtained by composing
   membershipOfLogicalDataAreaMember and aggregationOfLogicalDataDomainLogicalDataAreaMember
   It directly links an Logical Data Map to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataAreaMember
-}
logicalDataAreaMember : Linkage LogicalDataMap LogicalDataDomain
logicalDataAreaMember = membershipOfLogicalDataAreaMember  ∘  aggregationOfLogicalDataDomainLogicalDataAreaMember


