
{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NaturalPartitionOfClassOfEntity:
A ClassOfEntity is either a ConceptCategory or a ConceptClass

Documentation : https://framework.sysfeat.com/pages/37a0462f6aea4c24.htm

External references:
  SysFEAT - TheoraticalFoundations- Multilevel Modeling : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.37a0462f6aea4c24 where -- ============ NaturalPartitionOfClassOfEntity

open import SysFEAT.UpperOntology.cd90d8756ae17cc9 public -- ConceptClassPartition
open import SysFEAT.UpperOntology.8d1fa46c6ae82899 public -- ConceptClass
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategory

-- ============================================================
-- I. Partition Definition
-- ============================================================ 
NaturalPartitonOfClassOfEntity : ∀ (u : Level) → (ConceptClassPartition u)
NaturalPartitonOfClassOfEntity u = ClassOfEntity u

postulate
  37a0462f6aea4c24 :  ∀ {u} →  (NaturalPartitonOfClassOfEntity u) —⟨ partitionedClass ⟩→ (ClassOfEntity u)
  37a046f56aea4c91 :  ∀ {u} →  (NaturalPartitonOfClassOfEntity u) —⟨ memberClass ⟩→ (ConceptCategory u)
  37a046f56aea4ca9 :  ∀ {u} →  (NaturalPartitonOfClassOfEntity u) —⟨ memberClass ⟩→ (ConceptClass u)
