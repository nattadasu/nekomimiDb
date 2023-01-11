# nekomimiDb

Your Open-Source SFW Database of Characters (girls/boys) with Cat Ears because life didn't give it enough.

## Why?

Some people like cat ears. Some people like anime. Some people like both. Some people like both and want to have a database of characters with cat ears. This is for them.

Although, there are several databases dedicated to nekomimi (猫耳/cat ear) like [CatBoys](https://catboys.com) for cat boys and [Neko-love](https://neko-love.xyz) for cat girls (or even Boorus), they sometime lack artwork sourcing/credit, are not SFW, have little artworks, or are not up-to-date.

This repository may helps you in sourcing/credit artwork, finding new characters, or just having fun, as most of data were handpicked to be SFW as possible.

However, most of the images were hosted using Danbooru CDN, your country might blocked the CDN ~~as the site's images are mostly NSFW~~.

## How?

This database is generated as [CSV/TSV file with tab as delimiter](./index.tsv) using [`dataInput.ps1`](./dataInput.ps1).

The script will asks for several questions like Image URL, character gender, and artist's page. The script will then add the data to index file/database.

## Any Guidelines?

Yes, *ofc*. Below are the guidelines:

1. Images must be SFW
   * Mild nudity is out
2. Avoid shota/loli
3. Make sure if artist allows reposting
4. **No AI arts**

For database format, below are the guidelines:

1. ID must in hexadecimal (base16) format, 0-9 a-f
2. Artist name is based on their profile's Display Name
3. Platform name must in lowercase, latin
4. `girlOrBoy` valid string is either: `boy`, `girl`, `duo` (if image contains boy and girl), or `nb` (if character gender's on image unknown)
5. If a character is a VTuber, `mediaSource` must be corresponded to their agency name in Latin and exclude region code (Nijisanji, Hololive), otherwise follows "Character (VTuber)" format if solo/indie

## Statistics?

At the moment, we hosted **54 images** on index database.

| Platform | Count |
| -------: | :---- |
| Lofter | 1 |
| Pixiv | 24 |
| Twitter | 29 |

| Gender | Count |
| -----: | :---- |
| Boy `boy` | 19 |
| Both `duo` | 3 |
| Girl `girl` | 32 |

| Source | Count |
| -----: | :---- |
| #N/A | 7 |
| Arknight | 1 |
| Assault Lily | 1 |
| Azur Lane | 1 |
| Blue Archive | 2 |
| Bocchi the Rock! | 1 |
| Chainsaw Man | 4 |
| Chikyuu no Ura | 1 |
| Ensemble Stars | 2 |
| Final Fantasy XIV | 2 |
| Fire Emblem: Three Houses | 1 |
| Genshin Impact | 6 |
| Haikyuu!! | 1 |
| Hololive | 5 |
| Jujutsu Kaisen | 1 |
| Mikeneko (VTuber) | 3 |
| Mizushiro Kumori (VTuber) | 1 |
| Nachoneko (VTuber) | 1 |
| Nijisanji | 4 |
| Re:Zero kara Hajimeru Isekai Seikatsu | 1 |
| Red: Pride of Eden | 1 |
| Sen'yuu | 1 |
| Strike Witches | 1 |
| Sword Art Online | 1 |
| Tears of Themis | 1 |
| The Umbrella Academy | 1 |
| Touhou | 1 |
| VOCALOID | 1 |

| Artist | Count |
| -----: | :---- |
| でよ | 4 |
| seuga | 2 |
| Milk_Tea | 2 |
| c i r o チロ | 2 |
| 跨越千夜 | 1 |
| 赤マフラー大和 | 1 |
| 芯桜 雪姫乃 | 1 |
| 羽梛 | 1 |
| 石田 | 1 |
| 白木しろ | 1 |
| 無職ロリ | 1 |
| 横山ストッパ | 1 |
| 枫彧君 | 1 |
| 東雲あす | 1 |
| れれいん | 1 |
| りと〼 | 1 |
| ゅう | 1 |
| メーガー | 1 |
| マサキ樹（いつき） | 1 |
| ヒヨヨ | 1 |
| ねたみ | 1 |
| なも | 1 |
| すぁし | 1 |
| シンシア | 1 |
| しけー | 1 |
| がうりる | 1 |
| お丸太郎 | 1 |
| 른릉 | 1 |
| ZWJ | 1 |
| ZAN | 1 |
| tricky | 1 |
| TE | 1 |
| T1213121 | 1 |
| sllgiko_ | 1 |
| Seseren | 1 |
| Ron_kaneshiro | 1 |
| QuiteLane | 1 |
| Nekomi_ch | 1 |
| Mカエル | 1 |
| MG42CaT-K1ng | 1 |
| Mel | 1 |
| Lala | 1 |
| kaco0001 | 1 |
| Itsuka Eranville | 1 |
| e武器 | 1 |
| Cine | 1 |
| anajudraws | 1 |
| _从前有颗星 | 1 |
