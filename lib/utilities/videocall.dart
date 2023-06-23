import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatelessWidget {
  VideoCall({super.key});
  // VideoCall({super.key});

  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "ae36c52a1baa4217b8d132eee52fde2a",
          channelName: "video",
          tempToken:
              "007eJxTYEjM4ylq3To/Kcb5ccq5pQpLvns6HEvl/hl89m/q52n35vkrMCSmGpslmxolGiYlJpoYGZonWaQYGhulpqaaGqWlpBolyvwsTGkIZGTY2dfMxMgAgSA+K0NZZkpqPgMDAPw9Ik4="),
      enabledPermission: [Permission.camera, Permission.microphone]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          AgoraVideoViewer(client: _client),
          AgoraVideoButtons(client: _client),
        ]),
      ),
    );
  }
}
