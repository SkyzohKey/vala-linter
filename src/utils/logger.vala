namespace ValaLinter {
  class Logger : Object {
    private static void log (string type, string message, bool full = false) {
    	if (Posix.isatty (stdout.fileno()) == false) {
    		stdout.printf (@"$type: $message\n");
    		return;
    	}

    	var success = "\x1B[32m\x1B[1m";
    	var info = "\x1B[34m\x1B[1m";
    	var error = "\x1B[31m\x1B[1m";
    	var normal = "\x1B[0m";

    	if (full) {
    		normal = "";
    	}

    	if (type.index_of("OK") == 0) {
    		stdout.printf (@"$success$type:$normal $message\n");
    	} else if (type == "I") {
    		stdout.printf (@"$info$type:$normal $message\n");
    	} else if (type == "E") {
    		stderr.printf (@"$error$type:$normal $message\n");
    	}
    }

    public static void info (string message) {
      log ("I", message, false);
    }

    public static void error (string message) {
      log ("E", message, true);
    }

    public static void success (string message) {
      log ("OK", message, false);
    }
  }
}
