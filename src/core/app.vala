namespace ValaLinter {
  public struct Options {
    public bool display_version;
    public string config_path;
    public string output_path;
    public string lint_profile;
  }

  public class App : Object {
    private ValaLinter.Options opts { get; protected set; }

    public App (ValaLinter.Options opts) {
      this.opts = opts;

      if (this.opts.display_version) {
        Logger.info (@"$(ValaLinter.APP_NAME) version $(ValaLinter.APP_VERSION)");
        return;
      }

      Logger.success (@"$(ValaLinter.APP_NAME) started!");
    }
  }
}
