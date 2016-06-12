using ValaLinter;

namespace ValaLinter {
  private static const string APP_NAME    = "Vala Linter";
  private static const string APP_VERSION = "0.1.0";

  // Options variables.
  private static bool opt_version        = false;
  private static string opt_config_path  = null;
  private static string opt_output_path  = null;
  private static string opt_lint_profile = null;

  private const GLib.OptionEntry[] OPTIONS = {
    { "version", 'v', 0, OptionArg.NONE, ref opt_version, "Displays app version", null },
    { "config", 'c', 0, OptionArg.FILENAME, ref opt_config_path, "Configuration file path", "config.json" },
    { "output", 'o', 0, OptionArg.FILENAME, ref opt_output_path, "Path where to save report", null },
    { "profile", 'p', 0, OptionArg.STRING, ref opt_output_path, "Linter profile to use", "(default, elementary)" },
    { null } // List terminator
  };

  static int main (string[] args) {
    var opt_context = new OptionContext (@"- $APP_NAME");
  	try {
  		opt_context.set_summary ("A simple Vala code linter tool, written in Vala!");
  		opt_context.set_help_enabled (true);
  		opt_context.add_main_entries (OPTIONS, null);
  		opt_context.parse (ref args);
  	} catch (OptionError e) {
  		Logger.error (@"$(e.message)");
  		Logger.info (@"Run '$(args[0]) --help' to see a full list of available options.");
  		return 1;
  	}

    ValaLinter.Options opts = ValaLinter.Options () {
      display_version = opt_version,
      config_path = opt_config_path,
      output_path = opt_output_path,
      lint_profile = opt_lint_profile
    };

    new ValaLinter.App (opts);
    return 0;
  }
}
