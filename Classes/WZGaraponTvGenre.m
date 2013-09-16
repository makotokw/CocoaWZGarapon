//
//  WZGaraponTvGenre.m
//  Garapon
//
//  Copyright (c) 2013 makoto_kw. All rights reserved.
//

#import "WZGaraponTvGenre.h"

@implementation WZGaraponTvGenre

static NSDictionary *sGaraponTvGenreDict;

+ (void)initialize
{
    sGaraponTvGenreDict = @{
                            @"0": @"ニュース/報道",
                            @"0/0": @"定時・総合",
                            @"0/1": @"天気",
                            @"0/2": @"特集・ドキュメント",
                            @"0/3": @"政治・国会",
                            @"0/4": @"経済・市況",
                            @"0/5": @"海外・国際",
                            @"0/6": @"解説",
                            @"0/7": @"討論・会談",
                            @"0/8": @"報道特番",
                            @"0/9": @"ローカル・地域",
                            @"0/10": @"交通",
                            @"0/15": @"その他",
                            @"1": @"スポーツ",
                            @"1/0": @"スポーツニュース",
                            @"1/1": @"野球",
                            @"1/2": @"サッカー",
                            @"1/3": @"ゴルフ",
                            @"1/4": @"その他の球技",
                            @"1/5": @"相撲・格闘技",
                            @"1/6": @"オリンピック・国際大会",
                            @"1/7": @"マラソン・陸上・水泳",
                            @"1/8": @"モータースポーツ",
                            @"1/9": @"マリン・ウィンタースポーツ",
                            @"1/10": @"競馬・公営競技",
                            @"1/15": @"その他",
                            @"2": @"情報/ワイドショー",
                            @"2/0": @"芸能・ワイドショー",
                            @"2/1": @"ファッション",
                            @"2/2": @"暮らし・住まい",
                            @"2/3": @"健康・医療",
                            @"2/4": @"ショッピング・通販",
                            @"2/5": @"グルメ・料理",
                            @"2/6": @"イベント",
                            @"2/7": @"番組紹介・お知らせ",
                            @"2/15": @"その他",
                            @"3": @"ドラマ",
                            @"3/0": @"国内ドラマ",
                            @"3/1": @"海外ドラマ",
                            @"3/2": @"時代劇",
                            @"3/15": @"その他",
                            @"4": @"音楽",
                            @"4/0": @"国内ロック・ポップス",
                            @"4/1": @"海外ロック・ポップス",
                            @"4/2": @"クラシック・オペラ",
                            @"4/3": @"ジャズ・フュージョン",
                            @"4/4": @"歌謡曲・演歌",
                            @"4/5": @"ライブ・コンサート",
                            @"4/6": @"ランキング・リクエスト",
                            @"4/7": @"カラオケ・のど自慢",
                            @"4/8": @"民謡・邦楽",
                            @"4/9": @"童謡・キッズ",
                            @"4/10": @"民族音楽・ワールドミュージック",
                            @"4/15": @"その他",
                            @"5": @"バラエティ",
                            @"5/0": @"クイズ",
                            @"5/1": @"ゲーム",
                            @"5/2": @"トークバラエティ",
                            @"5/3": @"お笑い・コメディ",
                            @"5/4": @"音楽バラエティ",
                            @"5/5": @"旅バラエティ",
                            @"5/6": @"料理バラエティ",
                            @"5/15": @"その他",
                            @"6": @"映画",
                            @"6/0": @"洋画",
                            @"6/1": @"邦画",
                            @"6/2": @"アニメ",
                            @"6/15": @"その他",
                            @"7": @"アニメ/特撮",
                            @"7/0": @"国内アニメ",
                            @"7/1": @"海外アニメ",
                            @"7/2": @"特撮",
                            @"7/15": @"その他",
                            @"8": @"ドキュメンタリー/教養",
                            @"8/0": @"社会・時事",
                            @"8/1": @"歴史・紀行",
                            @"8/2": @"自然・動物・環境",
                            @"8/3": @"宇宙・科学・医学",
                            @"8/4": @"カルチャー・伝統文化",
                            @"8/5": @"文学・文芸",
                            @"8/6": @"スポーツ",
                            @"8/7": @"ドキュメンタリー全般",
                            @"8/8": @"インタビュー・討論",
                            @"8/15": @"その他",
                            @"9": @"劇場/公演",
                            @"9/0": @"現代劇・新劇",
                            @"9/1": @"ミュージカル",
                            @"9/2": @"ダンス・バレエ",
                            @"9/3": @"落語・演芸",
                            @"9/4": @"歌舞伎・古典",
                            @"9/15": @"その他",
                            @"10": @"趣味/教育",
                            @"10/0": @"旅・釣り・アウトドア",
                            @"10/1": @"園芸・ペット・手芸",
                            @"10/2": @"音楽・美術・工芸",
                            @"10/3": @"囲碁・将棋",
                            @"10/4": @"麻雀・パチンコ",
                            @"10/5": @"車・オートバイ",
                            @"10/6": @"コンピュータ・TVゲーム",
                            @"10/7": @"会話・語学",
                            @"10/8": @"幼児・小学生",
                            @"10/9": @"中学生・高校生",
                            @"10/10": @"大学生・受験",
                            @"10/11": @"生涯教育・資格",
                            @"10/12": @"教育問題",
                            @"10/15": @"その他",
                            @"11": @"福祉",
                            @"11/0": @"高齢者",
                            @"11/1": @"障害者",
                            @"11/2": @"社会福祉",
                            @"11/3": @"ボランティア",
                            @"11/4": @"手話",
                            @"11/5": @"文字(字幕)",
                            @"11/6": @"音声解説",
                            @"11/15": @"その他",
                            @"15": @"その他",
                            @"15/15": @"その他",
              };
}

+ (NSDictionary *)dictionaryForGenre
{
    return sGaraponTvGenreDict;
}

+ (NSString *)genreNameWithKey:(id)key
{
    return sGaraponTvGenreDict[key];
}

@end