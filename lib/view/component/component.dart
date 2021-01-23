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

Future<void> showPengajuanSheet(BuildContext context) async {
  final ValueNotifier<bool> keyboardShowup = ValueNotifier(false);
  final FocusNode focusKeyboard1 = FocusNode();
  final FocusNode focusKeyboard2 = FocusNode();

  focusKeyboard1.addListener(() {
    keyboardShowup.value = !keyboardShowup.value;
  });

  focusKeyboard2.addListener(() {
    keyboardShowup.value = !keyboardShowup.value;
  });

  await showModalBottomSheet(
    context: context,
    clipBehavior: Clip.antiAlias,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24))
    ),
    builder: (context) => ValueListenableBuilder<bool>(
      valueListenable: keyboardShowup,
      builder: (context, isShowup, child) {
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        final modalPadding = EdgeInsets.fromLTRB(24, 24, 24, keyboardHeight);
        return SizedBox(
          height: isShowup ? 474 + keyboardHeight : 474,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Container(
                height: 60,
                color: colorScheme['primary'],
                alignment: Alignment.center,
                child: Text('PENGAJUAN KREDIT', style: textTheme.subtitle1.copyWith(
                  color: Colors.white,
                )),
              ),
              Padding(
                padding: modalPadding,
                child: child
              )
            ],
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textBaseline: TextBaseline.alphabetic,
        children: [
          MainTextField(
            focusNode: focusKeyboard1,
            onChanged: (val) {},
            hint: 'Pilih Ide bisnis Anda',
          ),
          const SizedBox(height: 24,),
          MainTextField(
            focusNode: focusKeyboard2,
            onChanged: (val) {},
            hint: 'Alasan Kenapa Memilih ide Bisnis ini',
            maxLines: 5,
          ),
          const SizedBox(height: 24,),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colorScheme['background2'],
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
                    color: colorScheme['primary'],
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
          ),
        ]
      ),
    )
  ).whenComplete(() {
    focusKeyboard1.dispose();
    focusKeyboard2.dispose();
  });
}


