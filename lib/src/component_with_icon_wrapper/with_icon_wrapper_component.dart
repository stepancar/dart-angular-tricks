

import 'package:angular/angular.dart';
import 'package:angular/meta.dart';

import 'icon.dart';

@Component(
  selector: 'with-icon-wrapper',
  styleUrls: ['with_icon_wrapper_component.css'],
  templateUrl: 'with_icon_wrapper_component.html',
  directives: [
    NgIf,
  ],
)
class WithIconWrapperComponent {

  @ContentChild(WithIconWrapperIconDirective)
  @visibleForTemplate
  WithIconWrapperIconDirective icon;

  bool get hasIcon => icon != null;
  
}
