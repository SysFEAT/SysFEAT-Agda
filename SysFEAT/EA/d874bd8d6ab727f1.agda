{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Data Block: 
A Relational Data Block is a Data Asset used for description of relational data consumed and produced by Business Software Systems.Relational Data Blocks range from Relational Schemas to Column Types.They are defined in Relational Dictionary(ies) and managed in Data Catalogs.

Documentation : https://framework.sysfeat.com/pages/d874bd8d6ab727f1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d874bd8d6ab727f1 where -- ========== RelationalDataBlock

open import Agda.Primitive
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- PhysicalDataBlock

RelationalDataBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u 
RelationalDataBlock u  = MixedOrderEntity u 


--  RelationalDataBlock is subTypeOf PhysicalDataBlock
st-d874bd8d6ab727f1-8f1cad7d68ca9df0 : ∀ {u v} → (RelationalDataBlock u) ⊏⋆ₑ (PhysicalDataBlock v)
st-d874bd8d6ab727f1-8f1cad7d68ca9df0 = trivialPolySubTypeOfEntity


-- == Relations =======================
