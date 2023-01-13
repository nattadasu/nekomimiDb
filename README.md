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

At the moment, we hosted **240 images** on index database.

| Platform | Count |
| -------: | :---- |
| Deviantart | 4 |
| Lofter | 6 |
| Pixiv | 139 |
| Twitter | 91 |

| Gender | Count |
| -----: | :---- |
| Boy `boy` | 100 |
| Both `duo` | 22 |
| Girl `girl` | 118 |

| Source | Count |
| -----: | :---- |
| #N/A | 40 |
| Arknights | 7 |
| Assault Lily | 1 |
| Attack on Titan | 1 |
| Axis Powers: Hetalia | 2 |
| Azur Lane | 2 |
| Bilshana Senki | 1 |
| Black Wolves Saga | 2 |
| Blue Archive | 8 |
| Bocchi the Rock! | 2 |
| Case Closed (Detective Conan) | 2 |
| Chainsaw Man | 4 |
| Chatora Reo (VTuber) | 1 |
| Chikyuu no Ura | 1 |
| Chrono Cross | 1 |
| Dance Killer Trick! | 1 |
| Danganronpa V3: Killing Harmony | 1 |
| Diabolik Lovers ~Haunted dark bridal~ | 1 |
| Doki Doki Literature Club! | 2 |
| DURARARA!! | 1 |
| Ensemble Stars | 2 |
| Final Fantasy XIV | 7 |
| Fire Emblem: Three Houses | 2 |
| Genshin Impact | 28 |
| Girls Frontline | 1 |
| Granblue Fantasy | 1 |
| Haikyuu!! | 1 |
| Heart no Kuni no Alice | 1 |
| Hololive | 20 |
| Hypnosis Mic -Division Rap Battle- | 2 |
| iDOLM@STER Cinderella Girls | 1 |
| Jujutsu Kaisen | 1 |
| KMNZ | 1 |
| Love Live! Sunshine!! | 1 |
| Mafumafu (Singer) | 1 |
| MAGI: The Labyrinth of Magic | 1 |
| Mikeneko (VTuber) | 3 |
| Miraculous Ladybug | 2 |
| Mizushiro Kumori (VTuber) | 1 |
| Mob Psycho 100 | 1 |
| Nachoneko (VTuber) | 1 |
| Nijisanji | 12 |
| NIKKE: The Goddess Of Victory | 1 |
| Paradox Live | 1 |
| Pokémon | 1 |
| Princess Connect! | 3 |
| Project Sekai Colorful Stage! feat. Hatsune Miku | 4 |
| Ragnarok Online | 6 |
| Re:Zero kara Hajimeru Isekai Seikatsu | 1 |
| Red: Pride of Eden | 1 |
| RIDDLE JOKER | 1 |
| Sekaiichi Hatsukoi | 1 |
| Sen'yuu | 1 |
| SK∞ | 1 |
| Sound Horizon | 2 |
| Strike Witches | 1 |
| Sword Art Online | 1 |
| Tears of Themis | 1 |
| The Legend of Heroes: Trails from Zero | 1 |
| The Umbrella Academy | 1 |
| Tokimeki Restaurant | 1 |
| Touhou | 3 |
| Uta no☆prince-sama♪ | 2 |
| Varium | 1 |
| VOCALOID | 26 |
| VShojo | 1 |
| Vyugen | 2 |
| Wactor Production | 2 |
| Xenoblade 3 | 1 |

