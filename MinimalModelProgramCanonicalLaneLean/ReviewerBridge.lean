import MinimalModelProgramCanonicalLaneLean.Formalization
import MinimalModelProgramCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace MinimalModelProgramCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "5f7cdfb2cc961b69aef9e9ac444cbfc54fe8a562fbdfdf8a5a847ac58f3bdd62", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "f9cbd33c798759109f612a24f449062b572228d84c49f6687eec2a0b6e3bf560", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "713bf973b72789e9ef9b69aa54625befdb0af24108e782a00087fafd8d2c5e1c", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "c6226ca6958e1dfdae9ff930688484dd2ddd9d3cb12fff80b2d31bf5cba63367", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "c561f8379703dd14ef1d8ed296fb3f70fe21e22aab907cc4355cbb0a9df4b31c", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "0b1e43f6caf1adaf3bc1735a033bcc06a2e51a44850df661322839c9dd764dc4", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "53541692166fa140e693fe24bbb4778556d859063833e5c7fbfb08a5f3bca77d", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "c4019ebd60af1a3c1b921d879aea6280500569cedd05790b344c6f429f3d5c1b", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "dec6a8108fc48e2bce7d998fba7dc32d8b916cc499d7b54cc9f7003275f1328f", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "MMP_G1", constant := "kappa_birational" },
  { gate := "MMP_G2", constant := "sigma_mori" },
  { gate := "MMP_G3", constant := "kappa_compact" },
  { gate := "MMP_G4", constant := "rho_rigidity" },
  { gate := "MMP_G5", constant := "semiample_transfer" },
  { gate := "MMP_G6", constant := "eps_coh" },
  { gate := "MMP_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "4d94be93df0b77f15f9163d614006818bba76d3b54db9936bd63006c2d7762bf" },
  { path := "README.md", sha256 := "f25b8eac7845ab273db58fd2bd9ca6bced8d499394ffada1c0fda9f254ebc48e" },
  { path := "artifacts/constants_extracted.json", sha256 := "c6226ca6958e1dfdae9ff930688484dd2ddd9d3cb12fff80b2d31bf5cba63367" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "713bf973b72789e9ef9b69aa54625befdb0af24108e782a00087fafd8d2c5e1c" },
  { path := "artifacts/constants_registry.json", sha256 := "c561f8379703dd14ef1d8ed296fb3f70fe21e22aab907cc4355cbb0a9df4b31c" },
  { path := "artifacts/promotion_report.json", sha256 := "53541692166fa140e693fe24bbb4778556d859063833e5c7fbfb08a5f3bca77d" },
  { path := "artifacts/stitch_constants.json", sha256 := "0b1e43f6caf1adaf3bc1735a033bcc06a2e51a44850df661322839c9dd764dc4" },
  { path := "notes/EG1_public.md", sha256 := "f72a5fbf4e1334edeadcddae468e5ab93c27c785eafe1e50935fd0acd1d116af" },
  { path := "notes/EG2_public.md", sha256 := "464d085ed03dcac59e7a6ce21525fa80890f84dd5eca707fe982eb9e3cf8779b" },
  { path := "notes/EG3_public.md", sha256 := "6f06f17bc96c8f20f3275abad814ab9333931fbc650b20666be4c2c95f4b1b50" },
  { path := "notes/EG4_public.md", sha256 := "8728f70b82de07b1583e113b74c0128e70564585ca47f9442e6303a024f7a04e" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "f9cbd33c798759109f612a24f449062b572228d84c49f6687eec2a0b6e3bf560" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "e53b4b790c00758381ab5d3a4b8c3b959ed4eb097c8786ade40860cdcb0665ac" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "39a3d2b70da0d07e879c44a2081838b5da3d9e8bcd0d4118d7a2954055d4becb" },
  { path := "paper/MINIMAL_MODEL_PROGRAM_PREPRINT.md", sha256 := "270b7a85e29142770de7f642b2012f0e73c42b024ee1698f022d615f3a180a65" },
  { path := "repro/REPRO_PACK.md", sha256 := "ab4d0b6fbfd65114202f4e87a9e01273a2da1e7442feabd275912095cd6b8170" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "fbd8e9d7b5ba30dccb2c59f5386bba79c86debce92a661c4a4d3e47daf13fcce" },
  { path := "repro/certificate_baseline.json", sha256 := "dec6a8108fc48e2bce7d998fba7dc32d8b916cc499d7b54cc9f7003275f1328f" },
  { path := "repro/run_repro.sh", sha256 := "6a9dce2bef04c552ac0028e3f71ecfbf4909c8446edbc9580530ed0cc063b6e3" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/mmp_closure_guard.py", sha256 := "48e8590e3489911efb7f8dc01580ea5783eb6dfef4c178666fabb049c22f0b1d" },
  { path := "scripts/README.md", sha256 := "1f3f6a24254290abea3d8d8f7e5e23f796b3118d9e37dfcf6c6e9b233069c984" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "MMP_G1", status := "PASS" },
  { gate := "MMP_G2", status := "PASS" },
  { gate := "MMP_G3", status := "PASS" },
  { gate := "MMP_G4", status := "PASS" },
  { gate := "MMP_G5", status := "PASS" },
  { gate := "MMP_G6", status := "PASS" },
  { gate := "MMP_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_birational", value := "1.0951820000000003" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "rho_rigidity", value := "1.079" },
  { key := "semiample_transfer", value := "1.0305400000000002" },
  { key := "sigma_mori", value := "1.075" },
  { key := "sigma_star_can", value := "1.055" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_birational",
  "kappa_compact",
  "rho_rigidity",
  "semiample_transfer",
  "sigma_mori",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end MinimalModelProgramCanonicalLaneLean
end HautevilleHouse
