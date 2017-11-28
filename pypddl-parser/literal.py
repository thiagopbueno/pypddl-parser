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


class Literal(object):

    def __init__(self, predicate, positive):
        self._predicate = predicate
        self._positive  = positive

    @property
    def predicate(self):
        return self._predicate

    def is_positive(self):
        return self._positive

    def is_negative(self):
        return not self._positive

    @classmethod
    def positive(cls, predicate):
        return Literal(predicate, True)

    @classmethod
    def negative(cls, predicate):
        return Literal(predicate, False)

    def __repr__(self):
        return str(self)

    def __str__(self):
        if self.is_positive():
            return str(self._predicate)
        if self.is_negative() and self._predicate.name == '=':
            lhs = str(self._predicate.args[0])
            rhs = str(self._predicate.args[1])
            return '{0} != {1}'.format(lhs, rhs)
        if self.is_negative():
            return 'not {}'.format(str(self._predicate))
