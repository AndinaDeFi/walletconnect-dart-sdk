import 'package:walletconnect_dart/src/walletconnect.dart';

/// A generic interface that can be implemented to provide various provider
/// implementations.
abstract class WalletConnectProvider {
  final WalletConnect connector;

  WalletConnectProvider({required this.connector});

  /// Get the chain id.
  String get chainId;
}
