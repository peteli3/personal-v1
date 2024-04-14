.PHONY: templ
templ:
	templ generate --watch --proxy="http://localhost:6969" --cmd="go run ."

.PHONY: tailwind
tailwind:
	npx tailwindcss -i ./assets/input.css -o ./assets/output.css --watch

.PHONY: clean
clean:
	rm -f \
		components/*_templ.go \
		assets/output.css
