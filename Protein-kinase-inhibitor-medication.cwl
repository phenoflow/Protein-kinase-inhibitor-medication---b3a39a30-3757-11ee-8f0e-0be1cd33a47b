cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  protein-kinase-inhibitor-medication-imatinib---primary:
    run: protein-kinase-inhibitor-medication-imatinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  protein-kinase-inhibitor-medication-tarceva---primary:
    run: protein-kinase-inhibitor-medication-tarceva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-imatinib---primary/output
  protein-kinase-inhibitor-medication-glivec---primary:
    run: protein-kinase-inhibitor-medication-glivec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-tarceva---primary/output
  protein-kinase-inhibitor-medication-erlotinib---primary:
    run: protein-kinase-inhibitor-medication-erlotinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-glivec---primary/output
  protein-kinase-inhibitor-medication-200mg---primary:
    run: protein-kinase-inhibitor-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-erlotinib---primary/output
  protein-kinase-inhibitor-medication-250mg---primary:
    run: protein-kinase-inhibitor-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-200mg---primary/output
  protein-kinase-inhibitor-medication-dasatinib---primary:
    run: protein-kinase-inhibitor-medication-dasatinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-250mg---primary/output
  protein-kinase-inhibitor-medication-125mg---primary:
    run: protein-kinase-inhibitor-medication-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-dasatinib---primary/output
  protein-kinase-inhibitor-medication-nilotinib---primary:
    run: protein-kinase-inhibitor-medication-nilotinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-125mg---primary/output
  protein-kinase-inhibitor-medication---primary:
    run: protein-kinase-inhibitor-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-nilotinib---primary/output
  protein-kinase-inhibitor-medication-afinitor---primary:
    run: protein-kinase-inhibitor-medication-afinitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication---primary/output
  protein-kinase-inhibitor-medication-everolimu---primary:
    run: protein-kinase-inhibitor-medication-everolimu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-afinitor---primary/output
  protein-kinase-inhibitor-medication-pazopanib---primary:
    run: protein-kinase-inhibitor-medication-pazopanib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-everolimu---primary/output
  votrient-protein-kinase-inhibitor-medication---primary:
    run: votrient-protein-kinase-inhibitor-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-pazopanib---primary/output
  protein-kinase-inhibitor-medication-100mg---primary:
    run: protein-kinase-inhibitor-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: votrient-protein-kinase-inhibitor-medication---primary/output
  protein-kinase-inhibitor-medication-axitinib---primary:
    run: protein-kinase-inhibitor-medication-axitinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-100mg---primary/output
  protein-kinase-inhibitor-medication-tablet---primary:
    run: protein-kinase-inhibitor-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-axitinib---primary/output
  protein-kinase-inhibitor-medication-ruxolitinib---primary:
    run: protein-kinase-inhibitor-medication-ruxolitinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-tablet---primary/output
  protein-kinase-inhibitor-medication-afatinib---primary:
    run: protein-kinase-inhibitor-medication-afatinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-ruxolitinib---primary/output
  tafinlar-protein-kinase-inhibitor-medication---primary:
    run: tafinlar-protein-kinase-inhibitor-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-afatinib---primary/output
  protein-kinase-inhibitor-medication-nintedanib---primary:
    run: protein-kinase-inhibitor-medication-nintedanib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: tafinlar-protein-kinase-inhibitor-medication---primary/output
  protein-kinase-inhibitor-medication-140mg---primary:
    run: protein-kinase-inhibitor-medication-140mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-nintedanib---primary/output
  protein-kinase-inhibitor-medication-dabrafenib---primary:
    run: protein-kinase-inhibitor-medication-dabrafenib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-140mg---primary/output
  protein-kinase-inhibitor-medication-trametinib---primary:
    run: protein-kinase-inhibitor-medication-trametinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-dabrafenib---primary/output
  protein-kinase-inhibitor-medication-capsule---primary:
    run: protein-kinase-inhibitor-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-trametinib---primary/output
  protein-kinase-inhibitor-medication-150mg---primary:
    run: protein-kinase-inhibitor-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-capsule---primary/output
  protein-kinase-inhibitor-medication-cabozantinib---primary:
    run: protein-kinase-inhibitor-medication-cabozantinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-150mg---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: protein-kinase-inhibitor-medication-cabozantinib---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
