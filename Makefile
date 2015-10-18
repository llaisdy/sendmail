all: clean compile

clean:
	@rm -rf ebin/*.beam

compile:
	@test -d ebin || mkdir ebin
	erlc -o ebin sendmail.erl

