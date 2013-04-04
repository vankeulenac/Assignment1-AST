Feature: assign adoption to fosterparents
 
  In order to assign adoption to fosterparents
  As an employee of 'Jeugdzorg'
  I want to have an algortihm to do this for me
 
	Scenario: with just as many babies and fosterparents
		Given an adoption agency
		And 5 individual babies available by 'Jeugdzorg' #individual with regard to twins in scenario 4
		And 5 fosterparents enrolled on 'Jeugdzorg'
		When I populate the new_families #new: re-assignment in scenerio 5
		Then every couple of fosterparents should have exactly 1 baby
 
	Scenario: with more babies than fosterparents
		Given an adoption agency
		And 11 individual babies available by 'Jeugdzorg'
		And 10 fosterparents enrolled on 'Jeugdzorg'
		When I populate the new_families
		Then each fosterparent should have at least 1 baby
		And each fosterparent should have at most 2 babies
		And there should be 1 fosterparent with 2 babies
 
	Scenario: with less babies than fosterparents
		Given an adoption agency
		And 10 individual babies available by 'Jeugdzorg'
		And 20 fosterparents enrolled on 'Jeugdzorg'
		When I populate the new_families
		Then each baby should be assigned to at most 1 fosterparents
		And there should be 10 fosterparents with 0 babies
 
	Scenario: with just as many babies and fosterparents # in well being of child
		Given an adoption agency
		And 5 individual babies available by 'Jeugdzorg'
		And 2 twins available by 'Jeugdzorg' #total = 9 children
		And 9 fosterparents enrolled on 'Jeugdzorg'
		And each twin should be assigned together to a fosterparent
		When I popuplate the new_families
		Then each individual baby should be assigned to at most 1 fosterparents
		And each twins should be assigned to at most 1 fosterparents
		And there should be 2 fosterparents with 0 babies
 
	Scenario: with less babies than fosterparents
		Given an adoption agency
		And 4 individual babies available by 'Jeugdzorg'
		And 3 individual babies available by old_families #re-assignment
		And 8 fosterparents enrolled on 'Jeugdzorg'
		When I populate the new_families
		Then each individual baby should be assigned to at most 1 fosterparents
		And there should be 1 fosterparents with 0 babies
