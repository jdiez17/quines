if __name__ == '__main__':
    with open("quine.asm") as f:
        with open("quine.small.asm", "w") as fw:
                lines = f.readlines()
                lines = map(lambda line: line.strip().replace('\t', '').replace('\n', ''), lines)
                fw.write('\\'.join(lines))
