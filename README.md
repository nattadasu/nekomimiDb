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

At the moment, we hosted **491 images** on index database.

| Platform | Count |
| -------: | :---- |
| Deviantart | 7 |
| Fc2 | 1 |
| Hoyolab | 1 |
| Ibispaint | 1 |
| Lofter | 12 |
| Official | 1 |
| Pixiv | 286 |
| Twitter | 181 |
| Weibo | 1 |

| Gender | Count |
| -----: | :---- |
| Boy `boy` | 251 |
| Both `duo` | 39 |
| Girl `girl` | 197 |
| Non-Binary/Unknown `nb` | 4 |

| Source | Count |
| -----: | :---- |
| #N/A | 91 |
| Ace no Dia | 1 |
| Amatsuka Uto (VTuber) | 2 |
| Animal Crossing | 1 |
| aoppella | 1 |
| Arknights | 18 |
| Assault Lily | 1 |
| Attack on Titan | 2 |
| Axis Powers: Hetalia | 3 |
| Azur Lane | 2 |
| Bilshana Senki | 1 |
| Black Wolves Saga | 2 |
| Blue Archive | 12 |
| Bocchi the Rock! | 5 |
| Boku no Hero Academia | 3 |
| Bungou Stray Dogs | 1 |
| Cardfight!! Vanguard | 1 |
| Case Closed (Detective Conan) | 2 |
| Chainsaw Man | 5 |
| Chatora Reo (VTuber) | 1 |
| Chikyuu no Ura | 1 |
| Chrono Cross | 1 |
| Dance Killer Trick! | 1 |
| Danganronpa V3: Killing Harmony | 4 |
| Dankira!!! -Boys, be DANCING!- | 2 |
| Diabolik Lovers ~Haunted dark bridal~ | 1 |
| Doki Doki Literature Club! | 2 |
| DURARARA!! | 2 |
| Ensemble Stars | 3 |
| Filian (VTuber) | 3 |
| Final Fantasy XIV | 14 |
| Fire Emblem: Three Houses | 2 |
| Fukigen na Mononokean | 1 |
| Genshin Impact | 59 |
| Ginjiro (VTuber) | 2 |
| Gintama | 1 |
| Girls Frontline | 1 |
| Granblue Fantasy | 1 |
| Guilty Gear | 1 |
| Guns Girl - School DayZ | 1 |
| Haikyuu!! | 2 |
| Heart no Kuni no Alice | 1 |
| Hellsing Ultimate | 1 |
| Hololive | 26 |
| Hypnosis Mic -Division Rap Battle- | 2 |
| iDOLM@STER Cinderella Girls | 2 |
| iDOLM@STER SideM | 2 |
| Inazuma Eleven | 1 |
| Jujutsu Kaisen | 3 |
| Kaguya Luna (VTuber) | 1 |
| Kaguya-sama wa Kokusaretai | 1 |
| Kanda Miu (VTuber) | 1 |
| Kantai Collection | 2 |
| Karneval | 1 |
| KILL la KILL | 1 |
| Kimetsu no Yaiba | 2 |
| KMNZ | 1 |
| Kuroko no Basuke | 3 |
| Lamento | 1 |
| League of Legends | 1 |
| Love Live! Sunshine!! | 1 |
| Luz (Singer) | 1 |
| Mafumafu (Singer) | 12 |
| Mafumafu (Utaite) | 1 |
| MAGI: The Labyrinth of Magic | 1 |
| Mahou Shoujo Madoka☆Magica | 1 |
| Mairimashita! Iruma-kun | 1 |
| Mikeneko (VTuber) | 4 |
| Miraculous Ladybug | 2 |
| Mizushiro Kumori (VTuber) | 1 |
| Mob Psycho 100 | 1 |
| Nachoneko (VTuber) | 2 |
| Nekoha Shizuku | 1 |
| Nekomiya Hinata (VTuber) | 2 |
| Nichijou | 1 |
| Nijisanji | 25 |
| NIKKE: The Goddess Of Victory | 1 |
| Non Non Biyori | 1 |
| Nyan Koi! | 1 |
| Omori | 4 |
| Ookami Ciro (VTuber) | 1 |
| Otozuki Teru (VTuber) | 1 |
| Paradox Live | 1 |
| Pixiv Fantasia | 1 |
| Pokémon | 1 |
| Princess Connect! | 3 |
| Project Sekai Colorful Stage! feat. Hatsune Miku | 8 |
| Puyo Puyo | 1 |
| Puyopuyo | 1 |
| Ragnarok Online | 6 |
| Re:Zero kara Hajimeru Isekai Seikatsu | 3 |
| Red: Pride of Eden | 1 |
| RIDDLE JOKER | 1 |
| Sekaiichi Hatsukoi | 1 |
| Sen'yuu | 1 |
| Shadows House | 1 |
| Shoujo Kageki Revue Starlight | 1 |
| Shuuen no Shiori Project | 1 |
| SK∞ | 1 |
| SOUL EATER | 1 |
| Sound Horizon | 2 |
| Strike Witches | 1 |
| Super Danganronpa 2 | 1 |
| Sword Art Online | 1 |
| Tears of Themis | 4 |
| The Legend of Heroes: Trails from Zero | 1 |
| The Umbrella Academy | 1 |
| Toaru Majutsu no Index | 2 |
| Tokimeki Restaurant | 1 |
| Tokyo Ghoul | 2 |
| Touhou | 6 |
| Twisted Wonderland | 2 |
| Uta no☆prince-sama♪ | 3 |
| Varium | 1 |
| VOCALOID | 40 |
| VShojo | 1 |
| Vyugen | 2 |
| Wactor Production | 2 |
| Wang Chuan Fenghua Lu | 1 |
| WILD ADAPTER | 1 |
| Xenoblade 3 | 2 |
| Yowamushi Pedal | 1 |

