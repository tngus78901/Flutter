// dart에서 기본적으로 제공하는 라이브러리를 import합니다.
import 'dart:math';

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  print(nums[0]);
  print(nums[1]);
  print(nums[2]);
  print(nums[3]);
  //print(nums[5]);

// map 리터럴은 중괄호 이다
  Map<String, dynamic> user = {
    'id': 1,
    'username': 'cos',
  };
  // key 연산은 인덱스 연산자를 활용한다.
  print(user['id']);
  print(user['username']);

  // set : 중복허용하지 않고 순서가 없다. 필수암기

  ///
  // set 리터럴은 중괄호를 사용한다.
  Set<int> lotto = {};

  Random r = Random();
  // 0 ~ 44(index번호) --> 1 ~ 45(필요한 번호)
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);

  // 반드시 6개의 숫자가 나올 수 있게 보장하려면 어떻게 만들 수 있을까?
  // while 문으로 코드 수정해 보기 - 도전과제
  print('---------------------------');
  // lotto갯수가 7개 미만일 때까지 반복하라
  while (true) {}
  print(lotto);
  print(lotto.runtimeType);
  // --> Set --> List 변경하고자 한다면
  print(lotto.toList());
  List<int> lottoList = lotto.toList();
  // Set 자료 구조에 정렬이라는 기본개념은 없다!
  lottoList.sort(); // 정렬이라는 기능을 쓰고자 할 때
  print(lottoList);
}
