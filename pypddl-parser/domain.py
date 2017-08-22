# This file is part of pypddl-parser.

# pypddl-parser is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# pypddl-parser is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with pypddl-parser.  If not, see <http://www.gnu.org/licenses/>.

class Domain(object):

    def __init__(self, name, requirements, types, predicates, operators):
        self._name = name
        self._requirements = requirements
        self._types = types
        self._predicates = predicates
        self._operators = operators

    @property
    def name(self):
        return self._name

    @property
    def requirements(self):
        return self._requirements[:]

    @property
    def types(self):
        return self._types[:]

    @property
    def predicates(self):
        return self._predicates[:]

    @property
    def operators(self):
        return self._operators[:]

    def __str__(self):
        domain_str  = '@ Domain: {0}\n'.format(self._name)
        domain_str += '>> requirements: {0}\n'.format(', '.join(self._requirements))
        domain_str += '>> types: {0}\n'.format(', '.join(self._types))
        domain_str += '>> predicates: {0}\n'.format(', '.join(map(str, self._predicates)))
        domain_str += '>> operators:\n    {0}\n'.format(
            '\n    '.join(str(op).replace('\n', '\n    ') for op in self._operators))
        return domain_str
