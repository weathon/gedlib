import os, sys
os.chdir('/home/wg25r/pyCMT/GED/gedlib')
sys.path.insert(0, '/home/wg25r/pyCMT/GED/gedlib')
import librariesImport
import gedlibpy

print("Start Loading Data")
gedlibpy.load_GXL_graphs('../', '../data/all.xml')
print("Data loaded")
listID = gedlibpy.get_all_graph_ids()
gedlibpy.set_edit_cost("CONSTANT")
gedlibpy.init()
gedlibpy.set_method("BRANCH_TIGHT", "")
gedlibpy.init_method()
# print(gedlibpy.get_graph_name(listID[0]))


def name_ID_mapping(listID):
    ans = {}
    for i in listID:
        ans[gedlibpy.get_graph_name(i)] = i
    return ans

def getlistID():
    return listID

counts = 0
def getUBLB(g, h):
    global counts
    counts += 1
    if type(g) != int:
        g, h = g.id, h.id
    gedlibpy.run_method(g,h)
    # print(gedlibpy.get_graph_name(g), gedlibpy.get_graph_name(h))
    # print("Upper Bound = " + str(gedlibpy.get_upper_bound(g,h)) + ", Lower Bound = " + str(gedlibpy.get_lower_bound(g,h)) + ", Runtime = " + str(gedlibpy.get_runtime(g,h)))
    return gedlibpy.get_upper_bound(g,h), gedlibpy.get_lower_bound(g,h)

def getCounts():
    global counts
    return counts

def zeroCounts():
    global counts
    counts = 0

def getName(g):
    return gedlibpy.get_graph_name(g)