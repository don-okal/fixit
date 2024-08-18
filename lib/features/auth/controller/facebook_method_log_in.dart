import 'dart:async';
import 'dart:io'; // For SocketException

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

import '../../home/presentation/views/home_view.dart';

Future<void> signInWithFacebook(BuildContext context) async {
  try {
    // Check internet connection first
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      _showAuthFailureBottomSheet(context,
          'No internet connection. Please check your network settings and try again.');
      return;
    }

    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      Get.to(
        const HomeView(),
      );
    } else {
      _handleFacebookError(context, result);
    }
  } on SocketException {
    _showAuthFailureBottomSheet(context,
        'No internet connection. Please check your network settings and try again.');
  } on TimeoutException {
    _showAuthFailureBottomSheet(context,
        'The request timed out. Please check your internet connection and try again.');
  } catch (e) {
    _showAuthFailureBottomSheet(
        context, 'An unexpected error occurred: ${e.toString()}');
  }
}

void _handleFacebookError(BuildContext context, LoginResult result) {
  String errorMessage;
  switch (result.status) {
    case LoginStatus.cancelled:
      errorMessage = 'Login was cancelled. Please try again.';
      break;
    case LoginStatus.failed:
      errorMessage = 'Facebook login failed. Please try again later.';
      break;
    case LoginStatus.operationInProgress:
      errorMessage = 'Login operation is already in progress. Please wait.';
      break;
    default:
      errorMessage = 'An unknown error occurred. Please try again.';
  }
  _showAuthFailureBottomSheet(context, errorMessage);
}

void _showAuthFailureBottomSheet(BuildContext context, String message) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Authentication Failed',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              message,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        ),
      );
    },
  );
}
