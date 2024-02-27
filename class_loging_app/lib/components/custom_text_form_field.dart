import 'package:class_loging_app/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  const CustomTextFormField(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: small_gap),
        TextFormField(
          // 1. 느낌표는 null이 절대 아니다(컴파일러에게 알려줌)
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, //값이 없으면 Please enter some text 화면에 표시
          obscureText: text == "Password" ? true : false,
          // 해당 TextFormField가 비밀번호 양식이면 **** 처리 해주기
          decoration: InputDecoration(
              hintText: 'Enter $text',
              enabledBorder: OutlineInputBorder(
                //1. enableBorder는 첫 화면시 기본 formfield 디자인
                borderRadius: BorderRadius.circular(20.0),
              ),
              focusedBorder: OutlineInputBorder(
                //2. 손가락 터치 시 ... 디자인
                borderRadius: BorderRadius.circular(20.0),
              ),
              errorBorder: OutlineInputBorder(
                // 3. 에러 발생시 ... 디자인
                borderRadius: BorderRadius.circular(20.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                // 4. 에러가 발생 후 손가락 터치시 ... 디자인
                borderRadius: BorderRadius.circular(20.0),
              )),
        ),
      ],
    );
  }
}
