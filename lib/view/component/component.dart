import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
// import 'package:flutter/rendering.dart';

import '../../theme.dart';

export 'package:flash/flash.dart' show showFlash;

part 'snack_flashbar.dart';
part 'container_image.dart';
part 'main_button.dart';
part 'login_textfield.dart';
part 'container_list.dart';
part 'container_row.dart';
part 'container_listtile.dart';
part 'main_textfield.dart';

void showPengajuanSheet(BuildContext context, ThemeData theme) {
  showModalBottomSheet(
    context: context,
    clipBehavior: Clip.antiAlias,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24))
    ),
    builder: (ctx) => SizedBox(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
            height: 60,
            color: theme.primaryColor,
            alignment: Alignment.center,
            child: Text('PENGAJUAN KREDIT', style: textTheme.subtitle1.copyWith(
              color: Colors.white,
            )),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textBaseline: TextBaseline.alphabetic,
              children: [
                MainTextField(
                  onChanged: (val) {},
                  hint: 'Pilih Ide bisnis Anda',
                ),
                const SizedBox(height: 24,),
                MainTextField(
                  onChanged: (val) {},
                  hint: 'Alasan Kenapa Memilih ide Bisnis ini',
                  maxLines: 6,
                ),
                const SizedBox(height: 24,),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE5F3FF),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: const Text('Proposal. max 3MB')
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          color: theme.primaryColor,
                          onPressed: () {},
                          child: Text('Upload', style: textTheme.button.copyWith(
                            color: Colors.white
                          ))
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                MainButton(
                  label: 'SUBMIT PINJAMAN',
                  onPressed: () {},
                )
              ]
            ),
          )
        ],
      ),
    )
  );
}


