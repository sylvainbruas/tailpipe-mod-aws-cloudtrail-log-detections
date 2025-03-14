locals {
  mitre_attack_v161_ta0040_common_tags = merge(local.mitre_attack_v161_common_tags, {
    mitre_attack_tactic_id = "TA0040"
  })
}

benchmark "mitre_attack_v161_ta0040" {
  title         = "TA0040 Impact"
  type          = "detection"
  documentation = file("./mitre_attack_v161/docs/ta0040.md")
  children = [
    benchmark.mitre_attack_v161_ta0040_t1485,
    benchmark.mitre_attack_v161_ta0040_t1490,
    benchmark.mitre_attack_v161_ta0040_t1498,
    benchmark.mitre_attack_v161_ta0040_t1531,
    benchmark.mitre_attack_v161_ta0040_t1561,
    benchmark.mitre_attack_v161_ta0040_t1565,
  ]

  tags = merge(local.mitre_attack_v161_ta0040_common_tags, {
    type = "Benchmark"
  })
}
