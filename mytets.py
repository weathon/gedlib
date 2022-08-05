import librariesImport
import gedlibpy

gedlibpy.load_GXL_graphs('../', '../data/all.xml')

listID = gedlibpy.get_all_graph_ids()
gedlibpy.set_edit_cost("CONSTANT")
gedlibpy.init()
gedlibpy.set_method("BRANCH_TIGHT", "")
gedlibpy.init_method()
print(gedlibpy.get_graph_name(listID[0]))

for i in range(100):
    g = listID[0]
    h = listID[i]

    gedlibpy.run_method(g,h)
    print(gedlibpy.get_graph_name(h))
    print ("Upper Bound = " + str(gedlibpy.get_upper_bound(g,h)) + ", Lower Bound = " + str(gedlibpy.get_lower_bound(g,h)) + ", Runtime = " + str(gedlibpy.get_runtime(g,h)))