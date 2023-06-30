import 'dart:async';

import 'package:tut_app/domain/models.dart';
import 'package:tut_app/presentation/base/base_view_model.dart';

import '../../resources/assets_manager.dart';
import '../../resources/string_manager.dart';

class OnboardingViewModel extends BaseViewModel
    with OnboardingViewModelInputs, OnboardingViewModelOutputs {

   final StreamController _streamController=StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
   int _currentIndex = 0;

   @override
  void dispose() {
    _streamController.close();


   }

  @override
  void start() {
    _list = _getSliderData();
    _postDataToView();
   }

  @override
  int goNext() {
    int nextIndex=++_currentIndex;
    if(nextIndex==_list.length){
      nextIndex=0;
    }
    return nextIndex;  }

  @override
  int goPrevious() {
    int previousIndex=--_currentIndex;
    if(previousIndex<0){
      previousIndex=_list.length-1;
    }
    return previousIndex;  }

  @override
  void onPageChanged(int index) {
     _currentIndex=index;
     _postDataToView();
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject =>_streamController.sink;

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((SliderViewObject) => SliderViewObject);

  //private function onboarding

   _postDataToView(){
     inputSliderViewObject.add(SliderViewObject(_list[_currentIndex],_list.length,_currentIndex));
   }

  List<SliderObject> _getSliderData() =>
      [
        SliderObject(AppString.onboardingTitle1, AppString.onboardingSubTitle1,
            ImageAssets.onboardingLogo1),
        SliderObject(AppString.onboardingTitle2, AppString.onboardingSubTitle2,
            ImageAssets.onboardingLogo2),
        SliderObject(AppString.onboardingTitle3, AppString.onboardingSubTitle3,
            ImageAssets.onboardingLogo3),
        SliderObject(AppString.onboardingTitle4, AppString.onboardingSubTitle4,
            ImageAssets.onboardingLogo4),
      ];


}

abstract class OnboardingViewModelInputs {
  int goNext();

  int goPrevious();

  void onPageChanged(int index);

  Sink get inputSliderViewObject;
}

abstract class OnboardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

