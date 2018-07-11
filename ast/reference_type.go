package ast

import "strings"

type Reference_type struct {
	Qual string
	Unql string
	Size string
	Algn string
	Refd string
}

func (a Reference_type) GenNodeName() string {
	return "Reference_type "
}

func parse_reference_type(line string) (n Node) {
	groups := groupsFromRegex(
		`
	(qual:(?P<qual> .*))?
	(unql:(?P<unql> @[0-9]+))?
	size:(?P<size>.*) +
	algn:(?P<algn>.*) +
	refd:(?P<refd>.*) *
	`,
		line,
	)
	return Reference_type{
		Qual: strings.TrimSpace(groups["qual"]),
		Unql: strings.TrimSpace(groups["unql"]),
		Size: strings.TrimSpace(groups["size"]),
		Algn: strings.TrimSpace(groups["algn"]),
		Refd: strings.TrimSpace(groups["refd"]),
	}
}
