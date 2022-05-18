#include <iostream>

using std::cout;
using std::endl;
using std::string;

class TextStyle {
public:
    string fontFamily = "Arial";
    int fontSize = 20;

    /* Construtores (sobrecarga de métodos) */

    // Os parâmetros fontFamily e fontSize são opcionais
    TextStyle(string fontFamily = "Arial", int fontSize = 20)
    {
        init(fontFamily, fontSize);
    }

    // Os parâmetros fontFamily e fontSize são opcionais
    TextStyle(int fontSize = 20, string fontFamily = "Arial")
    {
        init(fontFamily, fontSize);
    }

private:
    void init(string fontFamily, int fontSize)
    {
        this->fontFamily = fontFamily;
        this->fontSize = fontSize;
    }
};

class Text {
    string text;
    TextStyle *style;
public:
    // Construtor
    Text(string text, TextStyle *style)
    {
        this->text = text;
        this->style = style;
        gerarParagrafo();
    }

private:
    void gerarParagrafo()
    {
        cout << "<p style=\"font-family: " << style->fontFamily << "; " <<
            "fontSize: = " << style->fontSize << "\">" <<
            text << "</p>" << endl;
    }
};

int main()
{
    cout << "<html>" << endl;
    cout << "<head>" << endl << "</head>" << endl;
    cout << "<body>" << endl;

    Text *texto1 = new Text(
        "Ola Mundo!",
        new TextStyle(
            "Times New Roman",
            12
        )
    );

    Text *texto2 = new Text(
        "Boa noite!",
        new TextStyle(16, "Consolas")
    );

    cout << "</body>" << endl;
    cout << "</html>" << endl;
}
