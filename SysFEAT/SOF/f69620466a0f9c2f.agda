{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Categorization Schema: 
An Asset Categorization Schema is an Categorization Schema used to classify Asset Types.There are different kinds of Asset Categorization Schema that applies only to certain subtypes of Asset Types.For instance:. Data Category applies to Information Assets.. Process Family applies to Resource Operating Assets.. Risk Type applies to Functional Assets.

Documentation : https://framework.sysfeat.com/pages/f69620466a0f9c2f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f69620466a0f9c2f where -- ========== AssetCategorizationSchema

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationSchema

AssetCategorizationSchema : ∀ (u : Level) → MetaClass (lsuc(lsuc u))
AssetCategorizationSchema u = MetaClass (lsuc  u)


--  AssetCategorizationSchema is subTypeOf ModelCategorizationBlock
st-f69620466a0f9c2f-0eb97aff6855cd23 : ∀ {u v} → AssetCategorizationSchema u ⊏⋆ₑ ModelCategorizationBlock (lsuc(lsuc(lsuc( v))))
st-f69620466a0f9c2f-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

--  AssetCategorizationSchema is subTypeOf CategorizationSchema
st-f69620466a0f9c2f-220d23706ad71311 : ∀ {u v} → AssetCategorizationSchema u ⊏⋆ₑ CategorizationSchema v
st-f69620466a0f9c2f-220d23706ad71311 = trivialPolySubTypeOfEntity


