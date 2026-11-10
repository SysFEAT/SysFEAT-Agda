{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Categorization Block: 
A Model Categorization Block is a Building Block used to provide classification and qualification of Model Building Blocks.For instance, Tags are used for classification. Condition Value are used for qualification or quantification.

Documentation : https://framework.sysfeat.com/pages/0eb97aff6855cd23.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb97aff6855cd23 where -- ========== ModelCategorizationBlock

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- BuildingBlock

ModelCategorizationBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u 
ModelCategorizationBlock u  = MixedOrderEntity u 


--  ModelCategorizationBlock is subTypeOf BuildingBlock
st-0eb97aff6855cd23-23d5a9ea68513ced : ∀ {u v} → ModelCategorizationBlock u ⊏⋆ₑ BuildingBlock v
st-0eb97aff6855cd23-23d5a9ea68513ced = trivialPolySubTypeOfEntity


-- == Relations =======================
