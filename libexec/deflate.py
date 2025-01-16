"""Manage raw compressed DEFLATE (zlib) payloads."""

import fileinput
import sys
import zlib

def inflate_raw(compressed_payload: bytes) -> bytes:
    """Decompress a raw compressed DEFLATE (zlib) payload.

    :return:
        the inflated (decompressed) payload.
    """
    return zlib.decompress(compressed_payload, -15)

if __name__ == '__main__':
    with fileinput.input(mode='rb') as io_chunks:
        sys.stdout.buffer.write(inflate_raw(b''.join(list(io_chunks))))
