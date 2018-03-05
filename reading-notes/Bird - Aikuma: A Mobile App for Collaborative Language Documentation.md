# Bird - Aikuma: A Mobile App for Collaborative Language Documentation

## Quotes

### Data Type

#### Audio
> The core of a language documentation consists of primary recordings along with transcriptions and translations (Himmelmann, 1998; Woodbury, 2003).
> The result is relatively clean source audio recordings with phrase-aligned translations. NLP methods are applicable to such data (Dredze et al., 2010), and we can hope that ultimately, researchers working on archived bilingual audio sources will be able to automatically extract word-glossed interlinear text.

#### Text
> A substantial text corpus can serve as the basis for the preparation of grammars and dictionaries even once a language is extinct, as we know from the cases of the extinct languages of the Ancient Near East.

### Translation

> Translation into another language obviates the need for the usual resource-intensive approaches to linguistic analysis that require syntactic treebanks along with semantic annotations, at the cost of a future decipherment effort (Xia and Lewis, 2007; Abney and Bird, 2010).

###  Local Storage

> Aikuma supports local networking so that a set of mobile phones can be synchronized, and anyone can listen to and annotate the recordings made by others.

#### File Format

> Third, to facilitate trouble-shooting and future digital archaeology, the file format of phones needs to be transparent. We have devised an easily-interpretable directory hierarchy for recordings and users, which permits direct manipulation of recordings. For instance, all the metadata and recordings that involve a particular speaker could be extracted from the hierarchy with a single filename pattern.

> Storage uses a hierarchical file structure and plain text metadata formats which can be easily accessed directly using command-line tools. Files are shared using FTP. Transcripts are stored using the plain text NIST HUB-4 transcription format and can be exported in Elan format.

> Aikuma incorporates a webserver and clients can connect using the phone's WiFi, Bluetooth, or USB interfaces. The app provides a browser-based transcription tool that displays the waveform for a recording along with the spoken annotations.

### Too much data

> some have argued that it is not effective to collect large quantities of primary recordings because there is not the time to transcribe it.

- [ ] Read E.g. Paul Newman's 2013 seminar The Law of Un- intended Consequences: How the Endangered Languages Movement Undermines Field Linguistics as a Scientific Enterprise, https://www.youtube.com/watch?v= xziE08ozQok

## Notes

> Given the interest of classical philology in ancient languages, we think of this researcher as the “future philologist.”

I think this is misguided. It would be better to record languages for connection, not just for philological research. But that's not the point of my research at the moment.

- [ ] What is the "Boasian trilogy"?

> We have tested Aikuma in Papua New Guinea, Brazil, and Nepal (Bird et al., 2014)

- [ ] Read Bird et al 2014. "Collecting bilingual audio in remote indigenous communities."
  - [x] Downloaded

> To support large scale deployment, we are adding support for workflow management, plus interfaces to the Internet Archive and to SoundCloud for long term preservation and social interaction.

- [ ] Check up on this