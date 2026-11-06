{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Event: 
An Individual Event is a Temporal Bounding that establishes a temporal connection between Individual Behaviors.An Individual Event connects a Previous Behavioral Event, to a Next Behavioral Event.

Documentation : https://framework.sysfeat.com/pages/e9af133166e86be3.htm

External references:
  ISO 15926 - Event: https://15926.blog/topics/data-model/index.htm#Event
  OpenGroup - ArchiMate - Event: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Behavior-Elements
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e9af133166e86be3 where -- ========== IndividualEvent

open import Agda.Primitive
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- TemporalBounding
open import SysFEAT.SOF.24ae31d75ed1c747 public -- BehavioralEvent

IndividualEvent : TemporalBoundingType
IndividualEvent = TemporalBounding


--  IndividualEvent is subTypeOf TemporalBounding
st-e9af133166e86be3-267b6a126675a0b9 : IndividualEvent ⊏ₑ TemporalBounding
st-e9af133166e86be3-267b6a126675a0b9 = polySubTypeOf-identity

postulate -- IndividualEvent is PowerInstanceOf Behavioral Event
  pi-e9af140b66e86cb9 : IndividualEvent ∷ₚₑ BehavioralEvent

-- == Relations =======================
