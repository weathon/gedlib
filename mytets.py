import librariesImport
import gedlibpy

gedlibpy.load_GXL_graphs('../', '../data/all.xml')
# listID = gedlibpy.get_all_graph_ids()
# gedlibpy.set_edit_cost("CHEM_1")
# gedlibpy.init()
# gedlibpy.set_method("IPFP", "")
# gedlibpy.init_method()
# print(listID)
# g = listID[0]
# h = listID[1]

# gedlibpy.run_method(g,h)

# print("Node Map : ", gedlibpy.get_node_map(g,h))
# print ("Upper Bound = " + str(gedlibpy.get_upper_bound(g,h)) + ", Lower Bound = " + str(gedlibpy.get_lower_bound(g,h)) + ", Runtime = " + str(gedlibpy.get_runtime(g,h)))



# gedlibpy.load_GXL_graphs('include/gedlib-master/data/datasets/Letter/LOW/', 'collections/Letter_test.xml')
listID = gedlibpy.get_all_graph_ids()
gedlibpy.set_edit_cost("CONSTANT")
gedlibpy.init()
gedlibpy.set_method("STAR", "")
gedlibpy.init_method()
for i in range(10):
    g = listID[2]
    h = listID[i]

    gedlibpy.run_method(g,h)
    print ("Upper Bound = " + str(gedlibpy.get_upper_bound(g,h)) + ", Lower Bound = " + str(gedlibpy.get_lower_bound(g,h)) + ", Runtime = " + str(gedlibpy.get_runtime(g,h)))