import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../hompage/model/all_gov_service_model.dart';

class ServiceData extends ChangeNotifier{

  late InAppWebViewController _webViewController;
  TextEditingController searchController = TextEditingController();

  List<Bookmark> bookmarks = [];

  TextControllerModal  textControllerModel  = TextControllerModal(
    titleTxt : TextEditingController(text: ''),
  );

  void setWebViewController(InAppWebViewController controller){
    _webViewController = controller;

  }

  void reloadWebView() {
    if (_webViewController != null) {
      _webViewController.reload();
    }
  }
  void goBack() {
    if (_webViewController != null) {
      _webViewController.goBack();
    }
  }

  void goHome(String url) {
    _webViewController.loadUrl(
      urlRequest: URLRequest(
        url: WebUri(url),
      ),
    );
  }

  void addBookmark(String url) {
    bookmarks.add(Bookmark(title: textControllerModel.titleTxt.text, url: url));
    notifyListeners();
    textControllerModel.titleTxt.clear();
  }

  void goForward() {
    if (_webViewController != null) {
      _webViewController.goForward();
    }
  }





}