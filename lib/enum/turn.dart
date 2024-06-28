enum Turn {
  standBy('准备阶段'),
  draw('抽卡阶段'),
  mainFirst('主要阶段1'),
  battle('战斗阶段'),
  mainSecond('主要阶段2'),
  end('结束阶段');

  const Turn(this.value);
  final String value;
}
