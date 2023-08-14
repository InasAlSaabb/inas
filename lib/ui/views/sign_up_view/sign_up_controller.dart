import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_templete/core/data/models/apis/specialmodel.dart';
import 'package:flutter_templete/core/services/base_controller.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';

class SignUpController extends BaseController {
  List<SpecializationModel> special = [
    SpecializationModel(id: 1, name: tr("key_it"), category: "eng"),
    SpecializationModel(id: 2, name: tr("key_medicine"), category: "eng"),
    SpecializationModel(id: 3, name: tr("key_dentist"), category: "eng"),
    SpecializationModel(
        id: 4, name: tr("key_faculty_of_pharmac"), category: "mid"),
    SpecializationModel(id: 5, name: tr("key_arch"), category: "mid"),
    SpecializationModel(id: 6, name: tr("key_nurs"), category: "mid"),
  ];
}