| Artist | Count |
| -----: | :---- |
| yawage | 6 |
| nicijyou_deyo | 4 |
| aee_gnsn | 4 |
| 鹿野 | 3 |
| 夏葡 | 3 |
| HK | 3 |
| 星猫叶夢 | 2 |
| 乐格不是食物 | 2 |
| らく | 2 |
| ひなた | 2 |
| ぱや88 | 2 |
| にわ子 | 2 |
| しのたろう | 2 |
| Yampa | 2 |
| shimianaya | 2 |
| seuga | 2 |
| orang_333 | 2 |
| ookami_ciro | 2 |
| nakanoart | 2 |
| Milk_Tea_1993 | 2 |
| makkusuoko | 2 |
| iron海濑 | 2 |
| Horn/wood | 2 |
| 饼干切割机 | 1 |
| 阿蟬 | 1 |
| 鍋 | 1 |
| 錆多はがね | 1 |
| 遥川 遊 | 1 |
| 跨越千夜 | 1 |
| 赤マフラー大和 | 1 |
| 豆芽菜 | 1 |
| 茶乃ひより | 1 |
| 羽梛 | 1 |
| 緑川　葉 | 1 |
| 紅雪 | 1 |
| 碧井るか | 1 |
| 石田 | 1 |
| 直子 | 1 |
| 白木しろ | 1 |
| 白とら | 1 |
| 理都 | 1 |
| 理想国的爱丽丝 | 1 |
| 玖魅魅nine | 1 |
| 玖珂つかさ | 1 |
| 横山ストッパ | 1 |
| 枫彧君 | 1 |
| 日向青 | 1 |
| 敬 | 1 |
| 幻梦fanteam | 1 |
| 大翔(ヒロト) | 1 |
| 吃呀 | 1 |
| 八百枝　豆ノ助 | 1 |
| 優 ぐる子 | 1 |
| 儒宅 | 1 |
| 丹照 | 1 |
| 両 | 1 |
| ヱなかゆうじ | 1 |
| わふぉ | 1 |
| れれいん | 1 |
| れもくりん | 1 |
| ヨルモン | 1 |
| ユキはる | 1 |
| ユータ | 1 |
| やまもも | 1 |
| メーガー | 1 |
| めばえ | 1 |
| ムラシゲ | 1 |
| むりょ | 1 |
| ミツキノワ | 1 |
| みなせなぎ | 1 |
| みっこ | 1 |
| みず | 1 |
| マサキ樹（いつき） | 1 |
| まふゆ | 1 |
| ひし | 1 |
| ぱーさん | 1 |
| のん | 1 |
| ネコザメ | 1 |
| なも | 1 |
| なだち | 1 |
| なおすけ | 1 |
| ちゃんぬ | 1 |
| ちた | 1 |
| しゅがお | 1 |
| しなお | 1 |
| しけー | 1 |
| さらい | 1 |
| さのかわ | 1 |
| ごうやだいふく | 1 |
| カイリ | 1 |
| かるたも | 1 |
| オス | 1 |
| オウギカイリ | 1 |
| お丸太郎 | 1 |
| おうみおみ | 1 |
| えだまめこ | 1 |
| うき² | 1 |
| イチリ | 1 |
| いさみ 澪 | 1 |
| アリサキ | 1 |
| あずやん | 1 |
| 서키 | 1 |
| ZWJ | 1 |
| Ziha | 1 |
| zdrrhnbxg | 1 |
| x11dF3 | 1 |
| wjmzka | 1 |
| whoing x2 | 1 |
| tuyu_ha28 | 1 |
| tsukkiusa | 1 |
| tricky | 1 |
| totemonemuuui | 1 |
| To___e | 1 |
| tekodeteko | 1 |
| tehhe_zz | 1 |
| TE | 1 |
| TabrisMinto | 1 |
| szainx | 1 |
| SPOONkoros | 1 |
| SoundlessWind | 1 |
| Songchuanli | 1 |
| sllgiko_ | 1 |
| sinsia__0928 | 1 |
| shouu-kun | 1 |
| shinyo_yukino | 1 |
| Seseren | 1 |
| sbsb_mksb | 1 |
| sashisuse___ | 1 |
| sansa | 1 |
| SankaReien | 1 |
| sakusya2honda | 1 |
| RynzFrancis | 1 |
| Ron_kaneshiro | 1 |
| Reneua | 1 |
| raramuda_0101 | 1 |
| QuiteLane | 1 |
| PrimCOCO | 1 |
| polypuff | 1 |
| pisuke_wan | 1 |
| pinch_nes | 1 |
| okt0w0 | 1 |
| okmgmk | 1 |
| Norankkori | 1 |
| NoName0_tmvLog | 1 |
| Nika○ | 1 |
| nibiiro_SZK000 | 1 |
| Nekomi_ch | 1 |
| nattuiuriowari | 1 |
| Naglus | 1 |
| mstarsgasuki | 1 |
| moonclover | 1 |
| momoshiki | 1 |
| momiage_40 | 1 |
| mochinue | 1 |
| MMHOMM2 | 1 |
| mk_0810_mk | 1 |
| mizuyo_ | 1 |
| mibu820 | 1 |
| MG42CaT-K1ng | 1 |
| melrw22 | 1 |
| LUZZI | 1 |
| ligmki8 | 1 |
| LBF2209 | 1 |
| la__pioggia | 1 |
| kurakichi36 | 1 |
| kou_hiyoyo | 1 |
| kinagi0920 | 1 |
| kanora | 1 |
| Kamille | 1 |
| kami_shun0505 | 1 |
| kakusatou_3333 | 1 |
| KAGAYA∞ | 1 |
| kaco0001 | 1 |
| Itsuka Eranville | 1 |
| InkAkane | 1 |
| husa | 1 |
| HongBsWs | 1 |
| go_ho_lolikon | 1 |
| gaudirill | 1 |
| gabogabo0414 | 1 |
| fushirun_rung | 1 |
| fumochidesu | 1 |
| e武器 | 1 |
| Deadnooodles | 1 |
| Cine9447 | 1 |
| Ciino00o | 1 |
| chodici | 1 |
| chocho | 1 |
| bqtfo | 1 |
| Aya | 1 |
| AXESCR | 1 |
| ATEOYH | 1 |
| AstrayinDC | 1 |
| anajudraws | 1 |
| amo. | 1 |
| Ameもちᵕ̈*🍭 | 1 |
| Ame_Luno14 | 1 |
| Akemono | 1 |
| aexiao99 | 1 |
| Aeng_Dyu | 1 |
| 3fourpaca | 1 |
| 0_shusi_ | 1 |
| --唯度-- | 1 |
| _从前有颗星 | 1 |
| _Rtms__ | 1 |
| _ceemh | 1 |
