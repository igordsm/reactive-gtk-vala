

class LoginForm : Gtk.Grid {
    construct {
        width_request = 300;
        margin = 10;
        column_homogeneous = false;
        expand = false;
        valign = Gtk.Align.CENTER;
        halign = Gtk.Align.CENTER;
        
        var username_field = new Gtk.Entry () {
            hexpand = true,
            margin = 4
        };
        var password_field = new Gtk.Entry () {
            hexpand = true,
            margin = 4
        };
        var validation_warning = new Gtk.Label ("") {
            wrap = true,
            height_request = 50
        };
        var login_btn = new Gtk.Button.with_label ("Login") {
            expand = false,
            halign = Gtk.Align.END
        };
        attach (new Gtk.Label ("Username"), 0, 0);
        attach (username_field, 1, 0);
        attach (password_field, 1, 1);
        attach (new Gtk.Label ("Password"), 0, 1);
        attach (validation_warning, 1, 2);
        attach (login_btn, 1, 3);

        show_all ();
    }
}

class Application : Gtk.Application {
    public Application () {
		Object(application_id: "testing.my.application",
				flags: ApplicationFlags.FLAGS_NONE);
	}

	protected override void activate () {
	    
	    var win = new Gtk.ApplicationWindow (this);
	    win.add (new LoginForm ());
        win.show ();
	}
	
	public static int main(string[] args) {
	    var app = new Application ();
	    app.run (args);
	    
	    return 0;
	}
}

