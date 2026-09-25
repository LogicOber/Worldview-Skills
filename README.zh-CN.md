<p align="center">
  <img src=".github/assets/worldview-skills-cover.png" alt="Worldview Skills" width="100%">
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-Apache--2.0-2f80ed?style=for-the-badge" alt="Apache 2.0 license"></a>
  <a href="https://github.com/LogicOber/Worldview-Skills"><img src="https://img.shields.io/badge/Skills-74-111827?style=for-the-badge" alt="74 Skills"></a>
  <a href="https://skills.sh"><img src="https://img.shields.io/badge/works%20with-Claude%20Code%20%7C%20Codex-111827?style=for-the-badge" alt="Works with Claude Code and Codex"></a>
</p>

<p align="center"><a href="./README.md">English</a> · <a href="./README.zh-CN.md"><strong>简体中文</strong></a></p>

# Worldview Skills

让 Claude Code、Codex 或其他支持 `SKILL.md` 的 Agent，从一句需求开始制作可玩的游戏、高保真游戏场景、电影、可复用视觉资产和完整故事。

把仓库链接和一句需求交给 Agent 即可。它会自行安装相关 Skill、选择制作路径、读取契约，只在答案会改变结果时提问，完成制作、验证和交付。你不需要先学节点工作流，也不需要记住内部 Skill 的触发顺序；需要精细控制时，再直接使用对应的 Slash 入口。

仓库目前包含 **74 个可安装 Skill**，可以用来：

- 把简短想法扩展成经过调研的单结局游戏，制作新的可玩切片，或重建现有游戏的视觉呈现；
- 实现追逐、躲藏、声音侦测、稀缺存档、调查和死亡循环等恐怖玩法；
- 从游戏截图和视频提取设计证据，把追逐建筑转成路线契约，并选择合适的 3D 资产制作路线；
- 设计 Boss 战、英雄技能、关卡、谜题、分支选择和可玩的 2D 游戏形式；
- 制作统一的角色、Boss、环境、道具、像素动画和视觉特效；
- 制作短片、游戏过场、动作场面、产品视频和社交媒体短视频；
- 写作推理、惊悚、爱情、英雄旅程等完整故事。

## 目录

