{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Stored Procedure: 
A Stored Procedure is a is a subroutine available to applications that access a relational database management system (RDBMS). It is a kind of Resource Process handled by RDBMS.

Documentation : https://framework.sysfeat.com/pages/3c079ba761e14314.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3c079ba761e14314 where -- ========== StoredProcedure

open import Agda.Primitive
open import SysFEAT.EA.d874bd8d6ab727f1 public -- RelationalDataBlock
open import SysFEAT.EA.362f3ca45b3b234b public -- RelationalEntity

StoredProcedure : ClassOfMixedOrderEntity
StoredProcedure = MixedOrderEntity


--  StoredProcedure withAspect RelationalDataBlock
st-3c079ba761e14314-d874bd8d6ab727f1 : StoredProcedure ⊏ₐₑ (RelationalDataBlock (lsuc(lzero)))
st-3c079ba761e14314-d874bd8d6ab727f1 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Referenced Entity: -}
referencedEntity :  Linkage StoredProcedure RelationalEntity
referencedEntity = make_classOfHolonymy "Referenced Entity" "Referenced Entity"

