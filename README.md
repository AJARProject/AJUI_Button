# AJUI_Button

AJUI Button is a component made for 4D that help you to create and display nice buttons in your forms. You can fully customize your buttons and have templates to easily use the same style everywhere in your application.

A button is created via the language and will be displayed in a picture element in your form. The button is stored in an object that is an instance of a button.

### Documentation

[Wiki AJUI_Button](https://github.com/AJARProject/AJUI_Button/wiki)

**Example**

    Case of
      : (Form event=On Load)
        Form.save_btn:=New AJUI_Button

        Form.save_btn.Name("save_btn")
        Form.save_btn.Composition("text")

        Form.save_btn.Label("Save")
        Form.save_btn.BGColor(AJUI_btn_default;"white")
        Form.save_btn.BorderColor(AJUI_btn_default;"#47A1F1")
        Form.save_btn.BorderSize(AJUI_btn_default;2)
        Form.save_btn.FontStyle(AJUI_btn_default;"none")
        Form.save_btn.FontColor(AJUI_btn_default;"#47A1F1")

        Form.save_btn.BGColor(AJUI_btn_hover;"#47A1F1")
        Form.save_btn.BorderColor(AJUI_btn_hover;"white")
        Form.save_btn.BorderSize(AJUI_btn_hover;2)
        Form.save_btn.FontStyle(AJUI_btn_hover;"Bold")
        Form.save_btn.FontColor(AJUI_btn_hover;"white")
    End case

    Form.save_btn.Draw()

<a href="http://www.youtube.com/watch?feature=player_embedded&v=Sop5dR2VQrk
" target="_blank"><img src="http://img.youtube.com/vi/Sop5dR2VQrk/0.jpg"
alt="AJUI_Button Example" width="480" height="360" border="10" /></a>

### Version

1.3.2-Build170"  // Fri, 12 Jun 2020 14:44:31 GMT

Minimal 4D Version : 
 - 18 (using formula member function)
 - 18 R3 (using class)
 
### Questions?

If you have any question, you can ask them directly on github or write to info@ajar.ch
