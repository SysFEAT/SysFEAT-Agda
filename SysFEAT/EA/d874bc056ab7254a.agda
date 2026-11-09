{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Dictionary: 
A Physical Data Dictionary is a Data Dictionary that holds the definition of Physical Data Blocks such as Physical Data Domain definitions, Table definitions, Column Type definitions.

Documentation : https://framework.sysfeat.com/pages/d874bc056ab7254a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d874bc056ab7254a where -- ========== PhysicalDataDictionary

open import Agda.Primitive
open import SysFEAT.EA.67d376e36aa45056 public -- DataDictionary
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- PhysicalDataBlock

PhysicalDataDictionary : ClassOfMixedOrderEntity
PhysicalDataDictionary = MixedOrderEntity


--  PhysicalDataDictionary is subTypeOf DataDictionary
st-d874bc056ab7254a-67d376e36aa45056 : PhysicalDataDictionary ⊏ₑ DataDictionary
st-d874bc056ab7254a-67d376e36aa45056 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Physical Data Block: -}
packagedPhysicalDataBlock : ∀ {u} →  Linkage PhysicalDataDictionary (PhysicalDataBlock u)
packagedPhysicalDataBlock = make_nestingRelation "Packaged Physical Data Block" "Packaged Physical Data Block"

postulate -- packagedPhysicalDataBlock is subTypeOf packagedDataAsset
  st-8f1caca768ca9d38-8f1c922668ca7ff9  : packagedPhysicalDataBlock  ⊏⋆ᵣ  packagedDataAsset
