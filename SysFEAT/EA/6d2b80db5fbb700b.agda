{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Map: 
A Data Map is an urbanization tool for Data Asset. It represents a set of Data Domains in a particular context.

Documentation : https://framework.sysfeat.com/pages/6d2b80db5fbb700b.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6d2b80db5fbb700b where -- ========== DataMap

open import Agda.Primitive
open import SysFEAT.SOF.00330ffb6ae2806c public -- InformationDomainMap
open import SysFEAT.EA.8f1c937168ca8195 public -- DataBlock
open import SysFEAT.EA.325c32165eb02a4a public -- DataDomain

DataMap : MetaClass
DataMap = ClassOfEntity


--  DataMap withAspect InformationDomainMap
st-6d2b80db5fbb700b-00330ffb6ae2806c : DataMap ⊏ₐₑ (InformationDomainMap (lsuc(lzero)))
st-6d2b80db5fbb700b-00330ffb6ae2806c = polySubTypeOf-identity

--  DataMap withAspect DataBlock
st-6d2b80db5fbb700b-8f1c937168ca8195 : DataMap ⊏ₐₑ (DataBlock (lsuc(lzero)))
st-6d2b80db5fbb700b-8f1c937168ca8195 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Data Domain Member: 
Data Domain that isa component of a Data Map.
-}
-- Aggregate Member : Data Domain Member
DataDomainMember : ClassOfClassOfIndividual
DataDomainMember = ClassOfIndividual


-- Membership relation
membershipOfDataDomainMember :  Linkage DataMap DataDomainMember
membershipOfDataDomainMember = make_upwardNestingRelation "dataDomainMember membership" "nested dataDomainMember"

-- Aggregation relation
aggregationOfDataDomainDataDomainMember :  Linkage DataDomainMember DataDomain
aggregationOfDataDomainDataDomainMember = make_Relation "DataDomain aggregation" "aggregated DataDomain"

{- dataDomainMember : derived relation obtained by composing
   membershipOfDataDomainMember and aggregationOfDataDomainDataDomainMember
   It directly links an Data Map to the final aggregated DataDomain
   hiding the reifying DataDomainMember
-}
dataDomainMember : Linkage DataMap DataDomain
dataDomainMember = membershipOfDataDomainMember  ∘  aggregationOfDataDomainDataDomainMember



-- -------------------------------------------------------------------------------------------- 
{- External Data Area: -}
-- Aggregate Member : External Data Area
ExternalDataArea : ClassOfClassOfIndividual
ExternalDataArea = ClassOfIndividual


-- Membership relation
membershipOfExternalDataArea :  Linkage DataMap ExternalDataArea
membershipOfExternalDataArea = make_upwardNestingRelation "externalDataArea membership" "nested externalDataArea"

-- Aggregation relation
aggregationOfDataDomainExternalDataArea :  Linkage ExternalDataArea DataDomain
aggregationOfDataDomainExternalDataArea = make_Relation "DataDomain aggregation" "aggregated DataDomain"

{- externalDataArea : derived relation obtained by composing
   membershipOfExternalDataArea and aggregationOfDataDomainExternalDataArea
   It directly links an Data Map to the final aggregated DataDomain
   hiding the reifying ExternalDataArea
-}
externalDataArea : Linkage DataMap DataDomain
externalDataArea = membershipOfExternalDataArea  ∘  aggregationOfDataDomainExternalDataArea


