from pathlib import Path

def extract_links_from_todo(filepath: str, return_task_id: bool = False) -> list[str]:
    """Extract links (URLs) from under the '## TODO' section."""
    links = []
    in_todo = False
    with open(filepath, 'r', encoding='utf-8') as f:
        for line in f:
            stripped = line.strip()

            # Detect the TODO section header
            if stripped.startswith('## TODO'):
                in_todo = True
                continue

            
            if in_todo:
                if not stripped.startswith('-'):
                    break
                url = stripped[1:].strip()
                task_id = url.split('/')[-1]
                links.append(task_id if return_task_id else url)
    return links

def read_answers_filenames(filepath: str) -> list[str]:
    folder = Path(filepath)
    names = []
    for p in folder.iterdir():
        if p.is_file():
            name = p.name.split('.')[0]
            names.append(name)
    return names

if __name__ == '__main__':
    links = extract_links_from_todo('./README.md', True)
    names = read_answers_filenames('./answers')
    intersect = [link for link in links for name in names if name==link]
    print(intersect)