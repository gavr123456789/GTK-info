using Gtk;

[GtkTemplate (ui = "/org/gavr/calc/calc.ui")]
public class MyWidget : Window {

	public MyWidget () {
		this.show_all();
		this.destroy.connect (Gtk.main_quit);
	}
	[GtkCallback]
	private void button_clicked (Button button) {
		var temp = int.parse(button.label);
		button.set_label( @"$(++temp)");
	}
}

void main(string[] args) {
	Gtk.init (ref args);
	new MyWidget ();
	Gtk.main ();
}
