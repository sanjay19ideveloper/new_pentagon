import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';




class PentagonScreen extends StatefulWidget {
  const PentagonScreen({Key? key}) : super(key: key);

  @override
  State<PentagonScreen> createState() => _PentagonScreenState();
}

class _PentagonScreenState extends State<PentagonScreen> {

  double _progress =0;
  late InAppWebViewController InAppwebviewController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body:Stack(
        children: [
          InAppWebView(
            onWebViewCreated : (InAppWebViewController controller){
              InAppwebviewController = controller;
            },
            onProgressChanged:(InAppWebViewController controller, int progress){
              setState(() {
                _progress = progress/100;
              });
            },
                            initialOptions: InAppWebViewGroupOptions(
                                crossPlatform: InAppWebViewOptions(
                                  mediaPlaybackRequiresUserGesture: true,
                                  useShouldOverrideUrlLoading: true,
                                ),
                                ios: IOSInAppWebViewOptions(
                                    allowsInlineMediaPlayback: true,
                                    allowsLinkPreview: false)),
                            initialUrlRequest: URLRequest(
                                url: Uri.parse('https://pentagon.schoolsonweb.com/'))),
                      ])
                    ),
    );
    
    
  }
}
