// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:args/command_runner.dart';
//import 'package:flutter_tools/src/android/android_sdk.dart';
//import 'package:flutter_tools/src/android/android_studio.dart';
//import 'package:flutter_tools/src/base/common.dart';
//import 'package:flutter_tools/src/base/config.dart';
//import 'package:flutter_tools/src/base/context.dart';
//import 'package:flutter_tools/src/base/logger.dart';
//import 'package:flutter_tools/src/build_info.dart';
//import 'package:flutter_tools/src/cache.dart';
//import 'package:flutter_tools/src/commands/config.dart';
//import 'package:flutter_tools/src/version.dart';
import 'package:mockito/mockito.dart';
import 'package:sylph/src/base/reporting/reporting.dart';
import 'package:sylph/src/commands/config.dart';
import 'package:test/test.dart';
import 'package:tool_base/tool_base.dart';
import 'package:tool_base_test/tool_base_test.dart';

import '../base/reporting/analytics_test.dart';
import '../src/common.dart';
import '../src/mocks.dart';
//import '../src/context.dart';

void main() {
//  MockAndroidStudio mockAndroidStudio;
//  MockAndroidSdk mockAndroidSdk;
//  MockFlutterVersion mockFlutterVersion;
FakeUsage fakeUsage;

  setUpAll(() {
//    Cache.disableLocking();
  });

  setUp(() {
//    mockAndroidStudio = MockAndroidStudio();
//    mockAndroidSdk = MockAndroidSdk();
//    mockFlutterVersion = MockFlutterVersion();
  fakeUsage=FakeUsage();
  });

  group('config', () {
    testUsingContext('machine flag', () async {
      final BufferLogger logger = context.get<Logger>();
      final ConfigCommand command = ConfigCommand();
      await command.handleMachine();

      expect(logger.statusText, isNotEmpty);
      final dynamic jsonObject = json.decode(logger.statusText);
      expect(jsonObject, isMap);
      print('jsonObject=$jsonObject');

//      expect(jsonObject.containsKey('android-studio-dir'), true);
//      expect(jsonObject['android-studio-dir'], isNotNull);
//
//      expect(jsonObject.containsKey('android-sdk'), true);
//      expect(jsonObject['android-sdk'], isNotNull);
    }, overrides: <Type, Generator>{
//      AndroidStudio: () => mockAndroidStudio,
//      AndroidSdk: () => mockAndroidSdk,
//    Usage :()=>FakeUsage(),
    });

//    testUsingContext('Can set build-dir', () async {
//      final ConfigCommand configCommand = ConfigCommand();
//      final CommandRunner<void> commandRunner = createTestCommandRunner(configCommand);
//
//      await commandRunner.run(<String>[
//        'config',
//        '--build-dir=foo'
//      ]);
//
//      expect(getBuildDirectory(), 'foo');
//    });
//
//    testUsingContext('throws error on absolute path to build-dir', () async {
//      final ConfigCommand configCommand = ConfigCommand();
//      final CommandRunner<void> commandRunner = createTestCommandRunner(configCommand);
//
//      expect(() => commandRunner.run(<String>[
//        'config',
//        '--build-dir=/foo'
//      ]), throwsA(isInstanceOf<ToolExit>()));
//    });
//
//    testUsingContext('allows setting and removing feature flags', () async {
//      final ConfigCommand configCommand = ConfigCommand();
//      final CommandRunner<void> commandRunner = createTestCommandRunner(configCommand);
//
//      await commandRunner.run(<String>[
//        'config',
//        '--enable-web',
//        '--enable-linux-desktop',
//        '--enable-windows-desktop',
//        '--enable-macos-desktop'
//      ]);
//
//      expect(Config.instance.getValue('enable-web'), true);
//      expect(Config.instance.getValue('enable-linux-desktop'), true);
//      expect(Config.instance.getValue('enable-windows-desktop'), true);
//      expect(Config.instance.getValue('enable-macos-desktop'), true);
//
//      await commandRunner.run(<String>[
//        'config', '--clear-features',
//      ]);
//
//      expect(Config.instance.getValue('enable-web'), null);
//      expect(Config.instance.getValue('enable-linux-desktop'), null);
//      expect(Config.instance.getValue('enable-windows-desktop'), null);
//      expect(Config.instance.getValue('enable-macos-desktop'), null);
//
//      await commandRunner.run(<String>[
//        'config',
//        '--no-enable-web',
//        '--no-enable-linux-desktop',
//        '--no-enable-windows-desktop',
//        '--no-enable-macos-desktop'
//      ]);
//
//      expect(Config.instance.getValue('enable-web'), false);
//      expect(Config.instance.getValue('enable-linux-desktop'), false);
//      expect(Config.instance.getValue('enable-windows-desktop'), false);
//      expect(Config.instance.getValue('enable-macos-desktop'), false);
//    }, overrides: <Type, Generator>{
////      AndroidStudio: () => mockAndroidStudio,
////      AndroidSdk: () => mockAndroidSdk,
//    });
//
//    testUsingContext('displays which config settings are available on stable', () async {
//      final BufferLogger logger = context.get<Logger>();
//      when(mockFlutterVersion.channel).thenReturn('stable');
//      final ConfigCommand configCommand = ConfigCommand();
//      final CommandRunner<void> commandRunner = createTestCommandRunner(configCommand);
//
//      await commandRunner.run(<String>[
//        'config',
//        '--enable-web',
//        '--enable-linux-desktop',
//        '--enable-windows-desktop',
//        '--enable-macos-desktop'
//      ]);
//
//      await commandRunner.run(<String>[
//        'config',
//      ]);
//
//      expect(logger.statusText, contains('enable-web: true (Unavailable)'));
//      expect(logger.statusText, contains('enable-linux-desktop: true (Unavailable)'));
//      expect(logger.statusText, contains('enable-windows-desktop: true (Unavailable)'));
//      expect(logger.statusText, contains('enable-macos-desktop: true (Unavailable)'));
//    }, overrides: <Type, Generator>{
////      AndroidStudio: () => mockAndroidStudio,
////      AndroidSdk: () => mockAndroidSdk,
////      FlutterVersion: () => mockFlutterVersion,
//    });
  });
}

//class MockAndroidStudio extends Mock implements AndroidStudio, Comparable<AndroidStudio> {
//  @override
//  String get directory => 'path/to/android/stdio';
//}
//
//class MockAndroidSdk extends Mock implements AndroidSdk {
//  @override
//  String get directory => 'path/to/android/sdk';
//}
//
//class MockFlutterVersion extends Mock implements FlutterVersion {}
