import re

def extract_declarations(raw_content):
    """
    Extrait toutes les déclarations de traitement (<?...?>) en tête du fichier.
    Retourne (declarations_str, xml_body_str).
    """
    declarations = []
    content = raw_content.lstrip()

    while content.startswith("<?"):
        end = content.find("?>") + 2
        declarations.append(content[:end].strip())
        content = content[end:].lstrip()

    return "\n".join(declarations), content


def read_input_file(input_file):
    """Lit le fichier et sépare les déclarations du contenu XML."""
    with open(input_file, "r", encoding="utf-8") as f:
        raw_content = f.read()

    declaration, xml_content = extract_declarations(raw_content)
    return declaration, xml_content


def write_output_file(output_file, declaration, cleaned_xml):
    """Écrit les déclarations puis le contenu XML nettoyé."""
    with open(output_file, "w", encoding="utf-8") as f:
        if declaration:
            f.write(declaration + "\n")
        f.write(cleaned_xml)