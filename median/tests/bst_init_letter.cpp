/***************************************************************************
*                                                                          *
*   Copyright (C) 2019 by David B. Blumenthal                              *
*                                                                          *
*   This file is part of GEDLIB.                                           *
*                                                                          *
*   GEDLIB is free software: you can redistribute it and/or modify it      *
*   under the terms of the GNU Lesser General Public License as published  *
*   by the Free Software Foundation, either version 3 of the License, or   *
*   (at your option) any later version.                                    *
*                                                                          *
*   GEDLIB is distributed in the hope that it will be useful,              *
*   but WITHOUT ANY WARRANTY; without even the implied warranty of         *
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the           *
*   GNU Lesser General Public License for more details.                    *
*                                                                          *
*   You should have received a copy of the GNU Lesser General Public       *
*   License along with GEDLIB. If not, see <http://www.gnu.org/licenses/>. *
*                                                                          *
***************************************************************************/

/*!
 * @file bst_init_letter.cpp
 * @brief
 */

#define GXL_GEDLIB_SHARED

#include "../src/graph_bst.hpp"


int main(int argc, char* argv[]) {

	ged::GEDEnv<ged::GXLNodeID, ged::GXLLabel, ged::GXLLabel> env;
	env.set_edit_costs(ged::Options::EditCosts::LETTER);
	std::size_t max_cluster_size{10};
	if (argc > 1) {
		max_cluster_size = std::stoul(std::string(argv[1]));
	}
	std::string seed("0");
	if (argc > 2) {
		seed = std::string(argv[2]);
	}
	std::string collection_file("../collections/Letter_A.xml");
	std::string graph_dir("../../data/datasets/Letter/HIGH/");
	std::vector<ged::GEDGraph::GraphID> graph_ids(env.load_gxl_graphs(graph_dir, collection_file,
			ged::Options::GXLNodeEdgeType::LABELED, ged::Options::GXLNodeEdgeType::UNLABELED));

	std::vector<ged::GEDGraph::GraphID> focal_graph_ids;
	for (std::size_t counter{0}; counter < 2 * graph_ids.size(); counter++) {
		focal_graph_ids.emplace_back(env.add_graph("Letter_A_BST_median_" + std::to_string(counter) + ".gxl", "no_class"));
	}
	env.init(ged::Options::InitType::EAGER_WITHOUT_SHUFFLED_COPIES);
	ged::MedianGraphEstimator<ged::GXLNodeID, ged::GXLLabel, ged::GXLLabel> median_estimator(&env, false);
	median_estimator.set_options("--stdout 0 --refine FALSE --seed " + seed);
	ged::GraphClusteringHeuristic<ged::GXLNodeID, ged::GXLLabel, ged::GXLLabel> clustering_heuristic(&env, &median_estimator);
	clustering_heuristic.set_options("--stdout 0 --random-inits 1 --seed " + seed);
	ged::GraphBST<ged::GXLNodeID, ged::GXLLabel, ged::GXLLabel> graph_bst(&env, &clustering_heuristic);
	graph_bst.init(graph_ids, focal_graph_ids, max_cluster_size);
	graph_bst.save("../data/Letter/Letter_A_BST.ini", "../data/Letter");
}