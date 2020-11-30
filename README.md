![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/AJARProject/AJUI_Button?include_prereleases) ![GitHub top language](https://img.shields.io/github/languages/top/AJARProject/AJUI_Button)

# AJUI_Button

## NEW VERSION 2.0.0-BETA1

### !!! BREAKING CHANGES !!!

#### In the new 2.0.0-beta1 some breaking changes have been introduced. All the class functions have been changed. See the documentation [Class Functions](https://github.com/AJARProject/AJUI_Button/wiki/Class-Functions).

##### For compatibiliy reasons, the old functions have not been changes if you are not using the class.

---

AJUI Button is a component made for 4D that help you to create and display nice buttons in your forms. You can fully customize your buttons and have templates to easily use the same style everywhere in your application.

A button is created via the language and will be displayed in a picture element in your form. The button is stored in an object that is an instance of a button.

### AJUI components library

[AJUI_Library](https://github.com/AJARProject/AJUI_Library)

### Documentation

[Wiki AJUI_Button](https://github.com/AJARProject/AJUI_Button/wiki)

**Example**

```4d
    Case of
      : (Form event=On Load)
        Form.save_btn:=AJUI_Button.new()

        Form.save_btn.name("save_btn")
        Form.save_btn.composition("text")

        Form.save_btn.label("Save")
        Form.save_btn.backgroundColor(AJUI_btn_default;"white")
        Form.save_btn.borderColor(AJUI_btn_default;"#47A1F1")
        Form.save_btn.borderSize(AJUI_btn_default;2)
        Form.save_btn.fontStyle(AJUI_btn_default;"none")
        Form.save_btn.fontColor(AJUI_btn_default;"#47A1F1")

        Form.save_btn.backgroundColor(AJUI_btn_hover;"#47A1F1")
        Form.save_btn.borderColor(AJUI_btn_hover;"white")
        Form.save_btn.borderSize(AJUI_btn_hover;2)
        Form.save_btn.fontStyle(AJUI_btn_hover;"Bold")
        Form.save_btn.fontColor(AJUI_btn_hover;"white")
    End case

    Form.save_btn.draw()
```

<a href="http://www.youtube.com/watch?feature=player_embedded&v=Sop5dR2VQrk
" target="_blank"><img src="http://img.youtube.com/vi/Sop5dR2VQrk/0.jpg"
alt="AJUI_Button Example" width="480" height="360" border="10" /></a>

### Version

2.0.0-beta1+Build183 // Sat, 28 Nov 2020 13:37:14 GMT

Minimal 4D Version :

- version <= 1.3.2 : 18 (using formula member function)
- version > 1.3.2 18 R3/4 (using class)

### Questions?

If you have any question, you can ask them directly on github or write to info@ajar.ch
