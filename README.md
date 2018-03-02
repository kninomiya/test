# 使い方

## ruby version

```bash
$ ruby --version
ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin15]

```

## linter (rubocop)

```bash
$ rubocop --fail-level=W -l -a
Inspecting 8 files
Parser::Source::Rewriter is deprecated.
Please update your code to use Parser::Source::TreeRewriter instead
........

8 files inspected, no offenses detected
```

## rspec 

```bash
$ bundle exec rspec --pattern='./spec/**/*.spec.rb'

....

Finished in 0.00311 seconds (files took 0.10422 seconds to load)
4 examples, 0 failures
```

## game

```bash
$ rake game # プレイヤーの名前を入力. 名前の長さが長いほど強いです
rake game
プレイヤーの名前を入力してください: 1

----------
1 HP:10 <-> 敵 HP:10
1の攻撃！！ 敵に1のダメージ
敵の攻撃！！ 1に3のダメージ

----------
1 HP:7 <-> 敵 HP:9
1の攻撃！！ 敵に1のダメージ
敵の攻撃！！ 1に3のダメージ

----------
1 HP:4 <-> 敵 HP:8
1の攻撃！！ 敵に1のダメージ
敵の攻撃！！ 1に3のダメージ

----------
1 HP:1 <-> 敵 HP:7
1の攻撃！！ 敵に1のダメージ
敵の攻撃！！ 1に3のダメージ

おぉ1よ、死んでしまうとは情けない..
```
