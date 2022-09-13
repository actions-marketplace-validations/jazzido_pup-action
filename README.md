# Run PUP

This action opens a URL with `curl` and runs `pup` on it.

## Inputs

### `url`

**Required** The URL to open

### `selector`

**Required** The selector to use on the contents of the URL

## Outputs

## `result`

The result

## Example usage

uses: actions/run-pup-action@v1
with:
  url: 'https://jazzido.com'
  selector: 'b'
