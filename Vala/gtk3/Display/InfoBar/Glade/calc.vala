using Gtk;

[GtkTemplate (ui = "/org/gavr/calc/calc.ui")]
public class MyWidget : Window {

	[GtkChild]
	Gtk.InfoBar infobar;
	[GtkChild]
	Gtk.InfoBar infobar2;
	[GtkChild]
	Gtk.Label infobar_label;
	[GtkChild]
	Gtk.Image infobar_icon;
	[GtkChild]
	Gtk.Button confirm;
	

	public MyWidget () {
		this.show_all();
		this.destroy.connect (Gtk.main_quit);
	}

	[GtkCallback]
	private void info_clicked (Button button) {
		showinfobar (INFO, "More you know");
	}

	[GtkCallback]
	private void warning_clicked (Button button) {
		showinfobar (WARNING, "All bad!");
	}

	[GtkCallback]
	private void question_clicked (Button button) {
		showinfobar (QUESTION, "Question?");
	}

	[GtkCallback]
	private void error_clicked (Button button) {
		showinfobar (ERROR, "SIGSEGV");
	}



	[GtkCallback]
	private void other_clicked(Button button){
		infobar2.set_revealed (true);

	}


	[GtkCallback]
	private void confirm_clicked (Button btn){
		confirm.set_label("Confirmed");

		Timeout.add_seconds (1, () => {
			infobar2.set_revealed(false);
			confirm.set_label("Confirm");
			return false;
		});
	}
	

	public void hideinfobar () {
		infobar.set_revealed (false);
		infobar_label.set_label ("");
	}

	public void showinfobar (MessageType type, string message) {
		infobar.set_message_type (type);
		infobar_label.set_label (message);

		string icon = "";
		switch (type) {
			case INFO:
				icon = "dialog-information-symbolic";
				break;
			case WARNING:
				icon = "dialog-warning-symbolic";
				break;
			case QUESTION:
				icon = "dialog-question-symbolic";
				break;
			case ERROR:
				icon = "dialog-error-symbolic";
				break;
			case OTHER:
			default:
				icon = "missing-image-symbolic";
				break;
		}

		infobar_icon.set_from_icon_name (icon, LARGE_TOOLBAR);
		infobar.set_revealed (true);

		// Timeout
		Timeout.add_seconds (1, () => {
			this.hideinfobar ();
			return false;
		});
	}
}

void main(string[] args) {
	Gtk.init (ref args);
	new MyWidget ();
	Gtk.main ();
}
