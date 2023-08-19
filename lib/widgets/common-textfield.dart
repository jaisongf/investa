import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class CommonTextFormField extends StatelessWidget {
  final String? labeltxt;
  final Color? labeltxtColor;
  final double? labeltxtSize;
  final FontWeight? labeltxtFontWeight;
  final Color? focuBorColor;
  final double? focuBorWid;
  final Color? enaBorColor;
  final double? enaBorWid;
  final double? borderRadiusTL;
  final double? borderRadiusBR;
  final double? contentPadHor;
  final double? contentPadHVer;
  final TextEditingController? controllerTxt;
  final FormFieldValidator<String>? validatioFunction;
  final int? maxLine;
  final List<TextInputFormatter>? inputFormatter;
  final bool? enabled;
  final Function? onChanged;
  final TextInputType? keyborType;
  final bool? dropdownIcon;
  final Color? textFormBG;
  final String? prefixIc;

  const CommonTextFormField(
      {Key? key,
      this.labeltxt,
      this.labeltxtColor,
      this.focuBorColor,
      this.focuBorWid,
      this.enaBorColor,
      this.enaBorWid,
      this.borderRadiusTL,
      this.borderRadiusBR,
      this.contentPadHor,
      this.contentPadHVer,
      this.labeltxtFontWeight,
      this.labeltxtSize,
      this.controllerTxt,
      this.validatioFunction,
      this.maxLine,
      this.inputFormatter,
      this.enabled,
      this.onChanged,
      this.keyborType,
      this.dropdownIcon,
      this.prefixIc,
      this.textFormBG})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: textFormBG,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadiusTL!),
            topRight: Radius.circular(borderRadiusBR!),
            bottomLeft: Radius.circular(borderRadiusBR!),
            bottomRight: Radius.circular(borderRadiusTL!)),
      ),
      child: TextFormField(
        keyboardType: keyborType,
        controller: controllerTxt,
        maxLines: maxLine,
        inputFormatters: inputFormatter,
        enabled: enabled,
        onChanged: (String? value) {
          if (onChanged != null) {
            onChanged!(value);
          }
        },
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                prefixIc!,
                width: 8,
                height: 8,
                color: Color(0xFFB0B1C3),
              ),
            ),
            suffixIcon: dropdownIcon != null && dropdownIcon!
                ? const Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                  )
                : null,
            labelText: labeltxt!,
            labelStyle: TextStyle(
                color: labeltxtColor!,
                fontSize: labeltxtSize,
                fontWeight: labeltxtFontWeight),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: enaBorColor!, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: focuBorColor!, width: focuBorWid!),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadiusTL!),
                  topRight: Radius.circular(borderRadiusBR!),
                  bottomLeft: Radius.circular(borderRadiusBR!),
                  bottomRight: Radius.circular(borderRadiusTL!),
                )),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: enaBorColor!, width: enaBorWid!),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadiusTL!),
                  topRight: Radius.circular(borderRadiusBR!),
                  bottomLeft: Radius.circular(borderRadiusBR!),
                  bottomRight: Radius.circular(borderRadiusTL!),
                )),
            contentPadding: EdgeInsets.symmetric(
                horizontal: contentPadHor!, vertical: contentPadHVer!)),
        onSaved: (String? value) {},
        validator: validatioFunction,
      ),
    );
  }
}
