{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Dictionary: 
A Relational Dictionary is a Physical Data Dictionary of relational entities (Tables, Keys, Indexes, etc.) and of Relational Schema referencing theses entites.

Documentation : https://framework.sysfeat.com/pages/d874bd296ab72719.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d874bd296ab72719 where -- ========== RelationalDictionary

open import Agda.Primitive
open import SysFEAT.EA.d874bc056ab7254a public -- PhysicalDataDictionary
open import SysFEAT.EA.d874bd8d6ab727f1 public -- RelationalDataBlock

RelationalDictionary : ClassOfMixedOrderEntity
RelationalDictionary = MixedOrderEntity


--  RelationalDictionary is subTypeOf PhysicalDataDictionary
st-d874bd296ab72719-d874bc056ab7254a : RelationalDictionary ⊏ₑ PhysicalDataDictionary
st-d874bd296ab72719-d874bc056ab7254a = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Relational Block: -}
packagedRelationalBlock : ∀ {u} →  Linkage RelationalDictionary (RelationalDataBlock u)
packagedRelationalBlock = make_nestingRelation "Packaged Relational Block" "Packaged Relational Block"

postulate -- packagedRelationalBlock is subTypeOf packagedPhysicalDataBlock
  st-8f1caff468caa22b-8f1caca768ca9d38  : packagedRelationalBlock  ⊏⋆ᵣ  packagedPhysicalDataBlock
