{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Event: 
An Conceptual Event is a Temporal Bounding Type that establishes a temporal connection between Conceptual Behaviors.An Conceptual Event connects a Previous Behavioral Event, to a Next Behavioral Event.

Documentation : https://framework.sysfeat.com/pages/21918fed6786592c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.21918fed6786592c where -- ========== ConceptualEvent

open import Agda.Primitive
open import SysFEAT.SOF.24ae31d75ed1c747 public -- BehavioralEvent
open import SysFEAT.C-SOF.cb94ec53681855c2 public -- ConceptualFunctionalAsset

ConceptualEvent : BoundedIndividualMetaClass
ConceptualEvent = AssetType


--  ConceptualEvent is subTypeOf BehavioralEvent
st-21918fed6786592c-24ae31d75ed1c747 : ConceptualEvent ⊏ₑ BehavioralEvent
st-21918fed6786592c-24ae31d75ed1c747 = polySubTypeOf-identity

--  ConceptualEvent is subTypeOf ConceptualFunctionalAsset
st-21918fed6786592c-cb94ec53681855c2 : ConceptualEvent ⊏ₑ ConceptualFunctionalAsset
st-21918fed6786592c-cb94ec53681855c2 = polySubTypeOf-identity


-- == Relations =======================
