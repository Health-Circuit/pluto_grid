import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridRowGestureEvent extends PlutoGridEvent{

  final PlutoGridGestureType gestureType;
  final int rowIdx;

  PlutoGridRowGestureEvent({
    required this.gestureType,
    required this.rowIdx,
  });

  @override
  void handler(PlutoGridStateManager stateManager) {
    switch (gestureType) {
      case PlutoGridGestureType.onMouseHover:
        _onMouseHover(stateManager);
        break;
      case PlutoGridGestureType.onMouseExit:
        _onMouseExit(stateManager);
        break;
      default:
    }
  }

  void _onMouseHover(PlutoGridStateManager stateManager) {
    stateManager.setHoveredCell(null, rowIdx);
  }

  void _onMouseExit(PlutoGridStateManager stateManager) {
    stateManager.setHoveredCell(null, null);
  }
}