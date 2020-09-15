using Gtk;

public class Example : Window
{
    public Example()
    {
        this.title = "Box";
        this.destroy.connect(Gtk.main_quit);

        var vbox = new Box(Gtk.Orientation.VERTICAL, 5);
        vbox.set_spacing(5);
        this.add(vbox);

        vbox.add(new Button.with_label("1"));
        vbox.pack_end(new Button.with_label("2"), true, false, 25);

        var hbox = new Box(Gtk.Orientation.HORIZONTAL, 5);
        hbox.set_spacing(5);
        vbox.add(hbox);

		hbox.add(new Button.with_label("3"));
		hbox.pack_end(new Button.with_label("4"), true, false, 25);
    }

    public static int main(string[] args)
    {
        Gtk.init(ref args);

        var window = new Example();
        window.show_all();

        Gtk.main();

        return 0;
    }
}