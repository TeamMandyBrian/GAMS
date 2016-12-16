import subprocess as sp
import os

#dataDir = "C:/Users/holz501/ws_java/gdopt/data/IEEE14_0"
#dataDir = "C:/Users/holz501/ws_java/gdopt/data/IEEE14_1"
#dataDir = "C:/Users/holz501/ws_java/gdopt/data/RTS96springwday1_0"
dataDir = "C:/Users/holz501/ws_java/gdopt/data/RTS96springwday1_1"
#dataDir = "C:/Users/holz501/ws_java/gdopt/data/RTS96springwday1-3"
#dataSubDirHeader = "ieee14"
#dataSubDirHeader = "RTS96springwday1-3"
dataSubDirHeader = "scenario"
numInstances = 100
dataName = "pscopf_data.gms"
modelName = "MyGams.gms"
modelDir = "C:/Users/holz501/ws_java/gdopt/src/main/gms/pscopf"
solName0 = "solution0.txt"
solName1 = "solution1.txt"
solName2 = "solution2.txt"

def makePath(directory, header, index, name):
    return directory + "/" + header + "_" + str(index) + "/" + name

for i in range(numInstances):
    dataPath = makePath(dataDir, dataSubDirHeader, i, dataName)
    dataPath = os.path.normpath(dataPath)
    solPath = makePath(dataDir, dataSubDirHeader, i, "")
    solPath = os.path.normpath(solPath)
    gmsCommand = "cd \"%s\" && gams \"%s\" --case=\"%s\" && mv -t \"%s\" \"%s\" \"%s\" \"%s\"" % (
        modelDir, modelName, dataPath, solPath, solName0, solName1, solName2)
    sp.call(gmsCommand, shell=True)
