public class Challenge1 : Gtk.Application {
    public Challenge1 () {
        Object (
            application_id: "com.colinkiama.challenge.one",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        Gtk.ApplicationWindow window = new Gtk.ApplicationWindow (this);
        window.set_default_size (640, 640);
        window.title = "r/valalang challenge #1";


        Gtk.Image logo_image = new Gtk.Image.from_resource ("/vala-logo.png");
        Gtk.Label label = new Gtk.Label ("Time since birth:");

        Gtk.Box box = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);
        box.pack_start (logo_image);
        box.pack_start (label);

        window.add (box);
        window.show_all ();
    }

    public static int main (string[] args) {
        Challenge1 app = new Challenge1 ();
        return app.run (args);
    }
}
