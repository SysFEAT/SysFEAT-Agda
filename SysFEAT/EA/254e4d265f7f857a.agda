{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

MetaData Schema: 


Documentation : https://framework.sysfeat.com/pages/254e4d265f7f857a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.254e4d265f7f857a where -- ========== MetaDataSchema

open import Agda.Primitive
open import SysFEAT.EA.d874be1f6ab728a2 public -- NoSQLDataAsset
open import SysFEAT.EA.028f03ff5b4f55ee public -- PhysicalDataDomain
open import SysFEAT.EA.8180baa3600110c8 public -- NoSQLElement

MetaDataSchema : ClassOfMixedOrderEntity
MetaDataSchema = MixedOrderEntity


--  MetaDataSchema withAspect NoSQLDataAsset
st-254e4d265f7f857a-d874be1f6ab728a2 : MetaDataSchema ⊏ₐₑ (NoSQLDataAsset (lsuc(lzero)))
st-254e4d265f7f857a-d874be1f6ab728a2 = polySubTypeOf-identity

--  MetaDataSchema is subTypeOf PhysicalDataDomain
st-254e4d265f7f857a-028f03ff5b4f55ee : MetaDataSchema ⊏ₑ PhysicalDataDomain
st-254e4d265f7f857a-028f03ff5b4f55ee = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Data Set: 
NoSQL Dataset that is defined by a MetaData Schema.
-}
-- Aggregate Member : Data Set
DataSet : ClassOfClassOfIndividual
DataSet = ClassOfIndividual


--  DataSet is subTypeOf PhysicalDomainObject
st-ae242ff3603900b2-e6f223f55f771b8d : DataSet ⊏ₑ PhysicalDomainObject
st-ae242ff3603900b2-e6f223f55f771b8d = polySubTypeOf-identity

-- Membership relation
membershipOfDataSet :  Linkage MetaDataSchema DataSet
membershipOfDataSet = make_upwardNestingRelation "dataSet membership" "nested dataSet"

-- Aggregation relation
aggregationOfNoSQLElementDataSet :  Linkage DataSet NoSQLElement
aggregationOfNoSQLElementDataSet = make_Relation "NoSQLElement aggregation" "aggregated NoSQLElement"

{- dataSet : derived relation obtained by composing
   membershipOfDataSet and aggregationOfNoSQLElementDataSet
   It directly links an MetaData Schema to the final aggregated NoSQLElement
   hiding the reifying DataSet
-}
dataSet : Linkage MetaDataSchema NoSQLElement
dataSet = membershipOfDataSet  ∘  aggregationOfNoSQLElementDataSet


