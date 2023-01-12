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
6. However, if its original character, write `#N/A` instead

## Statistics?

At the moment, we hosted **130 images** on index database.

| Platform | Count |
| -------: | :---- |
| Lofter | 1 |
| Pixiv | 80 |
| Twitter | 49 |

| Gender | Count |
| -----: | :---- |
| Boy `boy` | 54 |
| Both `duo` | 14 |
| Girl `girl` | 62 |

| Source | Count |
| -----: | :---- |
| #N/A | 23 |
| Arknights | 6 |
| Assault Lily | 1 |
| Attack on Titan | 1 |
| Azur Lane | 2 |
| Blue Archive | 3 |
| Bocchi the Rock! | 1 |
| Chainsaw Man | 4 |
| Chatora Reo (VTuber) | 1 |
| Chikyuu no Ura | 1 |
| Danganronpa V3: Killing Harmony | 1 |
| Diabolik Lovers ~Haunted dark bridal~ | 1 |
| Doki Doki Literature Club! | 1 |
| Ensemble Stars | 2 |
| Final Fantasy XIV | 2 |
| Fire Emblem: Three Houses | 1 |
| Genshin Impact | 14 |
| Haikyuu!! | 1 |
| Heart no Kuni no Alice | 1 |
| Hololive | 17 |
| Hypnosis Mic -Division Rap Battle- | 2 |
| Jujutsu Kaisen | 1 |
| Mafumafu (Singer) | 1 |
| Mikeneko (VTuber) | 3 |
| Miraculous Ladybug | 2 |
| Mizushiro Kumori (VTuber) | 1 |
| Nachoneko (VTuber) | 1 |
| Nijisanji | 8 |
| Princess Connect! | 2 |
| Project Sekai Colorful Stage! feat. Hatsune Miku | 1 |
| Re:Zero kara Hajimeru Isekai Seikatsu | 1 |
| Red: Pride of Eden | 1 |
| Sen'yuu | 1 |
| Sound Horizon | 1 |
| Strike Witches | 1 |
| Sword Art Online | 1 |
| Tears of Themis | 1 |
| The Umbrella Academy | 1 |
| Touhou | 1 |
| VOCALOID | 13 |
| VShojo | 1 |
| Xenoblade 3 | 1 |

| Artist | Count |
| -----: | :---- |
| でよ | 4 |
| 鹿野 | 3 |
| らく | 2 |
| ひなた | 2 |
| しのたろう | 2 |
| seuga | 2 |
| orang_333 | 2 |
| Milk_Tea | 2 |
| Horn/wood | 2 |
| c i r o チロ | 2 |
| 饼干切割机 | 1 |
| 鍋 | 1 |
| 錆多はがね | 1 |
| 鈍色玄 | 1 |
| 遥川 遊 | 1 |
| 跨越千夜 | 1 |
| 赤マフラー大和 | 1 |
| 芯桜 雪姫乃 | 1 |
| 羽梛 | 1 |
| 紅雪 | 1 |
| 碧井るか | 1 |
| 石田 | 1 |
| 直子 | 1 |
| 白木しろ | 1 |
| 理想国的爱丽丝 | 1 |
| 玖珂つかさ | 1 |
| 無職ロリ | 1 |
| 横山ストッパ | 1 |
| 枫彧君 | 1 |
| 東雲あす | 1 |
| 月うさ | 1 |
| 幻梦fanteam | 1 |
| 吃呀 | 1 |
| 八百枝　豆ノ助 | 1 |
| 丹照 | 1 |
| 両 | 1 |
| ヱなかゆうじ | 1 |
| わふぉ | 1 |
| れれいん | 1 |
| れもくりん | 1 |
| りと〼 | 1 |
| ヨルモン | 1 |
| ゅう | 1 |
| ももしき | 1 |
| メーガー | 1 |
| ムラシゲ | 1 |
| むりょ | 1 |
| みず | 1 |
| マサキ樹（いつき） | 1 |
| ピンチ | 1 |
| ヒヨヨ | 1 |
| のん | 1 |
| ネコザメ | 1 |
| ねたみ | 1 |
| にわ子 | 1 |
| なも | 1 |
| なだち | 1 |
| なおすけ | 1 |
| ちゃんぬ | 1 |
| すぁし | 1 |
| シンシア | 1 |
| しなお | 1 |
| しけー | 1 |
| さのかわ | 1 |
| さくしゃ2 | 1 |
| ごうやだいふく | 1 |
| かるたも | 1 |
| かのら | 1 |
| がうりる | 1 |
| オス | 1 |
| お丸太郎 | 1 |
| うき² | 1 |
| イチリ | 1 |
| 른릉 | 1 |
| ZWJ | 1 |
| Ziha | 1 |
| ZAN | 1 |
| whoing x2 | 1 |
| tricky | 1 |
| totemonemuuui | 1 |
| TE | 1 |
| TabrisMinto | 1 |
| T1213121 | 1 |
| SoundlessWind | 1 |
| Songchuanli | 1 |
| sllgiko_ | 1 |
| Seseren | 1 |
| SankaReien | 1 |
| Ron_kaneshiro | 1 |
| QuiteLane | 1 |
| NoN | 1 |
| Nekomi_ch | 1 |
| Naglus | 1 |
| Mカエル | 1 |
| mstarsgasuki | 1 |
| moonclover | 1 |
| momiage_40 | 1 |
| mk_0810_mk | 1 |
| mibu820 | 1 |
| MG42CaT-K1ng | 1 |
| Mel | 1 |
| LUZZI | 1 |
| Lala | 1 |
| kurakichi36 | 1 |
| kinagi0920 | 1 |
| Kamille | 1 |
| KAGAYA∞ | 1 |
| kaco0001 | 1 |
| Itsuka Eranville | 1 |
| InkAkane | 1 |
| Hong | 1 |
| e武器 | 1 |
| Cine | 1 |
| ATEOYH | 1 |
| anajudraws | 1 |
| amo. | 1 |
| _从前有颗星 | 1 |
