


compile:
	@mix escript.build 

run: compile
	@./kitchen --import http://school.alpha.openregister.org

food: compile
	@./kitchen --import http://food-premises.alpha.openregister.org/

test: compile
	@mix test
