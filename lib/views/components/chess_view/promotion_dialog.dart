import 'package:chessai/logic/chess_piece.dart';
import 'package:chessai/model/app_model.dart';
import 'package:chessai/views/components/chess_view/promotion_option.dart';
import 'package:flutter/cupertino.dart';

const PROMOTIONS = [
  ChessPieceType.queen,
  ChessPieceType.rook,
  ChessPieceType.bishop,
  ChessPieceType.knight
];

class PromotionDialog extends StatelessWidget {
  final AppModel appModel;

  PromotionDialog(this.appModel);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      actions: [
        Container(
          height: 66,
          child: Row(
            children: PROMOTIONS
                .map(
                  (promotionType) => PromotionOption(
                    appModel,
                    promotionType,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
