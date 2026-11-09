{- ============================== 
   Copyright (c) 2023 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Governance Core: 
The Data Governance Core domain provides the core entities shared by all Data Governance sub-domains.Data Catalogs, along with their associated governance tools, form the central Management Systems that enable the execution of Data Governance objectives.

Documentation : https://framework.sysfeat.com/pages/44254cce6182c076.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.EA.sysfeat-domain-44254cce6182c076 where -- ========== Data Governance Core

open import SysFEAT.C-SOF.sysfeat-domain-07e72dd55ecc888a public -- Enterprise Glossary
open import SysFEAT.SOF.sysfeat-domain-d6cd2c8b5ab98da5 public -- Information Assets
open import SysFEAT.EA.sysfeat-domain-fe663dd261817752 public -- Operational Assurance
open import SysFEAT.EA.sysfeat-domain-a951eec1619413a3 public -- Deployed Facility Assets
open import SysFEAT.EA.sysfeat-domain-7c3aae72617a2499 public -- Data Asset Assurance
open import SysFEAT.EA.sysfeat-domain-d326d866617a49a5 public -- Data Provenance & Reliability Assurance

open import SysFEAT.EA.b90aeac8600e619f public -- Data Assurance Case
open import SysFEAT.EA.9152d8875ed741ef public -- Data Catalog
