{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Type: 
A Software System Type is an intangible, logic-based Artifact,  designed to perform tasks, process information, or enable control. It exists as code, data, or digital instructions and requires a computational medium to execute.

Documentation : https://framework.sysfeat.com/pages/ffdf5e1f68608352.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf5e1f68608352 where -- ========== SOftwareSystemType

open import Agda.Primitive
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact
open import SysFEAT.EA.c80afd2f6784305d public -- IntangibleResourceAgent

SOftwareSystemType : AgentMetaClass
SOftwareSystemType = AgentType


--  SOftwareSystemType is subTypeOf Artifact
st-ffdf5e1f68608352-ffdf5eb7686083b4 : SOftwareSystemType ⊏ₑ Artifact
st-ffdf5e1f68608352-ffdf5eb7686083b4 = polySubTypeOf-identity

--  SOftwareSystemType is subTypeOf IntangibleResourceAgent
st-ffdf5e1f68608352-c80afd2f6784305d : SOftwareSystemType ⊏ₑ IntangibleResourceAgent
st-ffdf5e1f68608352-c80afd2f6784305d = polySubTypeOf-identity


-- == Relations =======================
