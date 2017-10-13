import glob



def file_get_contents(filename):
    with open(filename) as f:
        return f.read()

res = file_get_contents('android.tl')+file_get_contents('end-to-end.tl')
for dir in sorted(glob.glob('l*')):
    res += "==="+str(int(dir[1:]))+"===\n"+file_get_contents(dir+"/schema.tl")

with open('all.tl', 'w+') as f:
    f.write(res)
