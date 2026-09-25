<p align="center">
  <img src=".github/assets/worldview-skills-cover.png" alt="Worldview Skills" width="100%">
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-Apache--2.0-2f80ed?style=for-the-badge" alt="Apache 2.0 license"></a>
  <a href="https://github.com/LogicOber/Worldview-Skills"><img src="https://img.shields.io/badge/Skills-75-111827?style=for-the-badge" alt="75 Skills"></a>
  <a href="https://skills.sh"><img src="https://img.shields.io/badge/works%20with-Claude%20Code%20%7C%20Codex-111827?style=for-the-badge" alt="Works with Claude Code and Codex"></a>
</p>

<p align="center"><a href="./README.md">English</a> · <a href="./README.zh-CN.md"><strong>简体中文</strong></a></p>

# Worldview Skills

让 Claude Code、Codex 或其他支持 `SKILL.md` 的 Agent，从一句需求开始制作可玩的游戏、高保真游戏场景、电影、可复用视觉资产和完整故事。

把仓库链接和一句需求交给 Agent 即可。它会安装 Skill 并自行选择需要的入口。还在构思游戏时，会先写故事、玩家行动、发现和预计游玩时间，交给你看过再进入实现；已经明确要求它自行设计并制作时，则可以继续完成制作与验证。你不需要手工搭工作流，也不需要记住每个 Skill；需要精细控制时，再使用对应的 Slash 入口。

仓库目前包含 **75 个可安装 Skill**，可以用来：

- 在开始制作前写完游戏故事，安排探索、惊喜、选择和预计游玩时间；
- 把简短想法扩展成经过调研的单结局游戏，制作新的可玩切片，或重建现有游戏的视觉呈现；
- 实现追逐、躲藏、声音侦测、稀缺存档、调查和死亡循环等恐怖玩法；
- 从游戏截图和视频提取设计证据，把追逐建筑转成路线契约，并选择合适的 3D 资产制作路线；
- 设计 Boss 战、英雄技能、关卡、谜题、分支选择和可玩的 2D 游戏形式；
- 制作统一的角色、Boss、环境、道具、像素动画和视觉特效；
- 制作短片、游戏过场、动作场面、产品视频和社交媒体短视频；
- 写作推理、惊悚、爱情、英雄旅程等完整故事。

## 目录

