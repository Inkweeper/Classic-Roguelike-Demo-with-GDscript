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
<hook NAME="AutomaticEdgeColor" COUNTER="6" RULE="ON_BRANCH_CREATION"/>
<node TEXT="回合管理" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="bottom_or_right" ID="ID_611517290" CREATED="1735029688319" MODIFIED="1735031007910">
<edge COLOR="#ff00ff"/>
<node TEXT="cycle" ID="ID_1510622557" CREATED="1735029708831" MODIFIED="1735029742922">
<node TEXT="tick" ID="ID_1638679195" CREATED="1735029745220" MODIFIED="1735029747493"/>
</node>
</node>
<node TEXT="状态循环" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="bottom_or_right" ID="ID_276709091" CREATED="1735029698900" MODIFIED="1735031013505">
<edge COLOR="#00ffff"/>
<node TEXT="关卡准备阶段&#xa;PreparationState" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1969669442" CREATED="1735029877625" MODIFIED="1735033375483">
<node TEXT="任务: 存档加载, 地图生成, 实体放置" ID="ID_1778073782" CREATED="1735033526822" MODIFIED="1735033596518"/>
</node>
<node TEXT="游戏循环阶段&#xa;GameLoopState" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_838524250" CREATED="1735029880845" MODIFIED="1735033386132">
<node TEXT="维持阶段&#xa;MaintainanceState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_276606313" CREATED="1735029942286" MODIFIED="1735031683642">
<node TEXT="行动登记" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_70893680" CREATED="1735031307973" MODIFIED="1735033164133">
<node TEXT="完成本回合需要行动的单位的行动登记任务&#xa;玩家/投射物/敌人, 分别使用队列" LOCALIZED_STYLE_REF="default" ID="ID_664250196" CREATED="1735030002302" MODIFIED="1735033164132"/>
</node>
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
<node TEXT="耗尽行动登记队列" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1864434802" CREATED="1735031409132" MODIFIED="1735033196335">
<node TEXT="等待玩家行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_424203867" CREATED="1735030428635" MODIFIED="1735031263654">
<node TEXT="PlayerActionRequester: 检查玩家是否有输入方向键, 或者点击地图, 或者确认使用技能, 或者使用道具等行动, 上交并等待下一阶段处理" ID="ID_1379197693" CREATED="1735031508030" MODIFIED="1735031620882"/>
</node>
<node TEXT="玩家行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_652088922" CREATED="1735030434213" MODIFIED="1735031263661"/>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1407691843" CREATED="1735030445582" MODIFIED="1735032176440"/>
</node>
</node>
<node TEXT="投射物阶段&#xa;ProjectilePhaseState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_569234211" CREATED="1735030915090" MODIFIED="1735031773383">
<node TEXT="耗尽行动登记队列" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1939410657" CREATED="1735030930441" MODIFIED="1735033809844">
<node TEXT="投射物行动" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1080745993" CREATED="1735030941258" MODIFIED="1735031449414"/>
<node TEXT="效果处理" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_886549674" CREATED="1735030946066" MODIFIED="1735032181266"/>
</node>
</node>
<node TEXT="敌人阶段&#xa;EnemyPhaseState" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1782976247" CREATED="1735029943922" MODIFIED="1735031818851">
<node TEXT="耗尽行动登记队列" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1591579672" CREATED="1735030804168" MODIFIED="1735033813559">
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
</node>
</map>
