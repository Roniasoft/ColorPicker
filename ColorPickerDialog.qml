import QtQuick
import QtQuick.Controls

//import NodeLink

Dialog {
  id: root

  property alias color: colorPicker.color

  topPadding: 0
  bottomPadding: 0
  modal: true
  dim: false
  closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
  anchors.centerIn: Overlay.overlay
//  standardButtons: Dialog.Ok | Dialog.Cancel

  onRejected: colorPicker.picking = false

  background: Rectangle {
      anchors.fill: parent
      color: "#1e1e1e"
      border.color: "#4890e2"
      border.width: 2
      radius: 5

  }

  ColorPicker {
    id: colorPicker
    anchors.fill: parent

  }
}
