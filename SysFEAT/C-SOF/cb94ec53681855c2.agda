{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Functional Asset: 
Conceptual Functional Assets are Functional Assets used to describe the Conceptual Operating Model of an enterprise to shape its functional division of labor.

Documentation : https://framework.sysfeat.com/pages/cb94ec53681855c2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.cb94ec53681855c2 where -- ========== ConceptualFunctionalAsset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- AssetType

ConceptualFunctionalAsset : BoundedIndividualMetaClass
ConceptualFunctionalAsset = AssetType


--  ConceptualFunctionalAsset is subTypeOf AssetType
st-cb94ec53681855c2-a4a5b3f855585ce1 : ConceptualFunctionalAsset ⊏ₑ AssetType
st-cb94ec53681855c2-a4a5b3f855585ce1 = polySubTypeOf-identity


-- == Relations =======================
