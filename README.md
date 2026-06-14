# Hamonizer

A Claude skill for weaving subtle Moha (膜蛤) references into prose.

Moha (膜蛤, "toad worship") is a Chinese internet subculture built around ironic, affectionate admiration of Jiang Zemin's theatrical persona — his multilingual showmanship, unguarded rhetoric, and memorable outbursts. Participants, called 蛤丝, treat canonical Jiang moments as a shared cultural lexicon.

The hamonizer skill inserts references from this lexicon into text so that 蛤丝 notice them and find them funny, while non-蛤丝 read past them naturally.

---

## Repository structure

```
hamonizer/
├── hamonizer-skill/        ← Claude skill (install the .skill file)
│   ├── SKILL.md            ← Skill instructions and trigger rules
│   └── references/
│       └── moha_corpus.md  ← Canonical phrase library with source citations
└── quotes/                 ← Verified Jiang Zemin quote corpus
    ├── README.md           ← Corpus documentation and verification policy
    ├── sources/            ← One file per primary source event
    │   ├── 01_hk_journalist_incident_2000.md   ← 蛤三篇 篇一
    │   ├── 02_mike_wallace_60minutes_2000.md    ← 蛤三篇 篇二
    │   ├── 03_clinton_press_conference_1998.md
    │   ├── 04_barbara_walters_1990.md
    │   ├── 05_three_represents_official.md
    │   ├── 06_cuec_visit_2009.md               ← 蛤三篇 篇三
    │   └── 07_multilingual_performances.md
    └── by_language/        ← Quotes organized by language
        ├── chinese.md
        ├── english.md
        └── other_languages.md
```

---

## The skill

**Trigger:** Only activates when you explicitly mention Jiang Zemin / 江泽民, moha / 膜蛤 / 蛤丝, or use the command `hamonize this paragraph`.

**What it does:**
- Reads a prose passage and finds natural insertion points for Moha references
- Defaults to subtle insertions (plausibly deniable to non-蛤丝)
- Offers moderate alternatives in an annotation block
- Enforces tempo: one or two references per passage, never more
- Works in English, Chinese, or bilingual prose
- Overt 蛤 slang (续命, +1s, etc.) available on explicit request only

**Canonical references in the lexicon:**

| Phrase | Source |
|---|---|
| "too young, too simple, sometimes naïve" | 蛤三篇 篇一 (HK journalist incident, 2000) |
| "I'm angry!" | 蛤三篇 篇一 |
| 长者 (the elder) | 蛤三篇 篇一 |
| 悶聲大發財 | 蛤三篇 篇一 |
| 谈笑风生 | 蛤三篇 篇一/篇二 |
| Gettysburg Address | 蛤三篇 篇二 (Mike Wallace interview, 2000) |
| "much ado about nothing" | Barbara Walters interview, 1990 |
| "Exciting!" / 亦可赛艇 | 蛤三篇 篇三 (CUEC visit, 2009) |
| 苟利国家生死以，岂因祸福避趋之 | 蛤三篇 篇三 |

---

## The quote corpus

The `quotes/` directory contains verified primary-source material: full transcripts, official texts, and performance records covering 1990–2009. All quotes are stored in their original spoken language. Internet fabrications are excluded. See `quotes/README.md` for the full verification policy.

---

## Academic reference

Fang, Kecheng. "Turning a communist party leader into an internet meme: the political and apolitical aspects of China's toad worship culture." *Information, Communication & Society* 23(1): 38–58, 2020. doi:10.1080/1369118X.2018.1485722
