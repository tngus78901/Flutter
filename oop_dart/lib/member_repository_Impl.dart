import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';

class MemoryMemberRepositoryImpl implements MemberRepository {
  // map은 {}중괄호로 선언하면 된다
  Map<num, Member> memberStore = {};

  // 변수, 조건문, 반복문, 함수 .. 기능 구현 하기
  @override
  Member? findById(num memberId) {
    // map 구조에 데이터를 찾는 문법은?
    Member? findMember = memberStore[memberId];
    return findMember;
  }

  @override
  void save(Member member) {
    memberStore[member.id] = member;
    print('member 저장 처리 완료');
  }
}
