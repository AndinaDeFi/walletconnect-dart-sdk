import 'package:walletconnect_dart/src/session/wallet_connect_session.dart';

abstract class SessionStorage {
  // Stores a single session
  Future store(WalletConnectSession session);

  /// Fetches the only stored session (for cases where only a single session
  /// needs to be stored, mostly on dapps)
  Future<WalletConnectSession?> getSession();

  /// Fetches a session from many stored sessions. The sessionId identifies
  /// the session in a unique way. [WalletConnectSession.toUri] can be good candidate.
  Future<WalletConnectSession?> getSessionById(String sessionId);

  /// Removes a session from many stored sessions.
  Future removeSession(WalletConnectSession session);
}
