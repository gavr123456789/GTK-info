using Gtk;

public class Example : Window{
    Button button1;
    Button button2;

    public Example(){
        this.title = "Button Example";
        this.destroy.connect(Gtk.main_quit);

        var box = new Box(Gtk.Orientation.VERTICAL, 5);
        this.add(box);
        //Button 1
        button1 = new Button();
        button1.set_label("Counter Button");
        button1.clicked.connect(on_button1_clicked); // Connect to func
        box.add(button1);

        //Button 2
        button2 = new Button.with_label("Console print Button");
        button2.clicked.connect((source) => {       // Connect to labmda
            print(@"$(source.label) clicked!\n");
        });
        box.add(button2);
    }

    void on_button1_clicked(Button button){
        var counter = int.parse(button.label);
        button.set_label(@"$(++counter)");
    }
}

void main(string[] args){
    Gtk.init(ref args);
    var window = new Example();
    window.show_all();
    Gtk.main();
}