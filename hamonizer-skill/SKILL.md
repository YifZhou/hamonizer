---
name: hamonizer
description: |
  Weave subtle Moha (膜蛤) references into prose — allusions to Jiang Zemin's canonical phrases and moments, drawn from the 蛤三篇, recognizable to 蛤丝 but fitting naturally into any text. Trigger ONLY when the user explicitly (1) mentions Jiang Zemin / 江泽民 by name, (2) mentions moha / 膜蛤 / 蛤丝 / 长者, or (3) uses the command "hamonize" followed by a passage or file. Do NOT trigger on general China history, internet meme culture, or political satire that does not invoke these specific signals.
---

# Hamonizer

Your job is to take a prose passage and return a version with Moha (膜蛤) references woven in — allusions to Jiang Zemin's canonical phrases, mannerisms, and cultural moments from the 蛤三篇. The references must land for a 蛤丝. A non-蛤丝 reader should either miss the joke entirely or find the sentence perfectly sensible.

This is satire. The joke lives in the contrast between the gravity of the surrounding text and the sudden appearance of a phrase a 蛤丝 will recognize.

---

## The cardinal rule: tempo

One or two references per passage. Three is the absolute ceiling for a long passage (500+ words). Four destroys the joke.

The entire humor structure of Moha culture depends on the unexpected appearance of 长者 in an otherwise serious sentence. Ubiquity kills that. If nothing fits without forcing, say so — that is the correct answer, not a forced insertion.

---

## Language

Prioritize the original language of the source material:

- **English prose**: use English-original quotes directly — "too young, too simple, sometimes naïve"; "Excited!"; "I'm angry!"; "Your soul will be so sweet"; Gettysburg Address fragments
- **Chinese prose**: use Chinese-original phrases — 长者, 图森破, 苟利国家生死以，岂因祸福避趋之, 谈笑风生, 悶聲大發財, 亦可赛艇
- **Bilingual mixing** (Chinese phrase in English text, or English interjection in Chinese text) is itself a Moha joke — Jiang famously did this — so it is fair game at the moderate level
- For Chinese phrases in English prose at the subtle level, a natural parenthetical or an approximate English rendering works: "the elder" for 长者, "make money in silence" for 悶聲大發財

---

## Reference levels

Offer both levels per insertion. Default output uses the subtle version. List the moderate alternative in the annotation.

**Subtle**: Plausibly deniable. The reference is present but a non-蛤丝 reads past it naturally. The phrase functions on its literal meaning.

> "The elder members of the panel had, after all, been through hundreds of battles."
> "Much ado about nothing, the referees later agreed."
> "The speaker recalled four score and seven years of prior work — or something to that effect."

**Moderate**: Recognizable to any 蛤丝. Slightly odd to a non-蛤丝 but not disruptive. The exact phrase or a close variant appears in context.

> "The committee, in typical 长者 fashion, suggested the student was perhaps too young, too simple."
> "亦可赛艇! — the PI wrote in the margin."
> "苟利国家生死以，岂因祸福避趋之: one might say the same of grant deadlines."

**Overt**: Direct 蛤 internet slang — 续命/+1s as ritual, 图样图森破 spelled out, explicit comment-section conventions. Dense and unmistakable to any 蛤丝; jarring to non-蛤丝. Use when the context calls for it or the user asks for maximum spice.

---

## Workflow

1. **Identify the register.** Read the passage and determine: formal or informal? Chinese, English, or mixed? Scientific paper, email, news, grant prose, casual? If the context is too ambiguous to choose references appropriately, ask before proceeding.

2. **Find natural insertion points.** The table below lists common semantic hooks — use it as a starting point, not an exhaustive constraint. If a passage contains a natural opening for a reference that is in the corpus but not listed here, use it. The only hard limits are: (a) every reference must trace to `references/moha_corpus.md`, and (b) the one-or-two rule.

   | Hook in the text | Reference to consider |
   |---|---|
   | Elders, seniority, wisdom, authority | 长者 |
   | Youthful naivety, overconfidence, inexperience | "too young, too simple, sometimes naïve" |
   | Excitement, pleasant surprise | "Excited!" / 亦可赛艇 |
   | Principled duty, sacrifice for a cause | 苟利国家生死以，岂因祸福避趋之 |
   | Improbable career outcome, fate vs. effort | 一个人的命运啊，当然要靠自我奋斗，但是也要考虑到历史的行程 |
   | False modesty, reluctant acceptance | 另请高明 |
   | Listing achievements then dismissing them | 很惭愧，就做了一点微小的工作 |
   | Charming, relaxed conversation or collaboration | 谈笑风生 |
   | Making money quietly, discretion | 悶聲大發財 |
   | Democracy, people's government, equality | Gettysburg Address angle — closing line ("government of the people...") |
   | Something ancient was brought forth, tested by time, now examined for survival | Gettysburg Address — opening and middle movements ("Four score and seven... brought forth... testing whether... can long endure") |
   | Anger, indignation | "I'm angry!" |
   | Battle-tested experience | 身经百战 |
   | Expertise, sophistication, intellectual level | 知识水平 (subtle) / 姿势水平 (moderate, Chinese only) |
   | Sensationalism, manufacturing drama, overreach | 弄个大新闻 |
   | Jumping to conclusions, reasoning from thin evidence | 见着风，是得雨 |
   | Rhetorical "do you follow?" after a lecture or put-down | 識得唔識得 (Chinese prose only) |
   | Multilingual performance, cosmopolitan breadth | O Sole Mio / Moscow Nights / 毕业歌 angle (use sparingly) |
   | Accused of overreach, authoritarianism, or abuse of power | 我还有两年就退休了 — the procedural-retirement deflection |
   | Dismissing someone's intellectual depth, ending a debate by withdrawing | 不太懂历史和哲学，我就不多说了 |
   | Eulogy, farewell to a formidable adversary | "Your soul will be so sweet. I will miss you." |

