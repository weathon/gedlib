/***************************************************************************
 *                                                                          *
 *   Copyright (C) 2018 by David B. Blumenthal                              *
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
 * @file f2.hpp
 * @brief ged::F2 class declaration.
 */

#ifndef SRC_METHODS_F2_HPP_
#define SRC_METHODS_F2_HPP_

namespace ged {

/*!
 * @brief Mixed integer linear programming formulation of the graph edit distance.
 * @details Implements the MIP formulation suggested in:
 * - J. Lerouge, Z. Abu-Aisheh, R. Raveaux, P. H&eacute;roux, and S. Adam:
 *   &ldquo;New binary linear programming formulation to compute the graph edit distance&rdquo;,
 *   https://doi.org/10.1016/j.patcog.2017.07.029
 *
 * Does not support any options except for the ones supported by ged::MIPBasedMethod.
 */
template<class UserNodeLabel, class UserEdgeLabel>
class F2 : public MIPBasedMethod<UserNodeLabel, UserEdgeLabel> {

public:

	virtual ~F2();

	F2(const GEDData<UserNodeLabel, UserEdgeLabel> & ged_data);

private:

	std::map<std::pair<GEDGraph::NodeID, GEDGraph::NodeID>, GRBVar> x_;

	std::map<std::pair<GEDGraph::EdgeID, GEDGraph::EdgeID>, GRBVar> y_;

	double constant_;

	// Virtual member functions to be overridden by derived classes.

	virtual void mip_populate_model_(const GEDGraph & g, const GEDGraph & h, GRBModel & model) final;

	virtual double mip_objective_constant_(const GEDGraph & g, const GEDGraph & h) final;

	virtual void mip_model_to_node_map_(const GEDGraph & g, const GEDGraph & h, GRBModel & model, NodeMap & node_map) final;

	// Private helper function.

	char variable_type_() const;

};

}




#endif /* SRC_METHODS_F2_HPP_ */