- [安装与更新](#安装与更新)
- [高保真游戏制作](#高保真游戏制作)
- [恐怖游戏机制](#恐怖游戏机制)
- [游戏分析](#游戏分析)
- [游戏设计与 2D 游戏制作](#游戏设计与-2d-游戏制作)
- [3D 资产制作](#3d-资产制作)
- [电影与视频制作](#电影与视频制作)
- [故事写作](#故事写作)
- [GitHub 文件结构](#github-文件结构)
- [许可证与来源](#许可证与来源)

## 安装与更新

为所有受支持的 Agent 安装全部 74 个 Skill：

```bash
npx skills add LogicOber/Worldview-Skills --all
```

只安装一个 Skill：

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-game-high-fidelity-vertical-slice
```

更新全部已安装 Skill，或只更新指定 Skill：

```bash
npx skills update
npx skills update worldview-game-high-fidelity-vertical-slice
```

这些命令遵循官方 [Vercel Skills CLI](https://github.com/vercel-labs/skills#readme)。如果你还想安装首次安装之后新发布的 Skill，重新执行一次完整的 `add ... --all` 命令。

安装后，输入 Slash 名称，并在下一行直接描述想做的内容：

```text
/worldview-game-high-fidelity-vertical-slice

制作一段约五分钟的第三人称章节：信使带着一颗玻璃种子穿过潮汐站，
水位持续上升。使用当前仓库完成实现。
```

## 高保真游戏制作

| Slash 入口 | 适合用来做什么 | 得到什么 |
| --- | --- | --- |
| [`/worldview-game-horror-production`](skills/game-production/worldview-game-horror-production/README.md) | 把简短的恐怖游戏设想扩展成机制互相连接、空间可记忆、威胁可学习、节奏与恢复完整并经过结局验证的完整体验。 | 恐怖游戏制作契约、体验时间线、地图与路线方案、机制路由、灰盒顺序、感官设计、验证流程，以及可玩或可直接实现的交付。 |
| [`/worldview-game-single-ending-campaign`](skills/game-production/worldview-game-single-ending-campaign/README.md) | 把简短设想扩展成原创、经过调研、只有一个正史结局并拥有完整可玩世界的剧情游戏。 | 带日期的调研记录、原创虚构化方案、完整路线、互相关联的玩法系统、地图、NPC、物品、状态与存档逻辑、运行证据，以及验证过的构建或部署 URL。 |
| [`/worldview-game-high-fidelity-vertical-slice`](skills/game-production/worldview-game-high-fidelity-vertical-slice/README.md) | 把故事、地点或游戏想法制作成一段精致的 2D 或 3D 可玩章节。 | 可玩核心、3–5 个真实游玩状态、原创资产方案、完整视觉呈现、运行时截图、性能证据和交付说明。 |
| [`/worldview-game-runtime-visual-fidelity-rebuild`](skills/game-production/worldview-game-runtime-visual-fidelity-rebuild/README.md) | 为玩法已经正常、但画面通用或不统一的游戏重建视觉呈现。 | 玩法保护基线，以及重建后的镜头、资产、材质、灯光、特效、UI、音频、同状态对比、回归测试和性能测量。 |

在 Codex 中获得最佳结果时，单个 Agent 完成深度端到端任务建议使用 **GPT-6 Astra + Max**；资产制作、运行时实现和验证可以拆成独立子任务时使用 **Astra + Ultra**。在 API 中，`max` 是 `reasoning.effort`；Ultra 是 Codex 的多 Agent 编排模式，不是 API 的 effort 值。参见官方 [GPT-6 Astra 模型页](https://developers.openai.com/api/docs/models/gpt-6-astra)和 [Codex 模型指南](https://learn.chatgpt.com/docs/models)。

如果已经配置并获得授权，Skill 可以使用图像生成、Blender MCP、其他 DCC、浏览器或引擎自动化和 Profiler；缺少某项能力时，每个 Skill 也写明了替代路线。

[选择适合的游戏制作 Skill →](skills/game-production/README.md)

## 恐怖游戏机制

27 个独立 Skill 可以实现完整、可测试的恐怖游戏情境，包括追逐路线、角色切换后的共享证据、逐步失去保护的受困旅程、驾驶分心压力，以及即时缓解但产生延迟代价的资源系统。

| 类别 | 包含的机制 |
| --- | --- |
| **追逐与躲藏** | 诱导—躲藏—逃脱、注视限制追踪者、声音诱导、游荡追踪者、安全屋和路障。 |
| **生存决策** | 稀缺背包、关键物品折返、有限存档风险、虚构伤势治疗，以及具有延迟代价的缓解资源。 |
| **调查与目标** | 恢复电力、距离信号追踪、实体识别和威胁打断谜题。 |
| **感知与合作** | 感知失真、死亡循环中的持久线索、非对称信息合作，以及跨可玩角色保存证据与后果。 |
| **旅程与体验编排** | 逐步失去保护的受困路线、驾驶分心压力、体验节奏、重复地点、日常流程异变、职业职责与身份压力。 |

```text
/worldview-game-lure-hide-escape

使用当前项目里的旅馆楼层。让玩家投掷物体、脱离怪物视线、藏到床底，
等怪物搜索错误声源时，从第二扇门离开。
```

[查看全部恐怖机制 →](skills/game-mechanics-horror/README.md)

如果追逐的紧张感必须来自玩家可以学习的建筑和路线，而不是怪物无脑追在身后：

```text
/worldview-game-chase-route-architecture

把医院追逐设计成建筑路线。生成 2.5D 平面图，标出主逃生线、危险备选线、
失败回路、视线断点、声音事件、道具门、检查点，以及最终门的准确时间余量。
然后在当前项目实现并验证这条路线。
```

## 游戏分析

在实现前，可以让 Agent 从游戏视频、截图、创作者频道或风格参考中提取设计证据。它会记录玩家的决策、犹豫、回头、镜头、建筑、物品、威胁状态、声音及其串联方式，而不只是复述剧情或照抄资产。

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/worldview-gameplay-video-analysis`](skills/game-analysis/worldview-gameplay-video-analysis/README.md) | 带时间戳的观察记录、截图/风格板、路线与机制图、设计模式与失败模式标签，以及可以反哺恐怖游戏契约的跨视频聚类。 |
| [`/worldview-gameplay-experience-study`](skills/game-analysis/worldview-gameplay-experience-study/README.md) | 从第一人称体验、第三人称设计判断和证据中形成定性案例，并转成可用于原创设计的决策记录。 |

## 游戏设计与 2D 游戏制作

### 玩法、遭遇与关卡

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/boss-battle`](skills/game-design/boss-battle/SKILL.md) | 包含场地、阶段、招式预警、反制方法和结尾的完整 Boss 战。 |
| [`/hero-skill-system`](skills/game-design/hero-skill-system/SKILL.md) | 具有消耗、定位和反制空间的被动与 Q/W/E/R 技能组。 |
| [`/horror-chase`](skills/game-design/horror-chase/SKILL.md) | 包含路线、藏身点、追踪规则和险些被抓时序的追逐设计。 |
| [`/puzzle-mechanic`](skills/game-design/puzzle-mechanic/SKILL.md) | 可以教学、升级并产生解谜顿悟的核心规则。 |
| [`/platformer-level`](skills/game-design/platformer-level/SKILL.md) | 教会、测试并组合玩家移动能力的平台关卡。 |
| [`/roguelike-generator`](skills/game-design/roguelike-generator/SKILL.md) | 一局游戏的房间语法、风险收益、升级和最终 Boss。 |
| [`/narrative-choice`](skills/game-design/narrative-choice/SKILL.md) | 带状态、延迟后果和合理合流的分支选择。 |

### 可玩的 2D 游戏形式与像素动画

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/card-game`](skills/2d-game/card-game/SKILL.md) | 卡牌对战循环和第一套平衡卡组。 |
| [`/rhythm-game`](skills/2d-game/rhythm-game/SKILL.md) | 包含音乐分析、谱面、判定与反馈的节奏游戏切片。 |
| [`/side-scroller`](skills/2d-game/side-scroller/SKILL.md) | 带美术分层和移动挑战的横版可玩关卡。 |
| [`/visual-novel`](skills/2d-game/visual-novel/SKILL.md) | 带角色、表情、背景和分支的可玩对话场景。 |
| [`/pixel-art-sprite`](skills/2d-game/pixel-art-sprite/SKILL.md) | 统一网格、调色板、角色动作和配套地块。 |

## 3D 资产制作

这些 Skill 会制作统一的设计图、多角度参考和生产规格；存在兼容的 3D Tool 时，还可以继续生成可编辑模型或场景资产。

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/character-model`](skills/3d-assets/character-model/SKILL.md) | 角色转面图、表情、服装变体和可选贴图模型。 |
| [`/boss-model`](skills/3d-assets/boss-model/SKILL.md) | 大型敌人的比例图、动作板、损伤状态、弱点设计和可选模型。 |
| [`/environment-scene`](skills/3d-assets/environment-scene/SKILL.md) | 场景主视图、多角度覆盖、固定地标布局和可选 3D 场景。 |
| [`/weapon-prop`](skills/3d-assets/weapon-prop/SKILL.md) | 保持统一的武器、遗物、工具、服装或文字道具。 |
| [`/vfx-effect`](skills/3d-assets/vfx-effect/SKILL.md) | 具有形状、配色、时序、因果关系和可审查循环的特效。 |
| [`/worldview-3d-asset-production-route`](skills/3d-assets/worldview-3d-asset-production-route/README.md) | 在手工建模、程序化建模和图像转 3D 之间做选择，并检查静物网格、拓扑、绑定、变形、授权和运行时集成。 |

## 电影与视频制作

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/cinematic-film`](skills/film-video/cinematic-film/SKILL.md) | 从一个故事想法制作多段式叙事短片。 |
| [`/game-cutscene-generator`](skills/film-video/game-cutscene/SKILL.md) | 制作游戏里的出场、对话、转场或胜利过场。 |
| [`/anime-action-scene`](skills/film-video/anime-action-scene/SKILL.md) | 制作动作清楚、镜头节奏明确的短动作场面。 |
| [`/product-demo`](skills/film-video/product-demo/SKILL.md) | 使用真实 UI 和明确使用情境制作产品短片。 |
| [`/social-media-video`](skills/film-video/social-media-video/SKILL.md) | 制作 15–60 秒、开头立即进入重点并带手机字幕的竖屏短视频。 |

<details>
<summary><strong>可以单独调用的电影制作阶段 Skill</strong></summary>

| Slash 入口 | 制作阶段 |
| --- | --- |
| [`/film-pipeline`](skills/core-engine/film-pipeline/SKILL.md) | 从导演规划到最终组装的完整短片流程。 |
| [`/film-direction`](skills/core-engine/film-direction/SKILL.md) | 导演意图、节奏、配色和审查标准。 |
| [`/film-story`](skills/core-engine/film-story/SKILL.md) | 欲望、冲突、风险、失去、两难和回报。 |
| [`/film-script`](skills/core-engine/film-script/SKILL.md) | 按镜头生成长度拆分的剧本和资产清单。 |
| [`/film-style-library`](skills/core-engine/film-style-library/SKILL.md) | 选择视觉风格并保持后续一致。 |
| [`/film-character-sheet`](skills/core-engine/film-character-sheet/SKILL.md) | 固定角色身份、服装和参考视图。 |
| [`/film-location`](skills/core-engine/film-location/SKILL.md) | 固定场景布局、材质、配色和时间。 |
| [`/film-prop-sheet`](skills/core-engine/film-prop-sheet/SKILL.md) | 固定重复出现的道具、服装、线索和文字物品。 |
| [`/film-screen-capture`](skills/core-engine/film-screen-capture/SKILL.md) | 把真实产品 UI 捕获并用于镜头。 |
| [`/film-shot-prompt`](skills/core-engine/film-shot-prompt/SKILL.md) | 为一个已批准剧本段落生成带时序的生成指令。 |
| [`/film-action-combat`](skills/core-engine/film-action-combat/SKILL.md) | 设计因果清楚的打击、追逐、特效、物理与镜头反应。 |
| [`/film-dialogue-voiceover`](skills/core-engine/film-dialogue-voiceover/SKILL.md) | 规划语音时序和音频驱动口型同步。 |
| [`/film-generate-review`](skills/core-engine/film-generate-review/SKILL.md) | 生成、审查、选择、组装镜头并维护连续性。 |
| [`/film-end-credits`](skills/core-engine/film-end-credits/SKILL.md) | 制作片名、导演和品牌结束卡。 |

</details>

## 故事写作

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/hero-journey`](skills/narrative/hero-journey/SKILL.md) | 离开、考验、归来和有意义的角色改变。 |
| [`/thriller-plot`](skills/narrative/thriller-plot/SKILL.md) | 倒计时、可见的反派计划、逆转和双方计划碰撞。 |
| [`/romance-arc`](skills/narrative/romance-arc/SKILL.md) | 从冲突欲望、亲密、破裂到主动重聚的关系线。 |
| [`/mystery-detective`](skills/narrative/mystery-detective/SKILL.md) | 公平线索、嫌疑人逻辑、误导和读者可以推导的揭晓。 |

## GitHub 文件结构

下面每个目录的说明都指向它所包含的 Skill：

```text
skills/
├── game-production/          用于制作或重建可玩游戏的 Skills
├── game-mechanics-horror/    用于实现恐怖游戏机制的 Skills
├── game-analysis/            用于从游戏与游玩媒体提取设计证据的 Skills
├── game-design/              用于设计遭遇、技能、关卡和选择的 Skills
├── 2d-game/                  用于制作可玩 2D 游戏形式和像素动画的 Skills
├── 3d-assets/                用于制作角色、环境、道具和特效的 Skills
├── film-video/               用于制作完整电影和视频形式的 Skills
├── core-engine/              用于执行各个电影制作阶段的 Skills
└── narrative/                用于写作完整故事结构的 Skills

docs/                         供维护者使用的分类边界与 Skill 写作规范
```

未来的第一人称、第三人称、2.5D、等距视角和横版视角 Skill 会放在独立的视角分支中，不会和玩法机制或游戏制作 Skill 混在一起。完整规划见 [游戏 Skill 架构](docs/game-skill-architecture.md)。

## 许可证与来源

仓库采用 [Apache License 2.0](LICENSE)。每个经过外部资料研究的新游戏 Skill 都包含 `SOURCE.md`，记录原创归属、研究输入和禁止复制的边界。

如果项目使用已有游戏、电影、书籍或视觉世界，请保留来源，并在公开发布或商业使用前取得所需权利。

## 赞助商

[Neta](https://neta.art): Give your world its first heartbeat. Describe it. Neta brings your world to life, and lets you step inside.

[![Neta.art 官网截图](.github/assets/neta-art-homepage.png)](https://neta.art)
