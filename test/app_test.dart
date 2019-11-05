@TestOn('browser')
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';
import 'package:dart_angular_tricks/component_with_icon_wrapper.dart';
import 'package:dart_angular_tricks/src/component_with_icon_wrapper/component_with_icon_wrapper_component.template.dart' as ng;

void main() {
  final testBed =
      NgTestBed.forComponent<WithIconWrapperComponent>(ng.WithIconWrapperComponentNgFactory);
  NgTestFixture<WithIconWrapperComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('heading', () {
    expect(fixture.text, contains('My First AngularDart App'));
  });

  // Testing info: https://webdev.dartlang.org/angular/guide/testing
}
