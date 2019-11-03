@TestOn('browser')
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';
import 'package:dart_angular_tricks/panel.dart';
import 'package:dart_angular_tricks/src/panel/panel_component.template.dart' as ng;

void main() {
  final testBed =
      NgTestBed.forComponent<PanelComponent>(ng.PanelComponentNgFactory);
  NgTestFixture<PanelComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('heading', () {
    expect(fixture.text, contains('My First AngularDart App'));
  });

  // Testing info: https://webdev.dartlang.org/angular/guide/testing
}
