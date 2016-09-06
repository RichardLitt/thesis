# Thesis Roadmap

## Goal

Extend the LREC paper into a full-length thesis. Give a broader overview of the state of low-resource languages in Europe (and elsewhere).

Advisors: Alexis Palmer, Dietrich Klakow

## Table of Contents

### Introduction

- Definition of computational linguistics, and linguistic tooling
- Code as it pertains to lrl
- state of the field linguistically
- State of the field computationally
- Lack of sharing code or storing it usefully, due to factors: funding, academic cycle, inability, scope, lack of knowledge of domain
- Some shared code

In this paper, I will talk about:

- Open source code
  -  Longevity of linguistic scholarship and work
  - Data, rights, liability, and privacy
  - Funding
    - Institutional bottleneck
    - Linguistic colonialism
    - Ethical and moral concerns for military usage
    - Ethical and moral concerns for big business usage
- Open Source work currently available
  - Case study on GitHub, SourceForge, some archival sites (UPenn, Max Planck, DFKI)
- Case study using endangered-languages repository
  - Clean up resource
    - Add all listed resources in issues
    - Contact and create the LSA CELP Technology Subcommittee
    - Clone all SourceForge repositories
    - Rename to low-resource-languages
    - "List quality"
    - "the pages and subpages are often dead"
  - Get diagnostics on the state of the links I've found:
    - What percentage have been updated when
    - Downloaded, etc.
  - Review Excel results
- Peer-to-peer solution for sharing code
  - Stub out example
  - Build a web searcher for automatically getting and sharing code
Further Work:
  - Open source data repositories (touch on)
  - Working with Ethnologue
Conculusion



#### Open Source code

What it is, the history of it in Computational Linguistics and elsewhere, and various incentive models for using open source methods

#### Data and privacy

Whether it makes sense to decouple code from data, especially in cases of low resource languages, where sparse data may be naturally enriched with annotation schemas and hard to separate out from the tools being used. In such cases, how do we as a community, researchers as providers, and developers as consumers, deal with licensing, privacy, and proprietary data? Does it make sense to provide links to code that can be used institutionally or commercially without also allowing for things like royalties for usage, or proper licensing for data? Bound up in this are also ethical concerns - well studied in theoretical field linguistics - about the language users themselves not wishing for their data to be used in certain ways.

#### Funding

IARPA and DARPA both are involved with low resource languages and both of them may have their own institutional values that are probably at ends with independent researchers, commercial consumers, and language communities. Does working on sparse data openly bring along with it ethical or moral concerns; if so, how can these be adequately explained, breached, and talked about? How can they be worked around or be part of the conversation? Note that DARPA and the like also use humanitarian reasons as their primary stated aim for work on sparse languages, which may be contrary to their military needs. There is already an extensive literature on moral uses of data -- I could summarize that, and apply it specifically to low resource languages, which is something I do not think has yet been published.

#### Digital Permanence and Storage

Universities and institutions have short timelines and are largely dependent on specific, allocated, and thus finite funding. What other models are there for data storage? What concerns are there?

#### Choosing Repositories

Longer term plans for open source repositories; GitHub is useful currently, but it also a business, and as such its aims may not be aligned with its users. I would like to talk about building a database of open source repositories on a secure, permanent, peer-to-peer network. This is something I am actively involved in professionally (I currently work at IPFS, which is building such a network). I would like to talk about linguistic and scientific applications of using versioned, p2p, and distributed systems for storing both open source code related to low resource languages as well as language data. 

#### Language Specific Needs

- Disambiguate low-resource language, minoirty languages, endangered languages, and sparse languages (among others) are used often synonymously, but are distinct and come along with different stakeholders and communities, which means different values, methods, and goals.
- A review of low resource language resources and their target communities and languages, in general; a state of the field for the issue.
- Specific examples of cross-language applicability of an open source coding library (such as NLTK, or more specifically, family-related usage of parsers or MT models), and what that says about the incentives and use cases for open source libraries. 

#### Example Use Case

I propose a study of RichardLitt/endangered-languages:
- It's uses (specifically)
- Current considerations in it's planning
- reception
  - User evaluations from other open source scientists
- Future goals

#### Tool

Build a web-application tool for serving a decentralized data store for endangered language tools and data

Example:

I have already put a subset of repositories listed on endangered-languages into IPFS, a p2p resource for storing and disseminating data in a decentralized and persistent fashion.

Process:

1. `cat` the endangered-languages README.md, then `grep` for `/.*(//github\.com/.*?/[a-zA-Z0-9-]*).*/` (all github.com repos).
2. Output list into separate file.
3. `awk` the first few repos, until a random divider, and clone the git repos: `awk '1;/kuromoji-server/{exit}' ../githublist.md | xargs -n1 git clone`
4. `ipfs add -r repos`
5. `ipfs pin add repos`