3. **Apply the one-or-two rule.** Pick the best one or two insertion points. Leave the rest. The references you *don't* insert matter as much as the ones you do.

4. **Check against the corpus.** Consult `references/moha_corpus.md` for exact phrasing, source context, and usage notes — especially for less common references (身经百战, 三个代表, 谈笑风生). Never fabricate a Jiang quote.

---

## Output format

Present:
1. The rewritten passage (subtle version inline)
2. An annotation block beneath it

**Annotation format:**

---
**膜蛤注释 / Moha insertions:**

- **[phrase used]** — subtle version (shown above). Moderate alternative: [alternative].
- *(If nothing was inserted: brief note on what was considered and why it didn't fit, plus options for the user to choose from if they want to push further.)*

---

---

## What not to do

- Never fabricate a Jiang Zemin quote. Every reference must trace to the verified corpus.
- Never insert references at every semantic opportunity. Restraint is the mechanism of the joke.
- Never explain the reference to the reader inside the passage — the annotation block is for the user only.
- Never trigger on general China history or political humor that doesn't invoke Moha specifically.

---

## Advanced techniques: beyond lexical insertion

The skill's core framework is *lexical* — a recognizable phrase appears in a new context. But Moha humor has additional mechanisms that work especially well at the subtle setting, and that expand what counts as a "reference."

---

### 1. Structural mimicry

Reproduce the *rhetorical architecture* of a source without quoting it directly. The Moha signal is the shape, not the words.

The Gettysburg Address has a three-part movement:

> **Founding:** "X ago our fathers brought forth... conceived in Y and dedicated to the proposition that Z."
> **Crisis:** "Now we are engaged in... testing whether that [thing], or any [thing] so conceived and so dedicated, can long endure."
> **Legacy:** "...shall not perish from the earth."

Each slot is independently reusable. Substitute new content into the cadence and the structure carries the reference — a 蛤丝 who knows Jiang recited the *whole Address* from memory for Wallace will recognize the skeleton even when every word has been replaced.

**Example (scientific abstract):**
> "Four score and seven million years ago, the solar nebula brought forth in this disk a new generation of planetesimals, conceived in streaming instability and dedicated to the proposition that dust and gas, properly arranged, can collapse. Now we are engaged in a great theoretical effort, testing whether those objects, or any objects so conceived and so dedicated, can long endure."

Non-蛤丝: an unusually grandiloquent preamble. 蛤丝: the full Address, Jiang, Wallace, 篇二, in one paragraph.

The 三件事→微小 structure (篇三) is also a *form*, not just a phrase: enumerate three substantial achievements, then dismiss them all as 微小的工作. The skill already uses this as a closing punchline, but it can be deployed mid-passage whenever a list of results precedes a false-modesty clause.

---

### 2. Cadence substitution

The "conceived in X and dedicated to the proposition that Y" slot is infinitely generative. Any two-part founding claim with sufficient formality can be substituted in. The humor mechanism: the cadence becomes recognizable *before* the content is processed, so the reader experiences a half-second of cognitive dissonance — "why does this sound like Lincoln?" — before the content resolves it.

This is distinct from quoting. It is closer to singing a melody with different lyrics: the tune is the signal.

---

### 3. Delayed recognition

Standard Moha insertion assumes the reader recognizes the reference immediately upon encountering it. Structural mimicry enables *delayed recognition*: the reader first processes the surface content (Lincoln, or a philosophical reflection on fate), then — sometimes sentences later — completes the Moha layer (Jiang memorized Lincoln; Jiang said this about his own career).

Delayed recognition is the most deniable mechanism and the most appropriate for the **subtle setting**. The reference is present from the moment of insertion, but it only *activates* when the reader's background knowledge catches up. A non-蛤丝 never completes the circuit. A 蛤丝 gets a second laugh after the first sentence has passed.

---

### 4. Multi-insertion coherence (arcing)

The skill warns against density — too many insertions destroys the joke. But two insertions from the *same source event* placed at structurally distant points in a passage can form a silent arc that rewards a rereading. This is distinct from stacking.

**Example:** Deploying the Gettysburg opening movement at the start of an abstract, then embedding "shall not perish from the disk" (closing line) inside a technical sentence mid-passage. Neither references the other. A non-蛤丝 sees Lincoln used twice. A 蛤丝 recognizes that the full Address has been distributed across the abstract — beginning, middle, and end — the way Jiang performed it for Wallace: complete, from memory, start to finish.

Arcing works only when:
- Both insertions are from the same source event
- They are separated by enough prose that the second feels discovered rather than expected
- The second insertion is *structurally* later in the source than the first (i.e., they appear in the passage in the same order they appear in the original)

Arcing across different source events (篇一 + 篇三) does not produce this effect — it just raises density.

---

## Reference material

Read `references/moha_corpus.md` before choosing insertions. It contains the canonical phrase list with: original language, source event, verified quote, Moha cultural context, subtlety notes, and English/Chinese rendering options. Prioritize phrases from 蛤三篇 (sources 01, 02, 06) over less-known material.
