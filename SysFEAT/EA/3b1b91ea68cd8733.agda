{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Artifact: 


Documentation : https://framework.sysfeat.com/pages/3b1b91ea68cd8733.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b91ea68cd8733 where -- ========== IndividualArtifact

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- IndividualResourceAgent
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact

IndividualArtifact : AgentType
IndividualArtifact = IndividualAgent


--  IndividualArtifact is subTypeOf IndividualResourceAgent
st-3b1b91ea68cd8733-fe1c231267880201 : IndividualArtifact ⊏ₑ IndividualResourceAgent
st-3b1b91ea68cd8733-fe1c231267880201 = polySubTypeOf-identity

postulate -- IndividualArtifact is PowerInstanceOf Artifact
  pi-3b1b94fc68cd8a67 : IndividualArtifact ∷ₚₑ Artifact

-- == Relations =======================