- [赞助商](#赞助商)
- [1. 安装与更新](#1-安装与更新)
- [2. 游戏制作](#2-游戏制作)
  - [2.1 故事策划与游戏制作](#21-故事策划与游戏制作)
  - [2.2 游戏类别](#22-游戏类别)
    - [2.2.1 恐怖游戏](#221-恐怖游戏)
  - [2.3 游戏分析](#23-游戏分析)
  - [2.4 通用游戏设计与 2D 制作](#24-通用游戏设计与-2d-制作)
  - [2.5 3D 资产制作](#25-3d-资产制作)
- [3. 电影与视频制作](#3-电影与视频制作)
- [4. 故事写作](#4-故事写作)
- [5. 社区作品展示](#5-社区作品展示)
- [6. GitHub 文件结构](#6-github-文件结构)
- [7. 许可证与来源](#7-许可证与来源)

## 赞助商

[Neta](https://neta.art): Give your world its first heartbeat. Describe it. Neta brings your world to life, and lets you step inside.

[![Neta.art 官网截图](.github/assets/neta-art-homepage.png)](https://neta.art)

## 1. 安装与更新

为所有受支持的 Agent 安装全部 75 个 Skill：

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

## 2. 游戏制作

游戏 Skill 按完整制作、游戏类别、分析、通用设计和资产制作分层。以后新增的游戏类型会放在 **2.2 游戏类别** 下，与恐怖游戏并列，不会混入机制或资产列表。

### 2.1 故事策划与游戏制作

**还没确定故事？** 先使用 Story and Play Plan。Agent 会写出场景和结局，安排玩家探索什么、做什么，估算时长，并检查提前猜到答案和漏线索的情况。要求“先看故事”时，会先交付完整文字稿供你确认；已明确授权自行设计并制作时，可以继续后续制作。安装全部 Skill 本身不会启动所有制作阶段。

| Slash 入口 | 适合用来做什么 | 得到什么 |
| --- | --- | --- |
| [`/worldview-game-story-and-play-plan`](skills/game-production/worldview-game-story-and-play-plan/README.md) | 从一句想法写出完整游戏故事，在实现前安排玩家体验。 | 可阅读的场景与对白、探索与揭晓顺序、首次游玩和重试时长估算，以及提前解题、漏线索和结局逻辑检查。 |
| [`/worldview-game-horror-production`](skills/game-production/worldview-game-horror-production/README.md) | 把简短的恐怖游戏设想扩展成机制互相连接、空间可记忆、威胁可学习、节奏与恢复完整并经过结局验证的完整体验。 | 恐怖游戏制作契约、体验时间线、地图与路线方案、机制路由、灰盒顺序、感官设计、验证流程，以及可玩或可直接实现的交付。 |
| [`/worldview-game-single-ending-campaign`](skills/game-production/worldview-game-single-ending-campaign/README.md) | 把简短设想扩展成原创、经过调研、只有一个正史结局并拥有完整可玩世界的剧情游戏。 | 带日期的调研记录、原创虚构化方案、完整路线、互相关联的玩法系统、地图、NPC、物品、状态与存档逻辑、运行证据，以及验证过的构建或部署 URL。 |
| [`/worldview-game-high-fidelity-vertical-slice`](skills/game-production/worldview-game-high-fidelity-vertical-slice/README.md) | 把故事、地点或游戏想法制作成一段精致的 2D 或 3D 可玩章节。 | 可玩核心、3–5 个真实游玩状态、原创资产方案、完整视觉呈现、运行时截图、性能证据和交付说明。 |
| [`/worldview-game-runtime-visual-fidelity-rebuild`](skills/game-production/worldview-game-runtime-visual-fidelity-rebuild/README.md) | 为玩法已经正常、但画面通用或不统一的游戏重建视觉呈现。 | 玩法保护基线，以及重建后的镜头、资产、材质、灯光、特效、UI、音频、同状态对比、回归测试和性能测量。 |

在 Codex 中获得最佳结果时，单个 Agent 完成深度端到端任务建议使用 **GPT-6 Astra + Max**；资产制作、运行时实现和验证可以拆成独立子任务时使用 **Astra + Ultra**。在 API 中，`max` 是 `reasoning.effort`；Ultra 是 Codex 的多 Agent 编排模式，不是 API 的 effort 值。参见官方 [GPT-6 Astra 模型页](https://developers.openai.com/api/docs/models/gpt-6-astra)和 [Codex 模型指南](https://learn.chatgpt.com/docs/models)。

如果已经配置并获得授权，Skill 可以使用图像生成、Blender MCP、其他 DCC、浏览器或引擎自动化和 Profiler；缺少某项能力时，每个 Skill 也写明了替代路线。

[选择适合的游戏制作 Skill →](skills/game-production/README.md)

### 2.2 游戏类别

每个游戏类别先提供完整制作入口，再按编号列出机制章节。恐怖游戏是第一个类别，后续类别会沿用相同结构。

#### 2.2.1 恐怖游戏

只有粗略想法时，Agent 可以先用 [Story and Play Plan](skills/game-production/worldview-game-story-and-play-plan/README.md) 写好故事；进入已授权的制作阶段后，再交给 Horror Production。

直接描述你想做的游戏即可。Agent 会自行选择并组合相关 Skill，建立共享状态，按安全顺序实现并验证。下面 27 个机制入口用于精确控制，但**你不需要记住，也不需要逐个手动调用**。

> [!TIP]
> 最简单的方式是把本仓库链接和游戏设想交给 Agent，让它自行阅读、安装并选择 Skill。Slash 入口只是控制某个具体机制的可选工具，不是需要用户手工搭建的工作流。

**恐怖游戏章节：** [01 完整制作](#01-先制作一款完整的恐怖游戏) · [02 追逐与躲藏](#02-追逐躲藏与威胁行为) · [03 生存系统](#03-生存资源与身体风险) · [04 调查目标](#04-调查工具与被打断的目标) · [05 信任合作](#05-信任记忆与共享知识) · [06 旅程节奏](#06-旅程节奏与社会压力) · [07 成品变化](#07-这些-skill-会怎样改变最终游戏)

<a id="01-先制作一款完整的恐怖游戏"></a>

##### 01. 先制作一款完整的恐怖游戏 🎬

只有故事、地点、参考图或粗略想法时，优先使用总制作 Skill。它会负责体验时间线、地图与路线、机制选择和路由、实现顺序、运行验证与最终交付。

| 🎮&nbsp;主&#8288;要&nbsp;Slash&nbsp;Skill&nbsp;——&nbsp;从&#8288;这&#8288;里&#8288;开&#8288;始 | 能完成什么 | 示例输入 |
| --- | --- | --- |
| [`/worldview-game-horror-production`](skills/game-production/worldview-game-horror-production/README.md) | 把简短设想做成一款完整恐怖游戏，只选择真正改变玩法的机制，连接各自的状态所有者，先完成灰盒，再验证成功、失败、恢复、存档、读档和结局。 | “制作一款约 25 分钟的英文第一人称恐怖游戏，地点是废弃渡轮码头，只有一个正史结局。复用当前项目，自行选择机制，完成实现并给我可玩的 URL。” |

不写任何 Slash 也可以直接使用：

```text
阅读 https://github.com/LogicOber/Worldview-Skills，安装需要的 Skills，
根据这个设想制作一款约 30 分钟的英文恐怖游戏：夜间信使带着一个密封箱
穿过被洪水淹没的城区，熟悉的安全地点逐渐不再承认她。只设一个正史结局。
自行选择机制，复用当前项目，完成实现，测试失败与重启，并交付可玩的结果。
只有答案会实质改变作品时才提问。
```

Agent 不应该把这段需求变成“每个机制都加一点”的清单。它会选择最小但有效的组合，为共享状态指定唯一所有者，并删掉无法改善目标体验的系统。

<a id="02-追逐躲藏与威胁行为"></a>

##### 02. 追逐、躲藏与威胁行为 🏃

| 🧩&nbsp;Slash&nbsp;Skill&nbsp;——&nbsp;精&#8288;确&#8288;控&#8288;制 | 能帮助 Agent 做什么 | 示例输入 |
| --- | --- | --- |
| [`/worldview-game-lure-hide-escape`](skills/game-mechanics-horror/worldview-game-lure-hide-escape/README.md) | 制作有明确边界的诱导—躲藏—逃脱遭遇：制造假声源、脱离观察、进入真实掩体、判断搜索过程并利用经过计算的窗口离开。 | “在旅馆楼层让我扔出瓶子、藏到床底，等怪物搜错房间后从服务门离开。” |
| [`/worldview-game-observation-gated-stalker`](skills/game-mechanics-horror/worldview-game-observation-gated-stalker/README.md) | 制作只有在未被有效观察时才能移动或伤害玩家的威胁，并处理屏幕边缘、遮挡、多人权限和公平接触时序。 | “雕像只有在所有有效玩家镜头都看不到它时才能前进，让柱子和移开视线成为路线决策。” |
| [`/worldview-game-sound-detection-and-distraction`](skills/game-mechanics-horror/worldview-game-sound-detection-and-distraction/README.md) | 建立脚步、材质、动作、装置、诱饵声、传播、每个听者的记忆，以及可读的听见/没听见结果，而不是把玩家坐标直接送给敌人。 | “金属地面会暴露玩家，地毯较安静，发条收音机能把一名守卫引到东侧走廊。” |
| [`/worldview-game-roaming-stalker-pressure`](skills/game-mechanics-horror/worldview-game-roaming-stalker-pressure/README.md) | 制作在连通地图中真实移动、记住证据、搜索合理地点、退出并再次施压的唯一持续追踪者，不让它瞬移到玩家身边。 | “让一只怪物在病房、洗衣房和地下室之间游荡，但必须经过真实连接点，并尊重安全屋边界。” |
| [`/worldview-game-safe-room-pressure-reset`](skills/game-mechanics-horror/worldview-game-safe-room-pressure-reset/README.md) | 制作允许规划、整理背包、存档和恢复的临时安全区，同时保留门外累积的危险。 | “把档案室做成临时安全屋；玩家可以整理和存档，但离开后压力恢复，而不是怪物被永久删除。” |
| [`/worldview-game-barricade-delay-and-route-choice`](skills/game-mechanics-horror/worldview-game-barricade-delay-and-route-choice/README.md) | 用材料、噪声、通行权或未来路线换取可测量的时间，并处理破坏、绕路、持久化和重置。 | “玩家可以锁住一个楼梯门换取 18 秒，但之后永久失去返回药房的捷径。” |
| [`/worldview-game-chase-route-architecture`](skills/game-mechanics-horror/worldview-game-chase-route-architecture/README.md) | 用建筑路线设计追逐：主路线、危险备选、失败回路、视线断点、交互锁、恢复区、检查点与精确时间余量。 | “把医院追逐画成 2.5D 路线图，包含一条正确路线、两个可理解的错误、恢复回路和最终门时序。” |

<a id="03-生存资源与身体风险"></a>

##### 03. 生存资源与身体风险 🎒

| 🧩&nbsp;Slash&nbsp;Skill&nbsp;——&nbsp;精&#8288;确&#8288;控&#8288;制 | 能帮助 Agent 做什么 | 示例输入 |
| --- | --- | --- |
| [`/worldview-game-scarce-inventory-triage`](skills/game-mechanics-horror/worldview-game-scarce-inventory-triage/README.md) | 设计有限容量、可行装备组合、受保护的流程道具、丢弃/存放/使用选择、溢出恢复和存档后所有权。 | “进入矿井前只有六个格子，让药品、照明、工具、证据和弹药竞争，但任何选择都不能软锁。” |
| [`/worldview-game-key-item-backtracking`](skills/game-mechanics-horror/worldview-game-key-item-backtracking/README.md) | 让钥匙或工具重新激活玩家记住的锁，同时改变返程路线、打开捷径，并在存读档后保持可恢复。 | “锅炉房里的黄铜阀门能重新打开被淹档案室，但返程必须出现新的威胁和一条捷径。” |
| [`/worldview-game-limited-save-risk`](skills/game-mechanics-horror/worldview-game-limited-save-risk/README.md) | 将主动存档次数做成生存决策，同时把它和崩溃恢复分开，并保证事务写入、辅助选项和数据安全。 | “用稀缺录音筒进行手动存档，但自动保存必要恢复数据，程序崩溃不能毁掉整个流程。” |
| [`/worldview-game-wounds-infection-and-treatment`](skills/game-mechanics-horror/worldview-game-wounds-infection-and-treatment/README.md) | 制作虚构、可读、随时间发展的受伤流程，包括稳定伤势、移动限制、治疗选择、复查、低刺激呈现和持久化。 | “玻璃割伤会让攀爬变慢并逐步恶化，直到玩家在诊所清理和包扎；明确它不是医疗建议。” |
| [`/worldview-game-relief-resource-with-hidden-cost`](skills/game-mechanics-horror/worldview-game-relief-resource-with-hidden-cost/README.md) | 让资源真正缓解当前问题，同时产生独立的延迟风险，并通过症状、痕迹和替代路线让代价可以学习。 | “药剂能暂时压住恐慌让玩家穿过画廊，但反复使用会产生可读的畏光，并改变后续路线。” |

<a id="04-调查工具与被打断的目标"></a>

##### 04. 调查、工具与被打断的目标 🔎

| 🧩&nbsp;Slash&nbsp;Skill&nbsp;——&nbsp;精&#8288;确&#8288;控&#8288;制 | 能帮助 Agent 做什么 | 示例输入 |
| --- | --- | --- |
| [`/worldview-game-restore-power-under-pressure`](skills/game-mechanics-horror/worldview-game-restore-power-under-pressure/README.md) | 设计零件搜索、分阶段维修、被打断规则、电路状态、通电后的世界变化、可理解失败与干净重置。 | “玩家寻找两个保险丝并启动被淹发电机，怪物会巡逻，但完成一半的维修在一次中断后仍然保留。” |
| [`/worldview-game-signal-proximity-tracking`](skills/game-mechanics-horror/worldview-game-signal-proximity-tracking/README.md) | 制作会受到距离、拓扑、遮挡和干扰影响的探测器，同时避免泄露目标实时坐标。 | “无线电表靠近地下发射器时更可靠，但在电梯电缆旁会以可学习的方式误报。” |
| [`/worldview-game-evidence-based-entity-identification`](skills/game-mechanics-horror/worldview-game-evidence-based-entity-identification/README.md) | 建立候选假设、阳性/阴性/不确定/受污染测试、证人和机构证据、矛盾，以及表达最终结论的实际行动。 | “通过门禁日志、残留物、行为和一名不可靠证人区分三种访客，再选择正确的收容方式。” |
| [`/worldview-game-threat-interrupted-puzzle`](skills/game-mechanics-horror/worldview-game-threat-interrupted-puzzle/README.md) | 设计会被威胁中断的世界内谜题，明确哪些进度保留、回退或改变，并提供预警窗口和恢复路线。 | “潮轮谜题有四个物理步骤，追踪者可在第二步后打断，但玩家必须清楚哪些步骤仍然有效。” |

<a id="05-信任记忆与共享知识"></a>

##### 05. 信任、记忆与共享知识 🧠

| 🧩&nbsp;Slash&nbsp;Skill&nbsp;——&nbsp;精&#8288;确&#8288;控&#8288;制 | 能帮助 Agent 做什么 | 示例输入 |
| --- | --- | --- |
| [`/worldview-game-perception-distortion-and-trust`](skills/game-mechanics-horror/worldview-game-perception-distortion-and-trust/README.md) | 让部分线索变得不可靠，同时分开世界事实、角色理解、玩家看到的内容和保存的证据，并保留至少一个可靠锚点。 | “暴露后走廊指示牌会说谎，但房间几何和盖章维修记录仍足够可靠，玩家可以据此推理。” |
| [`/worldview-game-death-loop-persistent-clues`](skills/game-mechanics-horror/worldview-game-death-loop-persistent-clues/README.md) | 设计有限循环，明确世界状态、角色记忆、线索、物品变化、已掌握劳动和重试压缩分别如何处理。 | “港口在 04:13 重置；玩家保留一个学会的密码并跳过已掌握的抽水流程，但实体钥匙回到原持有人。” |
| [`/worldview-game-asymmetric-information-cooperation`](skills/game-mechanics-horror/worldview-game-asymmetric-information-cooperation/README.md) | 设计拥有不同知识和动作权限的同时参与者，包括消息确认、通信中断、重连规则和确定性替代方案。 | “一名玩家读取钟声顺序，另一名在别的房间操作阀门；两人都不能独立解决，漏掉的消息必须有可见确认。” |
| [`/worldview-game-character-handoff-and-shared-evidence`](skills/game-mechanics-horror/worldview-game-character-handoff-and-shared-evidence/README.md) | 设计顺序切换的可玩视角，让行动、物品持有、事实、痕迹、错误和后果通过原子切换传递，而不是复制世界状态。 | “第一章扮演藏起证据的检查员，第二章扮演其妹妹；她只能发现被移动的物体和真正记录下来的内容。” |

<a id="06-旅程节奏与社会压力"></a>

##### 06. 旅程、节奏与社会压力 🛣️

| 🧩&nbsp;Slash&nbsp;Skill&nbsp;——&nbsp;精&#8288;确&#8288;控&#8288;制 | 能帮助 Agent 做什么 | 示例输入 |
| --- | --- | --- |
| [`/worldview-game-stranded-journey-and-lost-protections`](skills/game-mechanics-horror/worldview-game-stranded-journey-and-lost-protections/README.md) | 在旅程不同阶段依次拿走行动能力、通信、庇护、可信度、同伴或可靠返程，但每一步都保留代价明确的替代方案。 | “巴士抛锚后困住信使，依次失去手机信号、庇护和可靠向导，但每个阶段都保留一种昂贵后路。” |
| [`/worldview-game-driving-horror-divided-attention`](skills/game-mechanics-horror/worldview-game-driving-horror-divided-attention/README.md) | 连接道路负荷、后视镜、仪表、车内威胁、注视时间、停车节点、控制干扰、检查点与晕动舒适方案。 | “隧道驾驶时让玩家兼顾后视镜和故障温度表，同时保证道路可读，绝不能伪造玩家的转向输入。” |
| [`/worldview-game-horror-experience-rhythm`](skills/game-mechanics-horror/worldview-game-horror-experience-rhythm/README.md) | 将首次游玩时间与剪辑参考时长分开，编排定向、日常、调查、压力、恢复、回报和事后余波。 | “重排这个 35 分钟章节，让玩家能在两次追逐之间形成计划，并在最终逃生后保留五分钟可玩的余波。” |
| [`/worldview-game-horror-returning-place-escalation`](skills/game-mechanics-horror/worldview-game-horror-returning-place-escalation/README.md) | 多次返回同一地点，用稳定地标支持每次新的问题、行动、路线、权限、人员或解释变化。 | “四次回到同一个站台，地标保持稳定，但每次都改变一个可检查事实和一个玩家决策。” |
| [`/worldview-game-horror-mundane-routine-corruption`](skills/game-mechanics-horror/worldview-game-horror-mundane-routine-corruption/README.md) | 让玩家先亲手学会正常工作或生活流程，再一次改变一个字段，并让变化影响后续路线、承诺、资源或关系。 | “先完成两次正常的面包店打烊班次，再让订单、烤箱和顾客权限一次改变一条规则。” |
| [`/worldview-game-horror-procedural-duty-and-incident`](skills/game-mechanics-horror/worldview-game-horror-procedural-duty-and-incident/README.md) | 用合法职责教会有用流程，使异常事件值得接近，并保存被打断工作，同时改变权限、证人或路线。 | “先用一次平静巡查教会夜班检查员疏散流程，再用一间不该有人却有人回应的房间打断它。” |
| [`/worldview-game-horror-role-and-identity-pressure`](skills/game-mechanics-horror/worldview-game-horror-role-and-identity-pressure/README.md) | 通过角色声明、权限、预期行为、时间表、门禁历史、观察者判断、误判风险和申诉空间制造恐怖，而非只做认脸测试。 | “两名服务员长得一样；让玩家根据钥匙权限、班表、私人知识和行为判断，指错人必须付出代价。” |

##### 07. 这些 Skill 会怎样改变最终游戏

- 玩家会先亲手执行或检查正常流程，之后才需要发现异常。
- 追逐是一条可以学习、走错、恢复并最终掌握的路线，而不是怪物读取隐藏的玩家坐标。
- 真实事件、角色判断、玩家看到的内容和保存的证据分别记录，让模糊性仍然公平。
- 高压之后保留足够长的恢复段供玩家形成计划，结局之后也有可玩的余波，而不是在最高潮直接切黑。
- 不会把剪辑视频的时长直接当成真实游玩时长；首次游玩、重复游玩和运行事件顺序分别规划。
- 失败会指出遗漏的线索、路线、权限、时间窗口或资源选择，让下一次尝试变得更聪明，而不仅是更快。

如果只想精确控制一次追逐，可以直接调用对应机制：

```text
/worldview-game-chase-route-architecture

把医院追逐设计成建筑路线。生成 2.5D 平面图，标出主逃生线、危险备选线、
失败回路、视线断点、声音事件、道具门、检查点，以及最终门的准确时间余量。
然后在当前项目实现并验证这条路线。
```

[查看全部恐怖机制 →](skills/game-mechanics-horror/README.md)

### 2.3 游戏分析

在实现前，可以让 Agent 从游戏视频、截图、创作者频道或风格参考中提取设计证据。它会记录玩家的决策、犹豫、回头、镜头、建筑、物品、威胁状态、声音及其串联方式，而不只是复述剧情或照抄资产。

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/worldview-gameplay-video-analysis`](skills/game-analysis/worldview-gameplay-video-analysis/README.md) | 带时间戳的观察记录、截图/风格板、路线与机制图、设计模式与失败模式标签，以及可以反哺恐怖游戏契约的跨视频聚类。 |
| [`/worldview-gameplay-experience-study`](skills/game-analysis/worldview-gameplay-experience-study/README.md) | 从第一人称体验、第三人称设计判断和证据中形成定性案例，并转成可用于原创设计的决策记录。 |

### 2.4 通用游戏设计与 2D 制作

#### 2.4.1 玩法、遭遇与关卡

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/boss-battle`](skills/game-design/boss-battle/SKILL.md) | 包含场地、阶段、招式预警、反制方法和结尾的完整 Boss 战。 |
| [`/hero-skill-system`](skills/game-design/hero-skill-system/SKILL.md) | 具有消耗、定位和反制空间的被动与 Q/W/E/R 技能组。 |
| [`/horror-chase`](skills/game-design/horror-chase/SKILL.md) | 包含路线、藏身点、追踪规则和险些被抓时序的追逐设计。 |
| [`/puzzle-mechanic`](skills/game-design/puzzle-mechanic/SKILL.md) | 可以教学、升级并产生解谜顿悟的核心规则。 |
| [`/platformer-level`](skills/game-design/platformer-level/SKILL.md) | 教会、测试并组合玩家移动能力的平台关卡。 |
| [`/roguelike-generator`](skills/game-design/roguelike-generator/SKILL.md) | 一局游戏的房间语法、风险收益、升级和最终 Boss。 |
| [`/narrative-choice`](skills/game-design/narrative-choice/SKILL.md) | 带状态、延迟后果和合理合流的分支选择。 |

#### 2.4.2 可玩的 2D 游戏形式与像素动画

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/card-game`](skills/2d-game/card-game/SKILL.md) | 卡牌对战循环和第一套平衡卡组。 |
| [`/rhythm-game`](skills/2d-game/rhythm-game/SKILL.md) | 包含音乐分析、谱面、判定与反馈的节奏游戏切片。 |
| [`/side-scroller`](skills/2d-game/side-scroller/SKILL.md) | 带美术分层和移动挑战的横版可玩关卡。 |
| [`/visual-novel`](skills/2d-game/visual-novel/SKILL.md) | 带角色、表情、背景和分支的可玩对话场景。 |
| [`/pixel-art-sprite`](skills/2d-game/pixel-art-sprite/SKILL.md) | 统一网格、调色板、角色动作和配套地块。 |

### 2.5 3D 资产制作

这些 Skill 会制作统一的设计图、多角度参考和生产规格；存在兼容的 3D Tool 时，还可以继续生成可编辑模型或场景资产。

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/character-model`](skills/3d-assets/character-model/SKILL.md) | 角色转面图、表情、服装变体和可选贴图模型。 |
| [`/boss-model`](skills/3d-assets/boss-model/SKILL.md) | 大型敌人的比例图、动作板、损伤状态、弱点设计和可选模型。 |
| [`/environment-scene`](skills/3d-assets/environment-scene/SKILL.md) | 场景主视图、多角度覆盖、固定地标布局和可选 3D 场景。 |
| [`/weapon-prop`](skills/3d-assets/weapon-prop/SKILL.md) | 保持统一的武器、遗物、工具、服装或文字道具。 |
| [`/vfx-effect`](skills/3d-assets/vfx-effect/SKILL.md) | 具有形状、配色、时序、因果关系和可审查循环的特效。 |
| [`/worldview-3d-asset-production-route`](skills/3d-assets/worldview-3d-asset-production-route/README.md) | 在手工建模、程序化建模和图像转 3D 之间做选择，并检查静物网格、拓扑、绑定、变形、授权和运行时集成。 |

## 3. 电影与视频制作

**需要角色对白或旁白？** 推荐先配置 [ElevenLabs MCP](https://elevenlabs.io/mcp)，也可以使用 ElevenLabs API、其他兼容语音服务，或提供自己的录音。Agent 会为每个角色和旁白固定音色，先生成并检查配音文件，再将音频与参考图一起提交给支持音频输入的 Seedance 2.5 或其他视频接口。验收时会核对台词和角色声音，而不只是检查有没有背景音效。不同接口的限制与替代方案见 [配音流程](skills/core-engine/film-dialogue-voiceover/SKILL.md)。

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/cinematic-film`](skills/film-video/cinematic-film/SKILL.md) | 从一个故事想法制作多段式叙事短片。 |
| [`/game-cutscene-generator`](skills/film-video/game-cutscene-generator/SKILL.md) | 制作游戏里的出场、对话、转场或胜利过场。 |
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

## 4. 故事写作

要把故事写成玩家能探索和行动的游戏，使用 [Story and Play Plan](skills/game-production/worldview-game-story-and-play-plan/README.md)。下面这些入口分别处理特定的故事结构。

| Slash 入口 | 制作内容 |
| --- | --- |
| [`/hero-journey`](skills/narrative/hero-journey/SKILL.md) | 离开、考验、归来和有意义的角色改变。 |
| [`/thriller-plot`](skills/narrative/thriller-plot/SKILL.md) | 倒计时、可见的反派计划、逆转和双方计划碰撞。 |
| [`/romance-arc`](skills/narrative/romance-arc/SKILL.md) | 从冲突欲望、亲密、破裂到主动重聚的关系线。 |
| [`/mystery-detective`](skills/narrative/mystery-detective/SKILL.md) | 公平线索、嫌疑人逻辑、误导和读者可以推导的揭晓。 |

## 5. 社区作品展示

看看大家用这些 Skills 做出的游戏、视频、故事和视觉作品。

**精选作品：** 现已开放投稿。入选作品的视频会在这里展示并署名，后续可随新投稿更新。

[浏览全部作品 →](showcase/README.md) · [提交你的作品 →](CONTRIBUTING.md#submit-a-showcase)

每件作品提交一个文件夹，包含开头展示视频的 `showcase.md`，也可以附带少量相关文件。把下面这段话和作品、演示视频交给 AI 即可：

```text
阅读 https://github.com/LogicOber/Worldview-Skills/blob/main/CONTRIBUTING.md，
按照“Submit a showcase”说明，为我的作品和演示视频准备投稿并提交 PR。
只提交我允许公开的文件；缺少署名或素材授权时先问我。
检查投稿内容和链接后，返回 PR 地址，不要自行合并。
```

## 6. GitHub 文件结构

下面每个目录的说明都指向它所包含的 Skill：

```text
skills/
├── game-production/          用于策划游戏故事、制作游戏与重建视觉的 Skills
├── game-mechanics-horror/    用于实现恐怖游戏机制的 Skills
├── game-analysis/            用于从游戏与游玩媒体提取设计证据的 Skills
├── game-design/              用于设计遭遇、技能、关卡和选择的 Skills
├── 2d-game/                  用于制作可玩 2D 游戏形式和像素动画的 Skills
├── 3d-assets/                用于制作角色、环境、道具和特效的 Skills
├── film-video/               用于制作完整电影和视频形式的 Skills
├── core-engine/              用于执行各个电影制作阶段的 Skills
└── narrative/                用于写作完整故事结构的 Skills

showcase/                     社区作品、演示视频与相关附件
CONTRIBUTING.md               作品投稿与 PR 说明
docs/                         供维护者使用的分类边界与 Skill 写作规范
```

未来的第一人称、第三人称、2.5D、等距视角和横版视角 Skill 会放在独立的视角分支中，不会和玩法机制或游戏制作 Skill 混在一起。完整规划见 [游戏 Skill 架构](docs/game-skill-architecture.md)。

## 7. 许可证与来源

仓库采用 [Apache License 2.0](LICENSE)。每个经过外部资料研究的新游戏 Skill 都包含 `SOURCE.md`，记录原创归属、研究输入和禁止复制的边界。

如果项目使用已有游戏、电影、书籍或视觉世界，请保留来源，并在公开发布或商业使用前取得所需权利。

Showcase 媒体素材遵循各作品页面注明的使用条款；链接指向的项目保留各自的许可证。
