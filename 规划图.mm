<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="ClassicRoguelike" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1735030537533" STYLE="oval" CHILD_NODES_LAYOUT="TOPTOBOTTOM_RIGHT_AUTO">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" show_tags="UNDER_NODES" associatedTemplateLocation="template:/standard-1.6.mm" show_note_icons="true" fit_to_viewport="false" showTagCategories="false"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#afd3f7" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#afd3f7"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.flower" COLOR="#ffffff" BACKGROUND_COLOR="#255aba" STYLE="oval" TEXT_ALIGN="CENTER" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="22 pt" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f9d71c" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="CLOSE_DOTS" MAX_WIDTH="6 cm" MIN_WIDTH="3 cm"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="9" RULE="ON_BRANCH_CREATION"/>
<node TEXT="回合管理" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="bottom_or_right" ID="ID_611517290" CREATED="1735029688319" MODIFIED="1735031007910">
<edge COLOR="#ff00ff"/>
<node TEXT="cycle" ID="ID_1510622557" CREATED="1735029708831" MODIFIED="1735029742922">
<node TEXT="tick" ID="ID_1638679195" CREATED="1735029745220" MODIFIED="1735029747493"/>
</node>
</node>
<node TEXT="状态循环" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="bottom_or_right" ID="ID_276709091" CREATED="1735029698900" MODIFIED="1735031013505">
<edge COLOR="#00ffff"/>
<node TEXT="关卡准备阶段&#xa;PreparationState" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1969669442" CREATED="1735029877625" MODIFIED="1735033375483">
<node TEXT="任务: 新游戏, 存档加载, 地图生成, 实体放置" ID="ID_1778073782" CREATED="1735033526822" MODIFIED="1735705895915"/>
</node>
<node TEXT="游戏循环阶段&#xa;GameLoopState" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_838524250" CREATED="1735029880845" MODIFIED="1735033386132">
<node TEXT="维持阶段&#xa;MaintainanceState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_276606313" CREATED="1735029942286" MODIFIED="1735031683642">
<node TEXT="阻塞游戏循环, 进行某些必要的检查, 等待tick开始信号" ID="ID_764133934" CREATED="1735705914451" MODIFIED="1735705944254"/>
</node>
<node TEXT="回合开始阶段&#xa;TickStartingState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1571723087" CREATED="1735030246842" MODIFIED="1735031700572">
<node TEXT="Buff行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1260970334" CREATED="1735033137196" MODIFIED="1735033151210">
<node TEXT="即检查是否有需要在当前时机触发的Buff.&#xa;同时把持续时间结束的buff移除." ID="ID_607704160" CREATED="1735033154555" MODIFIED="1735033254692"/>
</node>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_648939151" CREATED="1735030289611" MODIFIED="1735032171587">
<node TEXT="效果处理应该是一个loop, 直到当前时机所有该完成的效果全部完成才能结束该状态&#xa;&#xa;举个例子, A对B造成1点直击伤害, 压入效果处理队列.&#xa;直击伤害效果处理时B身上的&quot;荆棘1&quot;Buff对A造成了1点反弹伤害, 压入效果处理队列.&#xa;直到效果处理队列被清空, 才能进行下一项事务." ID="ID_973944539" CREATED="1735031267535" MODIFIED="1735033163961" BACKGROUND_COLOR="#cccccc"/>
</node>
</node>
<node TEXT="玩家阶段&#xa;PlayerPhaseState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_542801502" CREATED="1735029943716" MODIFIED="1735031759010">
<node TEXT="等待玩家指示" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_424203867" CREATED="1735030428635" MODIFIED="1735721034582">
<node TEXT="关联到3个部分" ID="ID_1379197693" CREATED="1735031508030" MODIFIED="1735972387344">
<node TEXT="1. 场景树中的输入捕捞&#xa;包括gui节点与一般节点, 都有可能截获玩家输入, 并且在适当时机把输入解释为ins, 将instruction传递给InstructionManager" ID="ID_1096193235" CREATED="1735719387443" MODIFIED="1735721142269"/>
<node TEXT="2. Instruction处理&#xa;本状态监听到InstructionManager不为空时, 进入玩家行动状态, 将Instruction解释为行动" ID="ID_673331916" CREATED="1735721038128" MODIFIED="1735721127083"/>
</node>
</node>
<node TEXT="玩家行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_652088922" CREATED="1735030434213" MODIFIED="1735031263661"/>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1407691843" CREATED="1735030445582" MODIFIED="1735032176440"/>
</node>
<node TEXT="投射物阶段&#xa;ProjectilePhaseState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_569234211" CREATED="1735030915090" MODIFIED="1735031773383">
<node TEXT="耗尽行动队列" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1939410657" CREATED="1735030930441" MODIFIED="1735706027777">
<node TEXT="投射物行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1080745993" CREATED="1735030941258" MODIFIED="1735031449414"/>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_886549674" CREATED="1735030946066" MODIFIED="1735032181266"/>
</node>
</node>
<node TEXT="敌人阶段&#xa;EnemyPhaseState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1782976247" CREATED="1735029943922" MODIFIED="1735031818851">
<node TEXT="耗尽行动队列" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1591579672" CREATED="1735030804168" MODIFIED="1735706030082">
<node TEXT="敌人行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_235579158" CREATED="1735030815535" MODIFIED="1735031449415"/>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_459631948" CREATED="1735030882308" MODIFIED="1735032184403"/>
</node>
</node>
<node TEXT="回合结束阶段&#xa;TickEndingState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_636228323" CREATED="1735030900919" MODIFIED="1735031829812">
<node TEXT="Buff行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1849079795" CREATED="1735033137196" MODIFIED="1735033151210">
<node TEXT="即检查是否有需要在当前时机触发的Buff.&#xa;同时把持续时间结束的buff移除." ID="ID_1126676184" CREATED="1735033154555" MODIFIED="1735033254692"/>
</node>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_390570460" CREATED="1735033293787" MODIFIED="1735033298888"/>
</node>
</node>
<node TEXT="关卡退出阶段&#xa;ExitState" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1463466455" CREATED="1735029881213" MODIFIED="1735033401564">
<node TEXT="任务: 确认目标关卡, 实体状态保存, 地图保存, 存档保存." ID="ID_1128544955" CREATED="1735033599826" MODIFIED="1735033687620"/>
</node>
</node>
<node TEXT="实体&#xa;Entity" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="top_or_left" ID="ID_1562849789" CREATED="1735716651409" MODIFIED="1735716732819">
<edge COLOR="#00007c"/>
<node TEXT="?运动实体&#xa;MobileEntity" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1714169542" CREATED="1735716668990" MODIFIED="1735717411874">
<node TEXT="额外拥有move_direction:Vector2i属性" ID="ID_191862478" CREATED="1735716739766" MODIFIED="1735716796126"/>
</node>
<node TEXT="Collectable" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_35924363" CREATED="1735716684948" MODIFIED="1735716865289"/>
<node TEXT="Charactor" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_382088997" CREATED="1735716804940" MODIFIED="1735716847493">
<node TEXT="Player" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_685612058" CREATED="1735716879431" MODIFIED="1735716896080"/>
<node TEXT="Enemy" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_544897467" CREATED="1735716886331" MODIFIED="1735716896081"/>
</node>
<node TEXT="Projectile" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_212796825" CREATED="1735716836729" MODIFIED="1735716847496"/>
</node>
<node TEXT="组件&#xa;Component" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="top_or_left" ID="ID_754140414" CREATED="1735716921449" MODIFIED="1735716934911">
<edge COLOR="#007c00"/>
<node TEXT="行为树&#xa;BehaviorTree" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1221407121" CREATED="1735716940107" MODIFIED="1735716962757">
<node TEXT="组织单位行动的基础结构" ID="ID_1118305009" CREATED="1735716971373" MODIFIED="1735716997438"/>
</node>
<node TEXT="移动组件&#xa;MovementComponent" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_396157569" CREATED="1735717366079" MODIFIED="1735718147257"/>
</node>
<node TEXT="系统架构&#xa;System_Structure" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="top_or_left" ID="ID_943381836" CREATED="1735716999652" MODIFIED="1735717012418">
<edge COLOR="#7c007c"/>
<node TEXT="状态机/子状态机&#xa;Statemachine/SubStatemachine" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1132166228" CREATED="1735717015568" MODIFIED="1735717043668"/>
</node>
</node>
</map>
