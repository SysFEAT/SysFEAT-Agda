{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Asset: 
Conceptual Assets are Functional Assets used to describe the Conceptual Operating Model of an enterprise to shape its functional division of labor.

Documentation : https://framework.sysfeat.com/pages/cb94ec53681855c2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.cb94ec53681855c2 where -- ========== ConceptualAsset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- AssetType
open import SysFEAT.SOF.a04ea65b6ae745ef public -- ConceptualLevel

ConceptualAsset : BoundedIndividualMetaClass
ConceptualAsset = ClassOfBoundedIndividual


--  ConceptualAsset is subTypeOf AssetType
st-cb94ec53681855c2-a4a5b3f855585ce1 : ConceptualAsset ⊏ₑ AssetType
st-cb94ec53681855c2-a4a5b3f855585ce1 = polySubTypeOf-identity

--  ConceptualAsset withAspect ConceptualLevel
st-cb94ec53681855c2-a04ea65b6ae745ef : ConceptualAsset ⊏ₐₑ ConceptualLevel lzero
st-cb94ec53681855c2-a04ea65b6ae745ef = polySubTypeOf-identity


-- == Relations =======================