| Artist | Count |
| -----: | :---- |
| しろこ | 6 |
| yawage | 6 |
| 夏葡 | 5 |
| ももこ | 5 |
| しろなっぱ | 5 |
| ookami_ciro | 5 |
| nicijyou_deyo | 4 |
| aee_gnsn | 4 |
| 鹿野 | 3 |
| 飛鳥士郎 | 3 |
| 乐格不是食物 | 3 |
| TETUG | 3 |
| shimianaya | 3 |
| mano_sukey | 3 |
| HK | 3 |
| Deyui | 3 |
| asuka5150_ | 3 |
| 雷夜 | 2 |
| 水菜子 | 2 |
| 星猫叶夢 | 2 |
| んぬ | 2 |
| らく | 2 |
| もん | 2 |
| ひなた | 2 |
| ぱや88 | 2 |
| にわ子 | 2 |
| タツわんこ | 2 |
| たむむら | 2 |
| しのたろう | 2 |
| くろ | 2 |
| ぎんじろ。 | 2 |
| Yampa | 2 |
| shio_0585 | 2 |
| seuga | 2 |
| orang_333 | 2 |
| NukoJi_ | 2 |
| nemuwo。 | 2 |
| nakanoart | 2 |
| Milk_Tea_1993 | 2 |
| mibu820 | 2 |
| melrw22 | 2 |
| Mauve | 2 |
| makkusuoko | 2 |
| kakusatou_3333 | 2 |
| iron海濑 | 2 |
| immr | 2 |
| ikuri | 2 |
| Horn/wood | 2 |
| Akemono | 2 |
| _yuulk | 2 |
| 黒常 | 1 |
| 饼干切割机 | 1 |
| 飛絮 | 1 |
| 阿蟬 | 1 |
| 鍋 | 1 |
| 錆多はがね | 1 |
| 遥川 遊 | 1 |
| 跨越千夜 | 1 |
| 赤マフラー大和 | 1 |
| 貂猫 | 1 |
| 豆芽菜 | 1 |
| 茶乃ひより | 1 |
| 花森苺 | 1 |
| 腹ペ娘 | 1 |
| 胡麻乃りお | 1 |
| 羽梛 | 1 |
| 緑川　葉 | 1 |
| 紫 | 1 |
| 紅雪 | 1 |
| 碧井るか | 1 |
| 石田 | 1 |
| 直子 | 1 |
| 白鮫 | 1 |
| 白木しろ | 1 |
| 白昼 | 1 |
| 白とら | 1 |
| 番木章 | 1 |
| 甘城なつき | 1 |
| 理都 | 1 |
| 理想国的爱丽丝 | 1 |
| 玖魅魅nine | 1 |
| 玖珂つかさ | 1 |
| 狐巳夜 | 1 |
| 爽健 | 1 |
| 氷 春子 | 1 |
| 歌貌 | 1 |
| 横山ストッパ | 1 |
| 梅之シイ | 1 |
| 柊 シン | 1 |
| 枫彧君 | 1 |
| 朱緋 茜ΦωΦ | 1 |
| 朔 | 1 |
| 月下影都 | 1 |
| 日向青 | 1 |
| 敬 | 1 |
| 快刀乱麻 | 1 |
| 幻梦fanteam | 1 |
| 布団 | 1 |
| 峰CF | 1 |
| 宿雪(やどゆき) | 1 |
| 安怀谨 | 1 |
| 大翔(ヒロト) | 1 |
| 夢彩夜 | 1 |
| 夕涙ウユ | 1 |
| 吉智 | 1 |
| 吃呀 | 1 |
| 北爪くみん | 1 |
| 八百枝　豆ノ助 | 1 |
| 優 ぐる子 | 1 |
| 儒宅 | 1 |
| 今井 | 1 |
| 久眠zZ | 1 |
| 丹照 | 1 |
| 両 | 1 |
| 三毛ランジェロ | 1 |
| 一方桑 | 1 |
| ヱなかゆうじ | 1 |
| わふぉ | 1 |
| れれいん | 1 |
| れもくりん | 1 |
| ラミー | 1 |
| ヨルモン | 1 |
| ユキはる | 1 |
| ユータ | 1 |
| やまもも | 1 |
| やちぇ | 1 |
| ももも | 1 |
| メーガー | 1 |
| めばえ | 1 |
| めの | 1 |
| ムラシゲ | 1 |
| むりょ | 1 |
| むっくん | 1 |
| ミツキノワ | 1 |
| みやなぎ | 1 |
| みなせなぎ | 1 |
| みどり | 1 |
| みっこ | 1 |
| みっきぃ。 | 1 |
| みずゆき | 1 |
| みず | 1 |
| マサキ樹（いつき） | 1 |
| まふゆ | 1 |
| まっさん | 1 |
| ポン酢 | 1 |
| ボウイナイフ | 1 |
| ぽち丸 | 1 |
| ひし | 1 |
| パチ | 1 |
| はる | 1 |
| ばさ | 1 |
| ぱーさん | 1 |
| のん | 1 |
| ネコザメ | 1 |
| ねっこ | 1 |
| ねこぜ | 1 |
| にゃんざい先生 | 1 |
| にゃん | 1 |
| なゆた/futaba | 1 |
| なも | 1 |
| なだち | 1 |
| なおすけ | 1 |
| ちゃんぬ | 1 |
| ちた | 1 |
| ﾀnanuki | 1 |
| そぷら | 1 |
| その① | 1 |
| せいや | 1 |
| しゅがお | 1 |
| しなお | 1 |
| しけー | 1 |
| しえるあーく | 1 |
| さらい | 1 |
| さのかわ | 1 |
| ごうやだいふく | 1 |
| グッピー | 1 |
| ガン | 1 |
| カニ | 1 |
| カイリ | 1 |
| かるたも | 1 |
| オス | 1 |
| オウギカイリ | 1 |
| お丸太郎 | 1 |
| おこめ | 1 |
| おうみおみ | 1 |
| おいもとじろう | 1 |
| えだまめこ | 1 |
| ウェルト | 1 |
| うき² | 1 |
| うーる | 1 |
| イチリ | 1 |
| いつつせ | 1 |
| いさみ 澪 | 1 |
| いおりそ | 1 |
| アリサキ | 1 |
| あまね | 1 |
| あずやん | 1 |
| あさP | 1 |
| あかこ | 1 |
| 지우개 | 1 |
| 서키 | 1 |
| zz22 | 1 |
| ZWJ | 1 |
| Ziha | 1 |
| Zhvo | 1 |
| zdrrhnbxg | 1 |
| zaso_ | 1 |
| yyynoro | 1 |
| yuu_no_2 | 1 |
| yonabe3596 | 1 |
| yi_x_ing | 1 |
| y0u0ri_ | 1 |
| x11dF3 | 1 |
| x_Uxien | 1 |
| WO_ZATTA | 1 |
| WK4444_ | 1 |
| wjmzka | 1 |
| whoing x2 | 1 |
| violetawatson | 1 |
| Vanquish_bai | 1 |
| urami0310 | 1 |
| unapyo_00 | 1 |
| UEAUWA | 1 |
| tuyu_ha28 | 1 |
| tsukkiusa | 1 |
| Tsubasa | 1 |
| tricky | 1 |
| Touya Mikanagi | 1 |
| totemonemuuui | 1 |
| toshio | 1 |
| torino | 1 |
| TofuDofu | 1 |
| To___e | 1 |
| Tii_san678 | 1 |
| THE IDOLM@STER™️ & ©Bandai Namco Entertainment Inc. | 1 |
| tekodeteko | 1 |
| tehhe_zz | 1 |
| TE | 1 |
| tanuki19245465 | 1 |
| tamaya_yoi | 1 |
| tachikana | 1 |
| TabrisMinto | 1 |
| t0petar0 | 1 |
| szainx | 1 |
| SYSEN | 1 |
| Sweet_meloday | 1 |
| SuYamada | 1 |
| SPOONkoros | 1 |
| SP0I0ppp | 1 |
| SoundlessWind | 1 |
| Songchuanli | 1 |
| sllgiko_ | 1 |
| sinsia__0928 | 1 |
| shouu-kun | 1 |
| shinyo_yukino | 1 |
| Seseren | 1 |
| Sebby.sama | 1 |
| sbsb_mksb | 1 |
| sato_1_11 | 1 |
| sashisuse___ | 1 |
| sansa | 1 |
| SankaReien | 1 |
| sakusya2honda | 1 |
| saihate | 1 |
| saaal653 | 1 |
| RynzFrancis | 1 |
| rui | 1 |
| Ron_kaneshiro | 1 |
| Reneua | 1 |
| raramuda_0101 | 1 |
| QuiteLane | 1 |
| PrimCOCO | 1 |
| ppp_usagi_ | 1 |
| polypuff | 1 |
| pochitaart | 1 |
| pnyo_emc | 1 |
| pisuke_wan | 1 |
| pinch_nes | 1 |
| Pharmarr | 1 |
| Oo菌o | 1 |
| okt0w0 | 1 |
| okmgmk | 1 |
| OKkobc | 1 |
| observerZ | 1 |
| obo | 1 |
| Norankkori | 1 |
| NoName0_tmvLog | 1 |
| nknk_fff | 1 |
| Nika○ | 1 |
| nibiiro_SZK000 | 1 |
| Nekomi_ch | 1 |
| NEKOCAT510 | 1 |
| neco_no_13 | 1 |
| nebusoku2000 | 1 |
| ncr_sora | 1 |
| nattuiuriowari | 1 |
| namiki_itsuki | 1 |
| Naglus | 1 |
| mstarsgasuki | 1 |
| moonclover | 1 |
| momoshiki | 1 |
| momiage_40 | 1 |
| mochinue | 1 |
| MMHOMM2 | 1 |
| mm_45_v | 1 |
| mk_0810_mk | 1 |
| mizuyo_ | 1 |
| Mizumoe_ | 1 |
| miuumiu | 1 |
| mirin_pengin | 1 |
| mintchelle | 1 |
| mgong520 | 1 |
| MG42CaT-K1ng | 1 |
| mfmf_ktn_031 | 1 |
| meggut2521 | 1 |
| mecyo | 1 |
| LUZZI | 1 |
| Lpip | 1 |
| Liyaku | 1 |
| ligmki8 | 1 |
| LBF2209 | 1 |
| la__pioggia | 1 |
| ky4274 | 1 |
| kurakichi36 | 1 |
| kou_hiyoyo | 1 |
| Kodama_sm | 1 |
| kmt_pori | 1 |
| KINe | 1 |
| kinagi0920 | 1 |
| kazzzuna | 1 |
| katasumi5o | 1 |
| karineko1811 | 1 |
| kanora | 1 |
| Kamille | 1 |
| kami_shun0505 | 1 |
| KAGAYA∞ | 1 |
| kaco0001 | 1 |
| kaaaraaage | 1 |
| jisoku39km | 1 |
| j7bge | 1 |
| Itsuka Eranville | 1 |
| irasutogakari | 1 |
| InkAkane | 1 |
| husa | 1 |
| HongBsWs | 1 |
| hizakigamma | 1 |
| hanh-chu | 1 |
| hakus_1128 | 1 |
| go_ho_lolikon | 1 |
| geckoyutuyamori | 1 |
| gaudirill | 1 |
| gabogabo0414 | 1 |
| gaagyeo | 1 |
| G1 | 1 |
| fushirun_rung | 1 |
| fumochidesu | 1 |
| Frost_002 | 1 |
| e武器 | 1 |
| E20 | 1 |
| Dimas | 1 |
| Deadnooodles | 1 |
| Cooltg2 | 1 |
| con_potata | 1 |
| cognacbear | 1 |
| Clickdraws | 1 |
| Cine9447 | 1 |
| Ciino00o | 1 |
| chodici | 1 |
| Chocomilk_NU | 1 |
| chocho | 1 |
| Bwith00 | 1 |
| bqtfo | 1 |
| BLUE色拉 | 1 |
| bari_dal | 1 |
| bananakeki | 1 |
| Aya | 1 |
| AXESCR | 1 |
| awawawa_v | 1 |
| ATEOYH | 1 |
| AstrayinDC | 1 |
| Arsh_xxxx | 1 |
| arirurih | 1 |
| anz32_ | 1 |
| anajudraws | 1 |
| amo. | 1 |
| amnk1213 | 1 |
| Ameもちᵕ̈*🍭 | 1 |
| AMEGREEN | 1 |
| Ame_Luno14 | 1 |
| Aluhzora | 1 |
| akabane22 | 1 |
| aexiao99 | 1 |
| Aeng_Dyu | 1 |
| 8washihachi | 1 |
| 402. | 1 |
| 3τα | 1 |
| 3fourpaca | 1 |
| 310_mha | 1 |
| 27 | 1 |
| 082_203 | 1 |
| 00_gx4 | 1 |
| 0_shusi_ | 1 |
| 0_sakana_san | 1 |
| --唯度-- | 1 |
| _从前有颗星 | 1 |
| _Rtms__ | 1 |
| _ceemh | 1 |
| __rette | 1 |
